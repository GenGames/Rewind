using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.ThirdPerson;
using UnityStandardAssets._2D;

public class TransitionController : MonoBehaviour
{
    #region Singelton
    public static TransitionController instance;

    private void Awake()
    {
        instance = this;
    }
    #endregion
    public KeyCode initiationKey = KeyCode.Q;
    public bool is3d;
    public Transform player;
    public Rigidbody rigidbody;
    public Animator anim;

    public Camera camera2d;
    public Camera camera3d;
    public ThirdPersonUserControl controller3d;
    public ThirdPersonCharacter movement3d;
    public FireProjectile fireProjectile;
    public _2DCharacterController controller2d;
    public GameObject gun;
    public GameObject wallCheck2d;
    public GameObject wallCheck3d;
    public GameObject healthBarUI;

    public Animator cameraAnim;
    public AnimationClip transitionAnimation;
    public float transitionDuration;

    private void Start()
    {
        transitionDuration = transitionAnimation.length;
        rigidbody = player.GetComponent<Rigidbody>();
        anim = player.GetComponent<Animator>();
        TransitionToggle();
    }

    private void Update()
    {
        if (Input.GetKeyDown(initiationKey))
        {
            StartCoroutine(PlayTransitionAnimation(transitionDuration));
        }
    }

    public void TransitionToggle()
    {
        if (is3d)
        {
            wallCheck2d.GetComponent<DisableWhenTouching>().OnExitCollider();
            rigidbody.constraints = RigidbodyConstraints.FreezeRotation;
            
        }
        else
        {
            wallCheck3d.GetComponent<DisableWhenTouching>().OnExitCollider();
            rigidbody.constraints = RigidbodyConstraints.FreezeRotation | RigidbodyConstraints.FreezePositionX;
        }

        ToggleWalls();

        camera2d.enabled = !is3d;
        controller2d.inUse = !is3d;

        movement3d.enabled = is3d;
        camera3d.enabled = is3d;
        fireProjectile.enabled = is3d;
        controller3d.inUse = is3d;
        gun.SetActive(is3d);
        healthBarUI.SetActive(is3d);
        GameplaySceneData.instance.ToggleAllEnemies(is3d);

    }

    public void ToggleWallsOn()
    {
        wallCheck2d.SetActive(true);
        wallCheck3d.SetActive(true);
    }

    public void ToggleWalls()
    {
        wallCheck2d.SetActive(!is3d);
        wallCheck3d.SetActive(is3d);
    }

    public void ResetCharacterDefaults()
    {
        player.rotation = new Quaternion(0, 0, 0, 0);
        anim.SetBool("Crouch", false);
        anim.SetBool("OnGround", true);
        anim.SetFloat("Jump", 0);
        anim.SetFloat("JumpLeg", 0);
        anim.SetFloat("Forward", 0);
        anim.SetFloat("Turn", 0);
        controller2d.isFacingRight = false;
    }

    public void SetAllCharacterAttributes(bool isActive)
    {
        controller2d.inUse = isActive;
        wallCheck2d.SetActive(isActive);
        wallCheck3d.SetActive(isActive);
        movement3d.enabled = isActive;
        camera3d.enabled = isActive;
        fireProjectile.enabled = isActive;
        controller3d.inUse = isActive;
        gun.SetActive(isActive);
        healthBarUI.SetActive(isActive);

        camera2d.enabled = true;
    }

    IEnumerator PlayTransitionAnimation(float animationDuration)
    {
        is3d = !is3d;

        SetAllCharacterAttributes(false);
        ToggleWallsOn();
        cameraAnim.SetTrigger("triggerTransition");

        if (AudioManager.instance != null && is3d)
        {
            AudioManager.instance.Play("Intro2D");
        }
        else if (AudioManager.instance != null && !is3d)
        {
            AudioManager.instance.Play("Out2D");
        }

        rigidbody.constraints = RigidbodyConstraints.FreezeAll;
        ResetCharacterDefaults();
        Time.timeScale = .2f;

        yield return new WaitForSeconds(animationDuration);


        Time.timeScale = 1f;
        TransitionToggle();

    }
}

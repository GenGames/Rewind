using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.ThirdPerson;
using UnityStandardAssets._2D;

public class TransitionController : MonoBehaviour
{
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
    public GameObject wallDestoryer;
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
        camera2d.enabled = is3d;
        controller2d.inUse = is3d;
        wallDestoryer.SetActive(is3d);


        movement3d.enabled = !is3d;
        camera3d.enabled = !is3d;
        fireProjectile.enabled = !is3d;
        controller3d.inUse = !is3d;
        gun.SetActive(!is3d);
        healthBarUI.SetActive(!is3d);
        if (is3d)
        {
            
            rigidbody.constraints = RigidbodyConstraints.FreezeRotation | RigidbodyConstraints.FreezePositionX;
        } 
        else
        {
            wallDestoryer.GetComponent<DisableWhenTouching>().OnExitCollider();
            rigidbody.constraints = RigidbodyConstraints.FreezeRotation;
        }

        is3d = !is3d;
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
        wallDestoryer.SetActive(isActive);
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
        SetAllCharacterAttributes(false);
        cameraAnim.SetTrigger("triggerTransition");
        rigidbody.constraints = RigidbodyConstraints.FreezeAll;
        ResetCharacterDefaults();
        Time.timeScale = .2f;

        yield return new WaitForSeconds(animationDuration);

        Time.timeScale = 1f;
        TransitionToggle();
        //camera2d.GetComponent<UnityStandardAssets.Utility.FollowTarget>().enabled = true;
    }
}

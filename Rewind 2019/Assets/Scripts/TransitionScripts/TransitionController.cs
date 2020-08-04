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

    private void Start()
    {
        rigidbody = player.GetComponent<Rigidbody>();
        anim = player.GetComponent<Animator>();
        TransitionToggle();
    }

    private void Update()
    {
        if (Input.GetKeyDown(initiationKey))
        {
            TransitionToggle();
        }
    }

    public void TransitionToggle()
    {
        if (is3d)
        {
            camera2d.enabled = true;
            controller2d.inUse = true;
            wallDestoryer.SetActive(true);
            

            movement3d.enabled = false;
            camera3d.enabled = false;
            fireProjectile.enabled = false;
            controller3d.inUse = false;
            rigidbody.constraints = RigidbodyConstraints.FreezeRotation | RigidbodyConstraints.FreezePositionX;
            gun.SetActive(false);
        } 
        else
        {
            camera2d.enabled = false;
            controller2d.inUse = false;
            wallDestoryer.GetComponent<DisableWhenTouching>().OnExitCollider();
            wallDestoryer.SetActive(false);


            movement3d.enabled = true;
            camera3d.enabled = true;
            fireProjectile.enabled = true;
            controller3d.inUse = true;
            rigidbody.constraints = RigidbodyConstraints.FreezeRotation;
            gun.SetActive(true);
        }

        is3d = !is3d;
        ResetCharacterDefaults();
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
}

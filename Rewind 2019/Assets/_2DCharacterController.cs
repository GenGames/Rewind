using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class _2DCharacterController : MonoBehaviour
{
    public float jumpHeight;
    public float speed;
    public Animator animator;
    private bool isGrounded;
    public Transform testCeiling;
    public Transform testGround;

    private void Update()
    {
        if (Input.GetAxis("Horizontal") != 0)
        {
            Move();
        }
        if (Input.GetAxis("Jump") != 0)
        {
            Jump();
        }
        if (Input.GetAxis("Vertical") < 0 )
        {
            Drop();
        }
    }

    public void Move()
    {
        print("moving");
        transform.Translate(-Input.GetAxis("Horizontal") * new Vector3(0, 0, 1) * speed);
    }

    public void Jump()
    {
        print("jumping!");
    }

    public void Drop()
    {
        print("dropping");
    }




    // Needs to.... Move, Jump, detect collisions
        // Move
        // - a/d forward/backward
        // - trigger animation when moving/falling
        // - s for dropping
        // - character flipping

        // Jump
        // - Space to jump
        // - hold on for jump control

        // Collision detection
        // - if jumping up, disable collider so that you can jump over it
        // - reenable collider when falling down so that you can rest on it
        // - disable collider below when pressing S so that you fall.

}

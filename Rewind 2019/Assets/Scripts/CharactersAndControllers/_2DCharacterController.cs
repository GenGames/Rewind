using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class _2DCharacterController : MonoBehaviour
{
    public Rigidbody m_Rigidbody;
    public float m_JumpPower;
    public float speed;
    public Animator animator;
    private bool isGrounded;
    public bool inUse;
    public bool isFacingRight;
    public bool isDropping;

    private void Start()
    {
        m_Rigidbody = GetComponent<Rigidbody>();
        animator = GetComponent<Animator>();
    }

    private void Update()
    {
        if (inUse)
        {
            if (Input.GetAxis("Horizontal") != 0)
            {
                Move();
            }
            if (Input.GetAxis("Jump") != 0)
            {
                Jump();
            }
            if (Input.GetAxis("Vertical") < 0)
            {
                isDropping = true;
            }
            else
            {
                isDropping = false;
            }
            UpdateAnimator();
        }
    }

    public void Move()
    {
        transform.Translate(-Input.GetAxis("Horizontal") * new Vector3(0, 0, 1) * speed * Time.deltaTime, Space.World);

        if (Input.GetAxis("Horizontal") > 0 && !isFacingRight)
        {
            Flip();
        }
        else if (Input.GetAxis("Horizontal") < 0 && isFacingRight)
        {
            Flip();
        }
    }

    public void Jump()
    {
        if (GetComponent<UnityStandardAssets.Characters.ThirdPerson.ThirdPersonCharacter>().GroundedCheck())
        {
            m_Rigidbody.velocity = new Vector3(m_Rigidbody.velocity.x, m_JumpPower, m_Rigidbody.velocity.z);
        }
    }

    public void Flip()
    {
        transform.Rotate(new Vector3(transform.localRotation.x, transform.localRotation.y + 180, transform.localRotation.z));
        isFacingRight = !isFacingRight;
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.gameObject.CompareTag("platform") && m_Rigidbody.velocity.y > 0 && !other.isTrigger)
        {
            other.isTrigger = true;
        } 
        else if(other.gameObject.CompareTag("platform") && m_Rigidbody.velocity.y < 0 && !isDropping && other.isTrigger)
        {
            other.isTrigger = false;
        } 
        else if (other.gameObject.CompareTag("platform") && m_Rigidbody.velocity.y <= 0 && isDropping && !other.isTrigger)
        {
            other.isTrigger = true;
        }
    }

    public void UpdateAnimator()
    {
        animator.SetFloat("Forward", Mathf.Abs(Input.GetAxis("Horizontal")*1.5f),.1f,Time.deltaTime);
        animator.SetBool("OnGround", GetComponent<UnityStandardAssets.Characters.ThirdPerson.ThirdPersonCharacter>().GroundedCheck());
        animator.SetFloat("Jump", m_Rigidbody.velocity.y);
        animator.SetFloat("JumpLeg", Mathf.Clamp(m_Rigidbody.velocity.y/4,-1,1));
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

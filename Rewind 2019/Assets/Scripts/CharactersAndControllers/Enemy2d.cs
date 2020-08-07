using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Enemy2d : MonoBehaviour
{
    public bool isUse;
    private Transform player;
    private NavMeshAgent agent;
    public Transform[] groundCheck;
    public GameObject hpBar;
    public Vector3 originPosition;
    public float speed = 1;
    private UnityStandardAssets.Characters.ThirdPerson.AICharacterControl AIController;
    private EnemyAttack enemyAttack;
    private int moveMultiplier;
    private Rigidbody rigid;
    private bool isDead = false;
    public bool isActivated = true;

    private void Start()
    {
        rigid = GetComponent<Rigidbody>();
        player = GameplaySceneData.instance.player;
        agent = GetComponent<NavMeshAgent>();
        AIController = GetComponent<UnityStandardAssets.Characters.ThirdPerson.AICharacterControl>();
        enemyAttack = GetComponent<EnemyAttack>();
        moveMultiplier = 1;
        isDead = false;
    }

    public void Initiate2d()
    {
        if (isActivated)
        {
            isUse = true;
            originPosition = transform.position;
            transform.position = new Vector3(player.position.x, transform.position.y, transform.position.z);
            transform.rotation = new Quaternion(0, Mathf.CeilToInt(transform.rotation.y / 360) * 180, 0, 0);
            hpBar.SetActive(false);
            AIController.isUse = false;
            enemyAttack.isUse = false;
            GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezeRotation;
        }
    }

    public void Resume3d()
    {
        if (originPosition == Vector3.zero)
        {
            originPosition = transform.position;
        }
        agent = GetComponent<NavMeshAgent>();
        AIController = GetComponent<UnityStandardAssets.Characters.ThirdPerson.AICharacterControl>();
        enemyAttack = GetComponent<EnemyAttack>();

        isUse = false;
        transform.position = originPosition;
        hpBar.SetActive(true);
        AIController.isUse = true;
        enemyAttack.isUse = true;
        GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeRotation ;
    }

    private void Update()
    {
        if (isUse)
        {
            bool isGoodToMove = true;

            foreach (Transform transform in groundCheck)
            {
                RaycastHit hit;

                if (!Physics.Raycast(transform.position, Vector3.down, out hit, 5f))
                {
                    isGoodToMove = false;
                    break;
                }
            }

            if (isGoodToMove)
            {
                transform.Translate(Vector3.forward * Time.deltaTime * speed, Space.Self);
            }
            else
            {
                Flip();
            }

        }
    }

    public void Flip()
    {
        transform.Rotate(new Vector3(transform.localRotation.x, transform.localRotation.y + 180, transform.localRotation.z));
        moveMultiplier *= -1;
    }

    public void OnCollisionEnter(Collision collision)
    {
        if (isUse && !isDead)
        {
            if (collision.gameObject.CompareTag("Player"))
            {
                collision.gameObject.GetComponent<CharacterDeath>().KilledBy2dEnemy(1.25f);
            }
            else if(!collision.gameObject.CompareTag("floor"))
            {
                Flip();
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        //print("hit trigger");
        if (isUse && other.gameObject.CompareTag("Player") && other.GetComponent<Rigidbody>().velocity.y < 0)
        {
            Rigidbody player = other.GetComponent<Rigidbody>();
            player.velocity = new Vector3(player.velocity.x, 15, player.velocity.z);
            Death();
            isDead = true;
        }
    }

    public void Death()
    {
        if (AudioManager.instance != null)
        {
            AudioManager.instance.Play("2DMonsterDeath");
        }
        Destroy(gameObject);
    }
}

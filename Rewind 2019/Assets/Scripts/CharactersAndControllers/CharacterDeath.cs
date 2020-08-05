using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterDeath : MonoBehaviour
{
    #region Singleton

    public static CharacterDeath instance;
    private void Awake()
    {
        instance = this;
    }

    #endregion

    private PlayData playData;
    public Collider playerCollider;
    public UnityStandardAssets.Utility.FollowTarget cameras;
    public Text deathText;
    public GameObject deathScreen;
    public Transform player;
    private bool isDead;

    private void Start()
    {
        playData = PlayData.instance;
        SpawnPlayer();
        isDead = false;
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            GameManager.instance.RestartScene();
        }

        if (transform.position.y <= -30)
        {
            DeathByFall();
        }
    }

    public void DeathByFall()
    {
        Death("you fell to your death...");   
    }

    public void Death(string deathMessage)
    {
        if (!isDead)
        {
            deathScreen.SetActive(true);
            deathText.text = deathMessage;
            cameras.enabled = false;
            isDead = true;
        }
    }

    public void KilledBy2dEnemy(float timeDelay)
    {
        GetComponent<Rigidbody>().velocity = new Vector3(0, 15, 0);
        playerCollider.enabled = false;
        StartCoroutine(InitiateDeath(timeDelay, "You were Killed by the forces of corruption"));
    }

    public void SpawnPlayer()
    {
        if (playData.lastCheckpointIndex != -1)
        {
            transform.position = GameplaySceneData.instance.shrines[playData.lastCheckpointIndex].spawnLocation.position;
        }
    }

    IEnumerator InitiateDeath(float timeDelay, string deathMessage)
    {
        yield return new WaitForSeconds(timeDelay);
        Death(deathMessage);
    }
}

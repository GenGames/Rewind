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
    public int characterDeathHeight;

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

        if (transform.position.y <= characterDeathHeight)
        {
            DeathByFall();
        }
    }

    public void DeathByFall()
    {

        if (!isDead)
        {
            if (TransitionController.instance.is3d)
            {
                string[] deathSFX = GetComponent<Health>().deathSFX;

                if (AudioManager.instance != null && deathSFX.Length > 0)
                {
                    int sfxToPlay = Random.Range(0, deathSFX.Length - 1);
                    if (AudioManager.instance != null)
                    {
                        AudioManager.instance.Play(deathSFX[sfxToPlay]);
                    }
                }
            }
            else
            {
                if (AudioManager.instance != null)
                {
                    AudioManager.instance.Play("2DPlayerDeath");
                }
            }
            Death("you fell to your death...");
        }
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
        if (AudioManager.instance != null)
        {
            AudioManager.instance.Play("2DPlayerDeath");
        }

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

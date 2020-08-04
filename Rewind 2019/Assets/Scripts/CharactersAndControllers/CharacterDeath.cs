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
    public Camera[] cameras;
    public Text deathText;
    public GameObject deathScreen;
    public Transform player;

    private void Start()
    {
        playData = PlayData.instance;
        SpawnPlayer();
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
        deathScreen.SetActive(true);
        deathText.text = deathMessage;
        for (int i = 0; i < cameras.Length; i++)
        {
            cameras[i].GetComponent<UnityStandardAssets.Utility.FollowTarget>().enabled = false;
        }
    }

    public void SpawnPlayer()
    {
        if (playData.lastCheckpointIndex != -1)
        {
            transform.position = GameplaySceneData.instance.shrines[playData.lastCheckpointIndex].spawnLocation.position;
        }
    }
}

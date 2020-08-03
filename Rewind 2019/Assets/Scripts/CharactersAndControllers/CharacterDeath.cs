using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterDeath : MonoBehaviour
{
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
        deathScreen.SetActive(true);
        deathText.text = "You fell to your death...";
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

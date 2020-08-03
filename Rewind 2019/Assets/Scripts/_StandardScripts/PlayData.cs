using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayData : MonoBehaviour
{
    #region Singleton
    public static PlayData instance;

    private void Awake()
    {
        if (instance == null)
        {
            DontDestroyOnLoad(gameObject);
            instance = this;
        }
        else if (instance != this)
        {
            Destroy(gameObject);
        }
    }
    #endregion

    public int lastCheckpointIndex = -1;
    
    private void Start()
    {
        SpawnPlayer();
    }

    public void SpawnPlayer()
    {
        for (int i = 0; i < GameplaySceneData.instance.shrines.Length; i++)
        {
            if (i == lastCheckpointIndex)
            {
                GameplaySceneData.instance.shrines[i].SpawnPlayerAtShrine();
            }
        }
    }

}

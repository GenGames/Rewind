using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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

    
}

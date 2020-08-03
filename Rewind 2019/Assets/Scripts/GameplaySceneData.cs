using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameplaySceneData : MonoBehaviour
{
    #region Singleton

    public static GameplaySceneData instance;

    private void Awake()
    {
        instance = this;
    }

    #endregion

    public Shrine[] shrines;
    public Transform player;

}

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

    public int levelNumber;

    public Enemy2d[] allEnemies2dController;

    private void Start()
    {
        
    }

    public void ToggleAllEnemies(bool is3d)
    {
        if (is3d)
        {
            foreach (Enemy2d enemy in allEnemies2dController)
            {
                if (enemy != null && enemy.isActiveAndEnabled)
                {
                    enemy.Resume3d();
                }
            }
        }
        else
        {
            foreach (Enemy2d enemy in allEnemies2dController)
            {
                if ( enemy != null && enemy.isActiveAndEnabled)
                {
                    enemy.Initiate2d();
                }
            }
        }
    }
}

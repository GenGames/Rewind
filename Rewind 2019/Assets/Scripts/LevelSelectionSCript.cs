using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelSelectionSCript : MonoBehaviour
{
    #region Singleton

    public static LevelSelectionSCript instance;

    private void Awake()
    {
        instance = this;
    }

    #endregion

    public GameObject[] levelButton;


    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < PlayData.instance.currentLevel + 1; i++)
        {
            levelButton[i].SetActive(true);
        }
    }

    public void GoToLevel(int level)
    {
        GameManager.instance.GoToSceneName("Gameplay_" + level);
    }

}

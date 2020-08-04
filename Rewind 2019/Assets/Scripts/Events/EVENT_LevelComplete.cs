﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EVENT_LevelComplete : EventTrigger
{
    PlayData playdata;
    GameplaySceneData sceneData;

    public float delayTime;
    public GameObject YouWonUI;

    private void Start()
    {
        sceneData = GameplaySceneData.instance;
        playdata = PlayData.instance;
    }

    public override void EventTriggered()
    {
        if (sceneData.levelNumber == playdata.currentLevel)
        {
            playdata.currentLevel++;
            StartCoroutine(DetermineNextLevel(true));
        }
        else
        {
            StartCoroutine(DetermineNextLevel(false));
        }
    }

    IEnumerator DetermineNextLevel(bool straightToLevel)
    {
        playdata.lastCheckpointIndex = -1;
        Time.timeScale = .1f;
        YouWonUI.SetActive(true);

        yield return new WaitForSecondsRealtime(delayTime);

        Time.timeScale = 1f;
        YouWonUI.SetActive(false);

        if (straightToLevel && playdata.currentLevel <= GameData.totalLevels)
        {
            GameManager.instance.GoToSceneName("Gameplay_" + playdata.currentLevel);
        }
        else
        {
            GameManager.instance.GoToSceneName("LevelSelection");
        }
    }
}
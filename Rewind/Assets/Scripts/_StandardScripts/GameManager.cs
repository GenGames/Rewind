using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{

    #region Singleton
    public static GameManager instance;

    private void Awake()
    {
        instance = this;
    }

    #endregion

    public GameObject errorMessage;
    public Text errorMessageText;
    private PlayData playData;
    public GameObject loadingScreen;
    public GameObject pausedMenu;
    public bool isGamePaused;

    private void Start()
    {
        if (SceneManager.GetActiveScene().name != "ArenaScene" && AudioManager.instance != null)
        {
            AudioManager.instance.Play("MenuMusic");
            AudioManager.instance.Stop("ArenaMusic");

        }
        else if (AudioManager.instance != null)
        {
            AudioManager.instance.Stop("MenuMusic");
            AudioManager.instance.Play("ArenaMusic");
        }

        playData = PlayData.instance;
        if (pausedMenu != null)
        {
            pausedMenu.SetActive(false);
            isGamePaused = false;
        }
        Time.timeScale = 1;
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            TogglePause();
        }
    }

    public void TogglePause()
    {
        if (pausedMenu != null)
        {
            if (!isGamePaused)
            {
                isGamePaused = true;
                pausedMenu.SetActive(true);
                Time.timeScale = 0;
                if (AudioManager.instance != null)
                {
                    AudioManager.instance.Play("PauseScreenSFX");
                }
            }
            else
            {
                isGamePaused = false;
                pausedMenu.SetActive(false);
                Time.timeScale = 1;
                if (AudioManager.instance != null)
                {
                    AudioManager.instance.Play("UnpauseSFX");
                    AudioManager.instance.Stop("PauseScreenSFX");
                }
            }
        }
    }

    public void GoToScene(Scene newScene)
    {
        GoToSceneName(newScene.ToString());
    }

    public void GoToSceneName(string SceneName)
    {
        if (loadingScreen != null)
        {
            loadingScreen.SetActive(true);
        }
        if (AudioManager.instance != null)
        {
            AudioManager.instance.Play("LoadingScreen");

            if (!AudioManager.instance.IsPlaying("MenuMusic"))
            {
                AudioManager.instance.Play("MenuMusic");
            }
        }

        SceneManager.LoadSceneAsync(SceneName);
    }

    public void SendErrorMessage(string newErrorMessage)
    {
        if (errorMessage != null)
        {
            errorMessageText.text = newErrorMessage;
            errorMessage.GetComponent<Animator>().SetTrigger("ErrorOccurred");
            if (AudioManager.instance != null)
            {
                AudioManager.instance.Play("HologramDeactivation");
            }
        }
        else
        {
            Debug.LogError(newErrorMessage);
        }

    }
}

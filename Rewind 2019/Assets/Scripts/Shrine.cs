using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shrine : MonoBehaviour
{
    private PlayData playData;
    public GameObject interactionText;

    public bool isActive;
    public Material activeMaterial;
    public Material inactiveMaterial;

    public Transform spawnLocation;
    public int ShrineIndex;

    public GameObject[] enemiesBehindShrine;
    public Renderer shineActive;

    private void Start()
    {
        playData = PlayData.instance;
        interactionText.SetActive(false);
        if (isActive)
        {
            GetComponent<Renderer>().material = activeMaterial;
        }
        else
        {
            GetComponent<Renderer>().material = inactiveMaterial;
        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (Input.GetKeyDown(KeyCode.E) && other.gameObject.CompareTag("interactable"))
        {
            ActivateShrine();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("interactable"))
        {
            interactionText.SetActive(true);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("interactable"))
        {
            interactionText.SetActive(false);
        }
    }

    public void ActivateShrine()
    {
        if (playData.lastCheckpointIndex != -1)
        {
            GameplaySceneData.instance.shrines[playData.lastCheckpointIndex].DeactivateShrine();
        }
        isActive = true;
        playData.lastCheckpointIndex = ShrineIndex;
        GetComponent<Renderer>().material = activeMaterial;
        
    }

    public void DeactivateShrine()
    {
        isActive = false;
        GetComponent<Renderer>().material = inactiveMaterial;
    }
    
    public void SpawnPlayerAtShrine()
    {
        Transform player = UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl.instance.transform;
        player.position = spawnLocation.position;
        foreach (GameObject gameObject in enemiesBehindShrine)
        {
            Destroy(gameObject);
        }
        GetComponent<Renderer>().material = activeMaterial;
    }
}

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
        if (Input.GetKeyDown(KeyCode.E) && other.gameObject.CompareTag("Player"))
        {
            print("saving");
            ActivateShrine();
        }
        else
        {
            print("in range of " + other.gameObject.name);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            interactionText.SetActive(true);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
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
    }
}

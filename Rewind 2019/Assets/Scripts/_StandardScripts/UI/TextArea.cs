using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Collider))]
public class TextArea : MonoBehaviour
{
    public Text effectedText;
    public string tagTrigger;
    public GameObject objectTrigger;

    [Range(0.1f, 10000000f)]
    public float distanceRangeSquared = 1;

    public bool fadeInOnDistance = true;
    public bool readyToPlay;
    private bool hasBeenInitialized;
    public int deathCountToPlay = 0;

    private void Start()
    {
        InitializeText();
    }

    public void InitializeText()
    {
        if (!hasBeenInitialized)
        {
            effectedText.gameObject.SetActive(false);
            if (deathCountToPlay <= PlayData.instance.numberOfDeathsThisLevel)
            {
                readyToPlay = true;
            }
            else
            {
                readyToPlay = false;
            }
            hasBeenInitialized = true;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        InitializeText();
        if (readyToPlay && other.gameObject.CompareTag(tagTrigger) || readyToPlay && other.gameObject == objectTrigger)
        {
            effectedText.gameObject.SetActive(true);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (readyToPlay && other.gameObject.CompareTag(tagTrigger) || readyToPlay && other.gameObject == objectTrigger)
        {
            
            effectedText.color = new Color(effectedText.color.r, effectedText.color.g, effectedText.color.b, 1f / (((other.transform.position - transform.position).sqrMagnitude) / distanceRangeSquared));
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (readyToPlay && other.gameObject.CompareTag(tagTrigger) || readyToPlay && other.gameObject == objectTrigger)
        {
            effectedText.gameObject.SetActive(false);
        }
    }
}

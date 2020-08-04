using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DisableWhenTouching : MonoBehaviour
{
    public List<Collider> colliders = new List<Collider>();

    private void OnTriggerEnter(Collider other)
    {
        if (!other.gameObject.CompareTag("Player") 
            && !other.gameObject.CompareTag("targetable")
            && !other.gameObject.CompareTag("interactable") 
            && !other.gameObject.CompareTag("platform") 
            && other != GetComponent<Collider>())
        {
            colliders.Add(other);
            other.isTrigger = true;
            if (other.GetComponent<Renderer>() != null)
            {
                other.GetComponent<Renderer>().enabled = false;
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.gameObject.CompareTag("Player") 
            && !other.gameObject.CompareTag("targetable")
            && !other.gameObject.CompareTag("interactable") 
            && !other.gameObject.CompareTag("platform") 
            && other != GetComponent<Collider>())
        {
            colliders.Remove(other);
            other.isTrigger = false;
            if (other.GetComponent<Renderer>() != null)
            {
                other.GetComponent<Renderer>().enabled = true;
            }
        }
    }

    public void OnExitCollider()
    {
        foreach (Collider collider in colliders)
        {
            if (collider != GetComponent<Collider>())
            {
                collider.isTrigger = false;
                if (collider.GetComponent<Renderer>() != null)
                {
                    collider.GetComponent<Renderer>().enabled = true;
                }
            }
        }
        colliders.Clear();
    }
}

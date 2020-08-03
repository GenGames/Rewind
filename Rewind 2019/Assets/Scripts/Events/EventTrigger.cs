using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class EventTrigger : MonoBehaviour
{
    private BoxCollider eventRegion;

    // Start is called before the first frame update
    void Start()
    {
        eventRegion.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            EventTriggered();
        }
    }

    public virtual void EventTriggered()
    {
        print("event Triggered");
    }
}

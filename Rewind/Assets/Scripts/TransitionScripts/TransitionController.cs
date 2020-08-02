using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TransitionController : MonoBehaviour
{
    public KeyCode initiationKey = KeyCode.Q;


    private void Update()
    {
        if (Input.GetKeyDown(initiationKey))
        {
            TransitionToggle();
        }
    }

    public void TransitionToggle()
    {
        print("toggling transition");
    }
}

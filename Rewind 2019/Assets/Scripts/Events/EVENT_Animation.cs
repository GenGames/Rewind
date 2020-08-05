using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EVENT_Animation : EventTrigger
{
    public Animator[] animations;
    public string animatorTriggerString;
    public override void EventTriggered()
    {
        print("event triggered");
        foreach (Animator animator in animations)
        {
            print("setting animator trigger of " +animator.gameObject.name +" to " + animatorTriggerString);
            animator.SetTrigger(animatorTriggerString);
        }
    }
}

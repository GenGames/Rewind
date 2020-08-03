using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.ThirdPerson;
using UnityStandardAssets._2D;

public class TransitionController : MonoBehaviour
{
    public KeyCode initiationKey = KeyCode.Q;
    public Camera camera2d;
    public Camera camera3d;
    public ThirdPersonUserControl controller3d;
    public ThirdPersonCharacter movement3d;
    public FireProjectile fireProjectile;
    public Platformer2DUserControl controller2d;
    public PlatformerCharacter2D movement2d;

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

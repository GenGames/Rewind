using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.ThirdPerson;

public class EVENT_EnemiesAttack : EventTrigger
{
    public EnemyAttack[] enemies;
    private Transform player;

    private void Start()
    {
        player = GameplaySceneData.instance.player;
    }

    public override void EventTriggered()
    {
        foreach (EnemyAttack enemy in enemies)
        {
            enemy.SetTarget(player);
        }
    }
}

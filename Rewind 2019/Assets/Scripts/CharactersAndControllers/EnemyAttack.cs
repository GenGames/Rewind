using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.ThirdPerson;

[RequireComponent(typeof(AICharacterControl))]
public class EnemyAttack : MonoBehaviour
{
    private AICharacterControl characterController;
    private Transform myTarget;

    public bool canAttack = true;
    public float timebetweenAttacks = 1f;

    public float range = 1;
    public int damage = 1;

    private void Start()
    {
        canAttack = true;
        characterController = GetComponent<AICharacterControl>();
    }

    public void SetTarget(Transform target)
    {
        myTarget = target;
        characterController.SetTarget(target);
    }

    private void Update()
    {
        if (myTarget != null)
        {
            if ((transform.position - myTarget.position).sqrMagnitude <= range * range && canAttack)
            {
                characterController.SetTarget(null);
                canAttack = false;
                AttackPlayer();
                StartCoroutine(ResetAttack());
            }
            else if ((transform.position - myTarget.position).sqrMagnitude >= range * range)
            {
                characterController.SetTarget(myTarget);
            }
        }
    }

    public void AttackPlayer()
    {
        myTarget.GetComponent<Health>().TakeDamage(damage);
    }

    IEnumerator ResetAttack()
    {
        yield return new WaitForSeconds(timebetweenAttacks);
        canAttack = true;
    }
}

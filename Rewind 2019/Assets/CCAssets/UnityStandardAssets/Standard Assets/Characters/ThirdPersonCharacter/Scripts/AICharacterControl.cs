using System;
using UnityEngine;

namespace UnityStandardAssets.Characters.ThirdPerson
{
    [RequireComponent(typeof (UnityEngine.AI.NavMeshAgent))]
    [RequireComponent(typeof (ThirdPersonCharacter))]
    public class AICharacterControl : MonoBehaviour
    {
        public UnityEngine.AI.NavMeshAgent agent { get; private set; }             // the navmesh agent required for the path finding
        public ThirdPersonCharacter character { get; private set; } // the character we are controlling
        public Transform target;                                    // target to aim for
        public bool isUse = true;
        public bool hasBeenActivated = false;

        private void Start()
        {
            // get the components on the object we need ( should not be null due to require component so no need to check )
            agent = GetComponentInChildren<UnityEngine.AI.NavMeshAgent>();
            character = GetComponent<ThirdPersonCharacter>();

	        agent.updateRotation = false;
	        agent.updatePosition = true;
            GetComponent<Health>().canTakeDamage = hasBeenActivated;
        }


        private void Update()
        {
            if (isUse)
            {
                float disanceFromTargetSquared = 0;

                if (target != null)
                {
                    disanceFromTargetSquared = (target.position - transform.position).sqrMagnitude;
                }

                if (agent != null && disanceFromTargetSquared > agent.stoppingDistance * agent.stoppingDistance)
                {
                    agent.SetDestination(target.position);
                }

                if (agent != null && agent.remainingDistance > agent.stoppingDistance && target != null)
                {
                    character.Move((target.position - transform.position).normalized * Time.deltaTime * agent.speed, false, false);

                }
                else 
                {
                    
                    character.Move(Vector3.zero, false, false);
                }
            }
        }


        public void SetTarget(Transform target)
        {
            GetComponent<Health>().canTakeDamage = hasBeenActivated;
            hasBeenActivated = true;
            GetComponent<Enemy2d>().isActivated = true;
            this.target = target;
            //if (target == null)
            //{
            //    agent.isStopped = true;
            //}
        }
    }
}

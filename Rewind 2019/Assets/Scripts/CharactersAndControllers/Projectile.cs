using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public int damage;
    public float lifetimeRemaining;
    public float projectileSpeed;
    public string doNotTargetTag;


    public void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("targetable") && collision.gameObject.GetComponent<Health>() != null)
        {
            collision.gameObject.GetComponent<Health>().TakeDamage(damage);
            Destroy(gameObject);
        }
    }

    private void Update()
    {
        transform.Translate(Vector3.forward * projectileSpeed*Time.deltaTime,Space.Self);
        lifetimeRemaining -= Time.deltaTime;
        if (lifetimeRemaining <= 0)
        {
            Destroy(gameObject);
        }
    }

    //private void OnTriggerEnter(Collider collision)
    //{
    //    if (collision.gameObject.CompareTag("targetable") && collision.gameObject.GetComponent<Health>() != null)
    //    {
    //        Destroy(gameObject);
    //        collision.gameObject.GetComponent<Health>().TakeDamage(damage);
    //    }
    //}
}

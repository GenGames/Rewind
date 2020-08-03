using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public int damage;
    public float lifetimeRemaining;
    public float projectileSpeed;

    public void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<Health>() != null)
        {
            collision.gameObject.GetComponent<Health>().TakeDamage(damage);
        }
        Destroy(gameObject);
    }

    private void Update()
    {
        transform.Translate(transform.forward * projectileSpeed*Time.deltaTime);
        lifetimeRemaining -= Time.deltaTime;
        if (lifetimeRemaining <= 0)
        {
            Destroy(gameObject);
        }
    }
}

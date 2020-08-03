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
        print("I hit: " + collision.gameObject.name);
        if (collision.gameObject.GetComponent<Health>() != null)
        {
            collision.gameObject.GetComponent<Health>().TakeDamage(damage);
        }
        Destroy(gameObject);
    }

    private void Update()
    {
        transform.Translate(transform.forward * projectileSpeed);
        lifetimeRemaining -= Time.deltaTime;
        if (lifetimeRemaining <= 0)
        {
            Destroy(gameObject);
        }
    }
}

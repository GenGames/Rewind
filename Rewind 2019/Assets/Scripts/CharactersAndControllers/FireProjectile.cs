﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireProjectile : MonoBehaviour
{
    public GameObject projectilePrefab;
    public Transform firepoint;
    public FaceTarget weapon;
    public float fireCooldown = .3f;
    public bool canFire;
    public string[] fireSound;

    private void Start()
    {
        canFire = true;
    }

    private void Update()
    {
        if (Input.GetMouseButtonDown(0) && canFire)
        {
            Shoot();
        }
    }

    public void Shoot()
    {
        if (AudioManager.instance != null && fireSound.Length > 0)
        {
            int sfxToPlay = Random.Range(0, fireSound.Length - 1);
            if (AudioManager.instance != null)
            {
                AudioManager.instance.Play(fireSound[sfxToPlay]);
            }
        }

        Instantiate(projectilePrefab, firepoint.position,firepoint.rotation);

        canFire = false;
        StartCoroutine(FireCoolDown());
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.gameObject.CompareTag("targetable") && weapon.target == null)
        {
            weapon.AssignTarget(other.transform);
        }
    }

    IEnumerator FireCoolDown()
    {
        yield return new WaitForSeconds(fireCooldown);
        canFire = true;
    }
}
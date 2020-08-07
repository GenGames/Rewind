﻿using UnityEngine;

public class Health : MonoBehaviour
{
    public int maxValue;
    public int currentValue;

    public bool onDeathDestroy;
    public float destructionDelay;

    public bool onDeathAnimate;
    public string onDeathInvokeFuntion;

    public bool player;

    public bool useHealthBar;
    private HealthBar healthBar;

    public bool canTakeDamage = true;

    private void Start()
    {
        if (useHealthBar && healthBar == null)
        {
            healthBar = GetComponentInChildren<HealthBar>();
            healthBar.InitializeHPBar(maxValue);
        }
    }

    public void TakeDamage(int damage)
    {
        if (canTakeDamage)
        {
            currentValue -= damage;

            if (useHealthBar)
            {
                healthBar.UpdateHealthBar(currentValue);
            }

            if (currentValue <= 0)
            {
                Death();
            }
        }
    }

    public void Death()
    {
        if (onDeathDestroy)
        {
            Destroy(gameObject, destructionDelay);
        }
        if (onDeathAnimate)
        {
            GetComponent<Animator>().SetTrigger("death");
        }
        if (onDeathInvokeFuntion != "")
        {
            Invoke(onDeathInvokeFuntion,0);
        }
        if (player)
        {
            CharacterDeath.instance.Death("You were Killed by the forces of corruption");
            CharacterDeath.instance.GetComponent<HealthBar>().HideHealthBar();
            Time.timeScale = 0;
        }
    }
}

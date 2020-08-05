using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DisableWhenTouching : MonoBehaviour
{
    //public List<Collider> colliders = new List<Collider>();
    public List<Wall> walls = new List<Wall>();

    public Material inactiveMaterial;

    private void OnTriggerEnter(Collider other)
    {
        if (!other.gameObject.CompareTag("Player") 
            && !other.gameObject.CompareTag("targetable")
            && !other.gameObject.CompareTag("interactable") 
            && !other.gameObject.CompareTag("platform") 
            && other != GetComponent<Collider>()
            && other != GetComponent<Renderer>())
        {

            walls.Add(new Wall(other));

            if (other.GetComponent<Renderer>() != null)
            {
                other.GetComponent<Renderer>().material = inactiveMaterial;
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.gameObject.CompareTag("Player") 
            && !other.gameObject.CompareTag("targetable")
            && !other.gameObject.CompareTag("interactable") 
            && !other.gameObject.CompareTag("platform") 
            && other != GetComponent<Collider>()
            && other != GetComponent<Renderer>())
        {
            Wall anotherWall = new Wall();
            foreach (Wall wall in walls)
            {
                if (wall.collider == other)
                {
                    wall.ResetWall();
                    anotherWall = wall;
                    break;
                }
            }
            if (anotherWall.collider != null)
            {
                walls.Remove(anotherWall);
            }
        }
    }

    public void OnExitCollider()
    {
        foreach (Wall wall in walls)
        {
            wall.ResetWall();
        }
        walls.Clear();
    }
}

[System.Serializable]
public struct Wall{
    public string name;
    public Collider collider;
    public Material originMaterial;

    public Wall(Collider incomingCollider)
    {
        collider = incomingCollider;
        name = incomingCollider.gameObject.name;
        if (collider.GetComponent<Renderer>() != null)
        {
            originMaterial = collider.GetComponent<Renderer>().material;
        }
        else
        {
            originMaterial = null;
        }
    }

    public Wall GetWall(Collider myCollider)
    {
        if (myCollider == collider)
        {
            return this;
        } 
        else
        return new Wall();
    }

    public void ResetWall()
    {
        if (collider.GetComponent<Renderer>() != null)
        {
            collider.GetComponent<Renderer>().material = originMaterial;
        }
    }
}

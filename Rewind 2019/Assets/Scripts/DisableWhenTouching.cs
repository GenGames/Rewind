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
            && !other.gameObject.CompareTag("floor") 
            && other != GetComponent<Collider>()
            && other != GetComponent<Renderer>())
        {

            walls.Add(new Wall(other));

            ReplaceAllMaterials(other.gameObject, inactiveMaterial);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.gameObject.CompareTag("Player") 
            && !other.gameObject.CompareTag("targetable")
            && !other.gameObject.CompareTag("interactable") 
            && !other.gameObject.CompareTag("platform")
            && !other.gameObject.CompareTag("floor")
            && other != GetComponent<Collider>()
            && other != GetComponent<Renderer>())
        {
            Wall anotherWall = new Wall();
            foreach (Wall wall in walls)
            {
                if ( other != null && wall.collider == other)
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
            if (wall.collider != null)
            {
                wall.ResetWall();
            }
        }
        walls.Clear();
    }

    public void ReplaceAllMaterials(GameObject targetObject, Material newMaterial)
    {
        Renderer[] renderers = targetObject.GetComponentsInChildren<Renderer>();

        foreach (Renderer renderer in renderers)
        {
            Material[] newMats = new Material[renderer.materials.Length];
            for (int i = 0; i < newMats.Length; i++)
            {
                newMats[i] = newMaterial;
            }

            renderer.materials = newMats;
        }
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
        ReplaceAllMaterials(collider.gameObject, originMaterial);


        //Debug.Log("ResetingWallFor: " + collider.gameObject.name);
        if (collider.GetComponent<Renderer>() != null)
        {
            collider.GetComponent<Renderer>().material = originMaterial;
        }
    }

    public void ReplaceAllMaterials(GameObject targetObject, Material newMaterial)
    {
        Renderer[] renderers = targetObject.GetComponentsInChildren<Renderer>();

        foreach (Renderer renderer in renderers)
        {
            Material[] newMats = new Material[renderer.materials.Length];
            for (int i = 0; i < newMats.Length; i++)
            {
                newMats[i] = newMaterial;
            }

            renderer.materials = newMats;
        }
    }

}

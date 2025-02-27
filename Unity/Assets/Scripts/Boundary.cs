using UnityEngine;

public class Boundary : MonoBehaviour
{
    //Variable

    void OnTriggerEnter(Collider other)
    {
    }

    void OnTriggerExit(Collider other)
    {
        Destroy(other.gameObject);
    }
}

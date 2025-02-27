using UnityEngine;

public class Boundary : MonoBehaviour
{
    //Variable
    private float DESTROY_TIME = 1f;

    void OnTriggerEnter(Collider other)
    {
        Destroy(other.gameObject, DESTROY_TIME);
    }
}

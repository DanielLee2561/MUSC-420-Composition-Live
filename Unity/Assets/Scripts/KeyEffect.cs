using UnityEngine;

public class KeyEffect : MonoBehaviour
{
    // Variable
    private float SPEED = 0.05f;

    // Implementation
    private bool detatch = false;

    public void triggerDetatch()
    {
        detatch = true;
    }

    public void initialize(string name, Vector3 scale, Vector3 position, Material material)
    {
        // Name
        gameObject.name = name + " Effect";

        // Position
        position.z += scale.y / 2;
        transform.position = position;

        // Scale
        scale.y = 0;
        transform.localScale = scale;

        // Material
        gameObject.GetComponent<Renderer>().material = material;
    }

    void Update()
    {
        if (!detatch)
        {
            Vector3 scale = gameObject.transform.localScale;
            scale.y += SPEED;
            gameObject.transform.localScale = scale;
        }

        Vector3 position = gameObject.transform.position;
        position.z += (!detatch) ? SPEED / 2 : SPEED;
        gameObject.transform.position = position;
    }
}

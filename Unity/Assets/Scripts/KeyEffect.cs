using UnityEngine;

public class KeyEffect : MonoBehaviour
{
    // Private
    private bool detatch = false;

    // Constant
    private static float SPEED = 0.05f;
    private static float WIDTH = 1.3f;

    public void triggerDetatch()
    {
        detatch = true;
    }

    public void initialize(string name, Vector3 scale, Vector3 position, Material material)
    {
        // Name
        gameObject.name = name + " Effect";

        // Position
        transform.position = new Vector3(position.x, position.y, position.z + scale.y / 2);

        // Scale
        transform.localScale = new Vector3(WIDTH, 0, scale.z);

        // Material
        gameObject.GetComponent<Renderer>().material = material;
    }

    void Update()
    {
        if (!detatch) transform.localScale += new Vector3(0, 0, SPEED);
        transform.position += new Vector3(0, 0, !detatch ? SPEED / 2 : SPEED);
    }
}

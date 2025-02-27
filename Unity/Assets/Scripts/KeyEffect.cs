using UnityEngine;

public class KeyEffect : MonoBehaviour
{
    // Variable
    private float SPEED = 0.02f;
    private static int BOUNDARY_START;
    private static int BOUNDARY_END;

    // Implementation
    private bool detatch = false;

    public void triggerDetatch()
    {
        detatch = true;
    }

    public void initialize(string name, Vector3 scale, Vector3 position, Material material)
    {
        // Name
        this.gameObject.name = name + " Effect";

        // Position
        position.z += scale.y / 2;
        this.transform.position = position;

        // Scale
        scale.y = 0;
        this.transform.localScale = scale;

        // Material
        this.gameObject.GetComponent<Renderer>().material = material;
    }

    void Update()
    {
        GameObject effect = this.gameObject;

        if (!detatch)
        {
            Vector3 scale = effect.transform.localScale;
            scale.y += SPEED;
            effect.transform.localScale = scale;
        }

        Vector3 position = effect.transform.position;
        position.z += (!detatch) ? SPEED / 2 : SPEED;
        effect.transform.position = position;
    }

    // Destroy(keyEffects[pitch]);
}

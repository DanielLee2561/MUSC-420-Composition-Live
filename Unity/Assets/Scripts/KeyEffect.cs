using UnityEngine;

public class KeyEffect : MonoBehaviour
{
    // Variable
    private float SPEED = 0.05f;
    private static int BOUNDARY_START;
    private static int BOUNDARY_END;

    public void initialize(Vector3 scale, Vector3 position, Material material)
    {
        // Position
        position.z += scale.y / 2;
        this.transform.position = position;

        // Scale
        scale.y = 0;
        this.transform.localScale = scale;

        // Material
        this.gameObject.GetComponent<Renderer>().material = material;
    }

    void Start()
    {
        //
    }

    void Update()
    {
        GameObject effect = this.gameObject;

        Vector3 scale = effect.transform.localScale;
        scale.y += SPEED;
        effect.transform.localScale = scale;

        Vector3 position = effect.transform.position;
        position.z += SPEED / 2;
        effect.transform.position = position;
    }

    // Destroy(keyEffects[pitch]);
}

using UnityEngine;

public class KeyEffect : MonoBehaviour
{
    // Variable
    private float effectSpeed = 0.05f;

    void Start()
    {
        //
    }

    void Update()
    {
        GameObject effect = this.gameObject;

        Vector3 scale = effect.transform.localScale;
        scale.y += effectSpeed;
        effect.transform.localScale = scale;

        Vector3 position = effect.transform.position;
        position.z += effectSpeed / 2;
        effect.transform.position = position;
    }

    // Destroy(keyEffects[pitch]);
}

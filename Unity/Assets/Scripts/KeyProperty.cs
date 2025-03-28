using UnityEngine;

public class KeyProperty : MonoBehaviour
{
    // Private
    private Color originalColor;
    private Color blendColor;
    private Color emissionColor;
    private int state;

    // Constant
    private static float depth = 0.5f;
    private static float blend = 0.5f;

    void Start()
    {
        originalColor = gameObject.GetComponent<Renderer>().material.color;
        blendColor = Color.black;
        emissionColor = Color.black;
        state = 0;
        gameObject.GetComponent<Renderer>().material.EnableKeyword("_EMISSION");
    }

    public void noteOn(Color keyColor, Color emissionColor)
    {
        // State
        state++;

        // Depth
        if (state == 1)
            transform.position -= new Vector3(0, depth, 0);

        // Key Color
        blendColor = blendColor + keyColor;
        gameObject.GetComponent<Renderer>().material.color = Color.Lerp(originalColor, blendColor, blend);

        // Emission Color
        this.emissionColor += emissionColor;
        gameObject.GetComponent<Renderer>().material.SetColor("_EmissionColor", this.emissionColor);
    }

    public void noteOff(Color keyColor, Color emissionColor)
    {
        // State
        state--;

        // Depth
        if (state == 0)
            transform.position += new Vector3(0, depth, 0);

        // Key Color
        blendColor = blendColor - keyColor;
        if (state != 0)
            gameObject.GetComponent<Renderer>().material.color = Color.Lerp(originalColor, blendColor, blend);
        else
            gameObject.GetComponent<Renderer>().material.color = originalColor;

        // Emission Color
        this.emissionColor -= emissionColor;
        gameObject.GetComponent<Renderer>().material.SetColor("_EmissionColor", this.emissionColor);
    }
}

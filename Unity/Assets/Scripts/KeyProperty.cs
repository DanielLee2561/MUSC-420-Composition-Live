using UnityEngine;

public class KeyProperty : MonoBehaviour
{
    // Private
    private Color originalColor;
    private Color blendColor;
    private int state;

    // Constant
    private static float depth = 0.5f;
    private static float blend = 0.5f;

    void Start()
    {
        originalColor = gameObject.GetComponent<Renderer>().material.color;
        blendColor = Color.black;
        state = 0;
    }

    public void noteOn(Color color)
    {
        // State
        state++;

        // Depth
        if (state == 1)
            transform.position -= new Vector3(0, depth, 0);

        // Color
        blendColor = blendColor + color;
        gameObject.GetComponent<Renderer>().material.color = Color.Lerp(originalColor, blendColor, blend);
    }

    public void noteOff(Color color)
    {
        // State
        state--;

        // Depth
        if (state == 0)
            transform.position += new Vector3(0, depth, 0);

        // Color
        blendColor = blendColor - color;
        if (state != 0)
            gameObject.GetComponent<Renderer>().material.color = Color.Lerp(originalColor, blendColor, blend);
        else
            gameObject.GetComponent<Renderer>().material.color = originalColor;
    }
}

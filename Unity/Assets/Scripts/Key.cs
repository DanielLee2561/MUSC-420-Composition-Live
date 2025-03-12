using UnityEngine;

public class Key : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;

    // Private
    private bool state;

    // Public
    public Material materialOn;
    public Material materialOff;

    // Constant
    private float depth = 0.5f;

    void Start()
    {
        if (osc) osc.SetAddressHandler(oscNote, setNote);
    }

    private void noteOn()
    {
        if (!state)
        {
            // State
            state = true;

            // Material
            Renderer renderer = GetComponent<Renderer>();
            renderer.material = materialOff;

            // Position
            Vector3 position = transform.position;
            position.y -= depth;
            transform.position = position;
        }
    }

    private void noteOff()
    {
        if (state)
        {
            // State
            state = false;

            // Material
            Renderer renderer = GetComponent<Renderer>();
            renderer.material = materialOn;

            // Position
            Vector3 position = transform.position;
            position.y += depth;
            transform.position = position;
        }
    }

    private void setNote(OscMessage input)
    {
        int velocity = input.GetInt(1);
        if (velocity != 0)
        {
            noteOn();
        }
        else
        {
            noteOff();
        }
    }
}

using UnityEngine;

public class Key : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;

    // Private
    private bool state;
    private GameObject effect;

    // Public
    public Material materialOn;
    public Material materialOff;
    public Material materialEffect;

    // Constant
    private static float depth = 0.5f;

    void Start()
    {
        if (osc) osc.SetAddressHandler(oscNote, setNote);
    }

    private void createEffect()
    {
        if (effect == null)
        {
            effect = GameObject.CreatePrimitive(PrimitiveType.Cube);
            effect.AddComponent<KeyEffect>().initialize(gameObject.name, transform.localScale, transform.position, materialEffect);
        }
    }

    private void removeEffect()
    {
        if (effect != null)
        {
            effect.GetComponent<KeyEffect>().triggerDetatch();
            effect = null;
        }
    }

    private void noteOn()
    {
        if (!state)
        {
            // State
            state = true;

            // Material
            GetComponent<Renderer>().material = materialOff;

            // Position
            transform.position -= new Vector3(0, depth, 0);

            // Effect
            createEffect();
        }
    }

    private void noteOff()
    {
        if (state)
        {
            // State
            state = false;

            // Material
            GetComponent<Renderer>().material = materialOn;

            // Position
            transform.position += new Vector3(0, depth, 0);

            // Effect
            removeEffect();
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

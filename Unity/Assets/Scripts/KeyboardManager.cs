using System.Collections.Generic;
using UnityEngine;

public class KeyboardManager : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;
    public string oscState;

    // Private
    private Keyboard[] keyboards;

    // Public
    public Color keyColor1;
    public Color keyColor2;
    public Color keyColor3;
    public Color keyColor4;
    public Material matEffect1;
    public Material matEffect2;
    public Material matEffect3;
    public Material matEffect4;
    public GameObject vfxLight1;
    public GameObject vfxLight2;
    public GameObject vfxLight3;
    public GameObject vfxLight4;
    public GameObject vfxParticle1;
    public GameObject vfxParticle2;
    public GameObject vfxParticle3;
    public GameObject vfxParticle4;

    // Method
    void Start()
    {
        // OSC
        if (osc)
        {
            osc.SetAddressHandler(oscNote, setNote);
            osc.SetAddressHandler(oscState, setState);
        }

        // Add Keyboards
        gameObject.AddComponent<Keyboard>().initialize(keyColor1, matEffect1, vfxLight1, vfxParticle1);
        gameObject.AddComponent<Keyboard>().initialize(keyColor2, matEffect2, vfxLight2, vfxParticle2);
        gameObject.AddComponent<Keyboard>().initialize(keyColor3, matEffect3, vfxLight3, vfxParticle3);
        gameObject.AddComponent<Keyboard>().initialize(keyColor4, matEffect4, vfxLight4, vfxParticle4);
        keyboards = gameObject.GetComponents<Keyboard>();

        // Add Keycolor
        foreach (Transform octave in transform)
            foreach (Transform key in octave.transform)
                key.gameObject.AddComponent<KeyProperty>();
    }

    private void setNote(OscMessage input)
    {
        int keyboard = input.GetInt(0);
        int pitch = input.GetInt(1);
        int velocity = input.GetInt(2);
        if (keyboard < keyboards.Length) keyboards[keyboard].setNote(pitch, velocity);
    }

    private void setState(OscMessage input)
    {
        int keyboard = input.GetInt(0);
        int state = input.GetInt(1);
        if (keyboard < keyboards.Length) keyboards[keyboard].setState(state);
    }
}

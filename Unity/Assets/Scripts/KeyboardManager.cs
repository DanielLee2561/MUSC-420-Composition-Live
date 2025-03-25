using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class KeyboardManager : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;
    public string oscState;

    // Private
    private Keyboard[] keyboards;

    // Public
    public Material matOffWhite;
    public Material matOffBlack;
    public Material matOn;
    public Material matEffect;
    public GameObject vfxLight;
    public GameObject vfxParticle;
    public Color color1;
    public Color color2;
    public Color color3;
    public Color color4;

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
        addKeyboard(color1);
        addKeyboard(color2);
        addKeyboard(color3);
        addKeyboard(color4);
        keyboards = gameObject.GetComponents<Keyboard>();
    }

    private void addKeyboard(Color color)
    {
        Material matEffectCopy = new Material(matEffect);
        matEffectCopy.SetColor("_EmissionColor", color * 5);
        //GameObject vfxLightCopy = Instantiate(vfxLight);
        //vfxLightCopy.GetComponent<VisualEffect>().SetVector4("Color", color * 4);
        gameObject.AddComponent<Keyboard>().initialize(matOffWhite, matOffBlack, matOn, matEffectCopy, vfxLight, vfxParticle);
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

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
    public int keyboardsSize;
    public Material matOffWhite;
    public Material matOffBlack;
    public Material matOn;
    public Material matEffect;
    public GameObject vfxLight;
    public GameObject vfxParticle;

    // Method
    void Start()
    {
        // OSC
        if (osc)
        {
            osc.SetAddressHandler(oscNote, setNote);
            osc.SetAddressHandler(oscState, setState);
        }

        // Assign Keyboards
        for (int i = 0; i < keyboardsSize; i++)
        {
            Keyboard script = gameObject.AddComponent<Keyboard>();
            script.initialize(matOffWhite, matOffBlack, matOn, matEffect, vfxLight, vfxParticle);
        }
        keyboards = gameObject.GetComponents<Keyboard>();
    }

    private void setNote(OscMessage input)
    {
        int pitch = input.GetInt(0);
        int velocity = input.GetInt(1);
        keyboards[0].setNote(pitch, velocity);
        // specify Keyboard
    }

    private void setState(OscMessage state)
    {
        //if (state.GetInt(0) == 0)
        //    foreach (GameObject obj in keys.Values)
        //        obj.GetComponent<Key>().noteOff();
    }
}

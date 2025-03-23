using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class Power : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscState;

    void Start()
    {
        // OSC
        if (osc)
        {
            osc.SetAddressHandler(oscState, setState);
        }
    }

    private void setState(OscMessage input)
    {
        int keyboard = input.GetInt(0);
        int state = input.GetInt(1);
        if (keyboard == 0)
        {
            GetComponent<Light>().enabled = state == 1;
        }
    }
}

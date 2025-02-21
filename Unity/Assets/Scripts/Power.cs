using System.Collections.Generic;
using UnityEngine;

public class Power : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscState;

    // Variable
    public GameObject powerGlobal;

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
        int state = input.GetInt(0);
        Light light = powerGlobal.GetComponent<Light>();
        if (state == 0)
        {
            light.enabled = false;
        }
        else
        {
            light.enabled = true;
        }
    }
}

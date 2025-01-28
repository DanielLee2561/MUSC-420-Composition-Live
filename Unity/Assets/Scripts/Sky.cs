using System.Collections;
using UnityEngine;

public class Sky : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscSky;

    void Start()
    {
        // OSC
        if (osc) osc.SetAddressHandler(oscSky, setSky);
    }

    void Update()
    {
        //
    }

    private void setSky(OscMessage skyIndex) {
        Debug.Log("DEBUG");
    }
}

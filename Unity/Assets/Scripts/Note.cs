using System.Collections;
using UnityEngine;

public class Note : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;

    void Start()
    {
        // OSC
        if (osc) osc.SetAddressHandler(oscNote, setNote);
    }

    void Update()
    {
        //
    }

    private void setNote(OscMessage input) {
        int pitch = input.GetInt(0);
        int velocity = input.GetInt(1);
        Debug.Log($"Pitch {pitch}, Velocity {velocity}");
    }
}

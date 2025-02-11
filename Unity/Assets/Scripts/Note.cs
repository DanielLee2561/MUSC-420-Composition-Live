using System.Collections.Generic;
using UnityEngine;

public class Note : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;

    // Variable
    private Dictionary<string, Transform> octaves = new Dictionary<string, Transform>();

    void Start()
    {
        // OSC
        if (osc) osc.SetAddressHandler(oscNote, setNote);

        // Variable
        assignOctaves();
    }

    private void assignOctaves()
    {
        GameObject[] octaves_obj = GameObject.FindGameObjectsWithTag("Octave");
        foreach (GameObject octave in octaves_obj)
        {
            octaves[octave.name] = octave;
        }
    }

    private void setNote(OscMessage input)
    {
        int pitch = input.GetInt(0);
        int velocity = input.GetInt(1);
        Debug.Log($"Pitch {pitch}, Velocity {velocity}");
    }
}

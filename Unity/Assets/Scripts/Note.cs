using System.Collections.Generic;
using UnityEngine;

public class Note : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;

    // Variable
    private Dictionary<int, Transform> keys = new Dictionary<int, Transform>();

    void Start()
    {
        // OSC
        if (osc) osc.SetAddressHandler(oscNote, setNote);

        // Variable
        assignKeys();
    }

    // Given an octave and key, return the pitch.
    private int keyToPitch(string octave, string key)
    {
        Dictionary<string, int> dict = new Dictionary<string, int>
        {
            { "C", 0},
            { "C#", 1},
            { "D", 2},
            { "D#", 3},
            { "E", 4},
            { "F", 5},
            { "F#", 6},
            { "G", 7},
            { "G#", 8},
            { "A", 9},
            { "A#", 10},
            { "B", 11}
        };

        int pitch_octave = int.Parse(octave.Split('_')[1]);
        int pitch_key = dict[key.Split('_')[1]];
        return (pitch_octave + 1) * 12 + pitch_key;
    }

    private void assignKeys()
    {
        GameObject[] octaves = GameObject.FindGameObjectsWithTag("Octave");
        foreach (GameObject octave in octaves)
            foreach (Transform key in octave.transform)
                keys[keyToPitch(octave.name, key.name)] = key;
    }

    private void setNote(OscMessage input)
    {
        int pitch = input.GetInt(0);
        int velocity = input.GetInt(1);
        Debug.Log($"Pitch {pitch}, Velocity {velocity}");
    }
}

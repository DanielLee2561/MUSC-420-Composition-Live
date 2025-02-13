using System.Collections.Generic;
using UnityEngine;

public class Note : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;

    // Variable
    private Dictionary<int, Transform> keys = new Dictionary<int, Transform>();
    Dictionary<string, int> keyPitchDict = new Dictionary<string, int>
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
    Dictionary<int, string> pitchKeyDict = new Dictionary<int, string>
    {
        { 0,  "C"},
        { 1,  "C#"},
        { 2,  "D"},
        { 3,  "D#"},
        { 4,  "E"},
        { 5,  "F"},
        { 6,  "F#"},
        { 7,  "G"},
        { 8,  "G#"},
        { 9,  "A"},
        { 10,  "A#"},
        { 11,  "B"}
    };
    public Material keyWhite;
    public Material keyBlack;
    public Material keyPress;

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
        int pitch_octave = int.Parse(octave.Split('_')[1]);
        int pitch_key = keyPitchDict[key.Split('_')[1]];
        return (pitch_octave + 1) * 12 + pitch_key;
    }

    // Given a pitch, return the key.
    private string pitchToKey(int pitch)
    {
        return pitchKeyDict[pitch % 12];
    }

    // Given a key, return true if white, false otherwise.
    private bool isKeyWhite(string key)
    {
        return key[^1] != '#';
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
        if (velocity != 0)
        {
            keys[pitch].GetComponent<Renderer>().material = keyPress;
        }
        else
        {
            keys[pitch].GetComponent<Renderer>().material = (isKeyWhite(pitchToKey(pitch))) ? keyWhite : keyBlack;
        }
    }
}

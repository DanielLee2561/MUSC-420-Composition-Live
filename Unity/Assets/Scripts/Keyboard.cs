using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;

public class Note : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;
    public string oscState;

    // Private
    private Dictionary<int, GameObject> keys = new Dictionary<int, GameObject>();

    // Public
    public Material matOffWhite;
    public Material matOffBlack;
    public Material matOn;
    public Material matEffect;
    public GameObject vfxLight;
    public GameObject vfxParticle;

    // Constant
    private Dictionary<string, int> keyPitchDict = new Dictionary<string, int>
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

    void Start()
    {
        // OSC
        if (osc)
        {
            osc.SetAddressHandler(oscNote, setNote);
            osc.SetAddressHandler(oscState, setState);
        }

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

    // Given a key, return true if white, false otherwise.
    private bool isKeyWhite(string key)
    {
        return key[^1] != '#';
    }

    // Initialize keys
    private void assignKeys()
    {
        foreach (Transform octave in transform)
            foreach (Transform key in octave.transform)
            {
                int pitch = keyToPitch(octave.name, key.name);
                keys[pitch] = key.gameObject;
                Key script = keys[pitch].AddComponent<Key>();
                Material matOff = isKeyWhite(key.name) ? matOffWhite : matOffBlack;
                script.initialize(matOff, matOn, matEffect, vfxLight, vfxParticle);
            }
    }

    private void setNote(OscMessage input)
    {
        int pitch = input.GetInt(0);
        int velocity = input.GetInt(1);
        if (keys.TryGetValue(pitch, out GameObject obj))
        {
            Key script = obj.GetComponent<Key>();
            if (velocity != 0) script.noteOn();
            else script.noteOff();
        }
    }

    private void setState(OscMessage state)
    {
        if (state.GetInt(0) == 0)
            foreach (GameObject obj in keys.Values)
                obj.GetComponent<Key>().noteOff();
    }
}

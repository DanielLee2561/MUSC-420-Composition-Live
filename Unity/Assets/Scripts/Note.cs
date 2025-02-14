using System.Collections.Generic;
using UnityEngine;

public class Note : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;
    public string oscState;

    // Variable
    private Dictionary<int, Transform> keys = new Dictionary<int, Transform>();
    private Dictionary<int, GameObject> keyEffects = new Dictionary<int, GameObject>();
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
    private Dictionary<int, string> pitchKeyDict = new Dictionary<int, string>
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
    private float effectSpeed = 0.01f;

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

    void systemEffect()
    {
        foreach (GameObject effect in keyEffects.Values)
        {
            Vector3 scale = effect.transform.localScale;
            scale.y += effectSpeed;
            effect.transform.localScale = scale;

            Vector3 position = effect.transform.position;
            position.z += effectSpeed / 2;
            effect.transform.position = position;
        }
    }

    void Update()
    {
        systemEffect();
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

    // Initialize keys
    private void assignKeys()
    {
        GameObject[] octaves = GameObject.FindGameObjectsWithTag("Octave");
        foreach (GameObject octave in octaves)
            foreach (Transform key in octave.transform)
                keys[keyToPitch(octave.name, key.name)] = key;
    }

    // Trigger note-on
    private void noteOn(int pitch)
    {
        // Key Press
        keys[pitch].GetComponent<Renderer>().material = keyPress;

        // Create Effect
        GameObject effect = Instantiate(keys[pitch].gameObject, keys[pitch].position, keys[pitch].rotation);
        effect.transform.localScale = keys[pitch].localScale;
        keyEffects[pitch] = effect;
    }

    // Trigger note-off
    private void noteOff(int pitch)
    {
        // Key Press
        keys[pitch].GetComponent<Renderer>().material = (isKeyWhite(pitchToKey(pitch))) ? keyWhite : keyBlack;

        // Delete Effect
        Destroy(keyEffects[pitch]);
        keyEffects.Remove(pitch);
    }

    private void setNote(OscMessage input)
    {
        int pitch = input.GetInt(0);
        int velocity = input.GetInt(1);
        if (velocity != 0)
        {
            noteOn(pitch);
        }
        else
        {
            noteOff(pitch);
        }
    }

    private void setState(OscMessage input)
    {
        int state = input.GetInt(0);
        if (state == 0)
        {
            foreach (int pitch in keys.Keys)
            {
                noteOff(pitch);
            }
        }
    }
}

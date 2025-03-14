using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.VFX;

public class Note : MonoBehaviour
{
    // OSC
    public OSC osc;
    public string oscNote;
    public string oscState;

    // Dictionary
    private Dictionary<int, Transform> keys = new Dictionary<int, Transform>();
    private Dictionary<int, GameObject> keyEffects = new Dictionary<int, GameObject>();
    private Dictionary<int, bool> keyStates = new Dictionary<int, bool>();
    private Dictionary<int, GameObject> keyParticleObjects = new Dictionary<int, GameObject>();
    private Dictionary<int, GameObject> keyLightObjects = new Dictionary<int, GameObject>();

    // Variable
    public Volume globalVolume;
    public Material keyWhite;
    public Material keyBlack;
    public Material keyPress;
    public Material keyEffect;
    public GameObject particleObject;
    public GameObject lightObject;
    private float keyDepth = 0.5f;

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
            {
                keys[keyToPitch(octave.name, key.name)] = key;
                keyStates[keyToPitch(octave.name, key.name)] = false;
            }
    }

    // Create VFX
    private void createVFX(Dictionary<int, GameObject> dict, int pitch, GameObject vfx)
    {
        // Initialize
        GameObject obj = Instantiate(vfx);
        dict[pitch] = obj;

        // Position
        Vector3 scale = keys[pitch].localScale;
        Vector3 position = keys[pitch].position;
        position.z += scale.y / 2;
        obj.transform.position = position;
    }

    // Remove VFX
    private void removeVFX(Dictionary<int, GameObject> dict, int pitch)
    {
        if (dict.ContainsKey(pitch))
        {
            GameObject obj = dict[pitch];

            VisualEffect vfx = obj.GetComponent<VisualEffect>();
            vfx.Stop();
            Destroy(obj, vfx.GetFloat("Life_Max"));

            dict.Remove(pitch);
        }
    }

    // Trigger note-on
    private void noteOn(int pitch)
    {
        if (!keyStates[pitch])
        {
            // Material
            keys[pitch].GetComponent<Renderer>().material = keyPress;

            // State
            keyStates[pitch] = true;

            // Position
            Vector3 position = keys[pitch].transform.position;
            position.y -= keyDepth;
            keys[pitch].transform.position = position;

            // Create VFX
            createVFX(keyParticleObjects, pitch, particleObject);
            createVFX(keyLightObjects, pitch, lightObject);
        }
    }

    // Trigger note-off
    private void noteOff(int pitch)
    {
        if (keyStates[pitch])
        {
            // Material
            keys[pitch].GetComponent<Renderer>().material = (isKeyWhite(pitchToKey(pitch))) ? keyWhite : keyBlack;

            // State
            keyStates[pitch] = false;

            // Position
            Vector3 position = keys[pitch].transform.position;
            position.y += keyDepth;
            keys[pitch].transform.position = position;

            // Delete VFX
            removeVFX(keyParticleObjects, pitch);
            removeVFX(keyLightObjects, pitch);
        }
    }

    private void setNote(OscMessage input)
    {
        //int pitch = input.GetInt(0);
        //int velocity = input.GetInt(1);
        //if (velocity != 0)
        //{
        //    noteOn(pitch);
        //}
        //else
        //{
        //    noteOff(pitch);
        //}
    }

    private void setState(OscMessage input)
    {
        //int state = input.GetInt(0);
        //if (state == 0)
        //{
        //    globalVolume.enabled = false;
        //    foreach (int pitch in keys.Keys)
        //    {
        //        noteOff(pitch);
        //    }
        //}
        //else
        //{
        //    globalVolume.enabled = true;
        //}
    }
}

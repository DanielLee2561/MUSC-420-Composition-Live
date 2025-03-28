using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;

public class Keyboard : MonoBehaviour
{
    // Private
    private Dictionary<int, Key> keys = new Dictionary<int, Key>();

    // Public
    public Color keyColor;
    public Color emissionColor;
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

    public void initialize(Color keyColor, Color emissionColor, Material matEffect, GameObject vfxLight, GameObject vfxParticle)
    {
        this.keyColor = keyColor;
        this.emissionColor = emissionColor;
        this.matEffect = matEffect;
        this.vfxLight = vfxLight;
        this.vfxParticle = vfxParticle;
    }

    void Start()
    {
        // Initialize Keys
        foreach (Transform octave in transform)
            foreach (Transform key in octave.transform)
            {
                int pitch = keyToPitch(octave.name, key.name);
                keys[pitch] = key.gameObject.AddComponent<Key>();
                keys[pitch].initialize(keyColor, emissionColor, matEffect, vfxLight, vfxParticle);
            }
    }

    // Given an octave and key, return the pitch.
    private int keyToPitch(string octave, string key)
    {
        int pitch_octave = int.Parse(octave.Split('_')[1]);
        int pitch_key = keyPitchDict[key.Split('_')[1]];
        return (pitch_octave + 1) * 12 + pitch_key;
    }

    public void setNote(int pitch, int velocity)
    {
        if (keys.TryGetValue(pitch, out Key script))
        {
            if (velocity != 0) script.noteOn();
            else script.noteOff();
        }
    }

    public void setState(int state)
    {
        if (state == 0)
            foreach (Key script in keys.Values)
                script.noteOff();
    }
}

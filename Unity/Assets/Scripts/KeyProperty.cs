using UnityEngine;
using UnityEngine.VFX;

public class KeyProperty : MonoBehaviour
{
    // Public
    public GameObject vfxLight;
    public GameObject vfxParticle;

    // Private
    private Color originalColor;
    private Color blendColor;
    private Color emissionColor;
    private int state;
    private GameObject light;
    private GameObject particle;

    // Constant
    private static float depth = 0.5f;
    private static float blend = 0.5f;

    void Start()
    {
        originalColor = gameObject.GetComponent<Renderer>().material.color;
        blendColor = Color.black;
        emissionColor = Color.black;
        state = 0;
        gameObject.GetComponent<Renderer>().material.EnableKeyword("_EMISSION");
    }

    public void initialize(GameObject vfxLight, GameObject vfxParticle)
    {
        this.vfxLight = vfxLight;
        this.vfxParticle = vfxParticle;
    }

    public void noteOn(Color keyColor, Color emissionColor)
    {
        // State
        state++;

        // Depth
        if (state == 1)
            transform.position -= new Vector3(0, depth, 0);

        // Key Color
        blendColor = blendColor + keyColor;
        gameObject.GetComponent<Renderer>().material.color = Color.Lerp(originalColor, blendColor, blend);

        // Emission Color
        this.emissionColor += emissionColor;
        gameObject.GetComponent<Renderer>().material.SetColor("_EmissionColor", this.emissionColor);

        // VFX
        removeVFX(ref light);
        removeVFX(ref particle);
        createVFX(ref light, vfxLight);
        createVFX(ref particle, vfxParticle);
        light.GetComponent<VisualEffect>().SetVector4("Color", emissionColor);
        particle.GetComponent<VisualEffect>().SetVector4("Color", emissionColor);
    }

    public void noteOff(Color keyColor, Color emissionColor)
    {
        // State
        state--;

        // Depth
        if (state == 0)
            transform.position += new Vector3(0, depth, 0);

        // Key Color
        blendColor = blendColor - keyColor;
        if (state != 0)
            gameObject.GetComponent<Renderer>().material.color = Color.Lerp(originalColor, blendColor, blend);
        else
            gameObject.GetComponent<Renderer>().material.color = originalColor;

        // Emission Color
        this.emissionColor -= emissionColor;
        gameObject.GetComponent<Renderer>().material.SetColor("_EmissionColor", this.emissionColor);

        // VFX
        removeVFX(ref light);
        removeVFX(ref particle);
        if (state != 0)
        {
            createVFX(ref light, vfxLight);
            createVFX(ref particle, vfxParticle);
            light.GetComponent<VisualEffect>().SetVector4("Color", emissionColor);
            particle.GetComponent<VisualEffect>().SetVector4("Color", emissionColor);
        }
    }

    private void createVFX(ref GameObject obj, GameObject vfxLight)
    {
        if (obj == null)
        {
            obj = Instantiate(vfxLight);
            obj.transform.position = new Vector3(transform.position.x, transform.position.y, transform.position.z + transform.localScale.y / 2);
        }
    }
    private void removeVFX(ref GameObject obj)
    {
        if (obj != null)
        {
            VisualEffect vfx = obj.GetComponent<VisualEffect>();
            vfx.Stop();
            Destroy(obj, vfx.GetFloat("Life_Max"));
            obj = null;
        }
    }
}

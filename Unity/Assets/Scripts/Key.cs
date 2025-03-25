using UnityEngine;
using UnityEngine.VFX;

public class Key : MonoBehaviour
{
    // Private
    private bool state = false;
    private GameObject effect;
    private GameObject light;
    private GameObject particle;

    // Public
    public Material materialOff;
    public Material materialOn;
    public Material materialEffect;
    public GameObject vfxLight;
    public GameObject vfxParticle;

    // Constant
    private static float depth = 0.5f;

    public void initialize(Material materialOff, Material materialOn, Material materialEffect, GameObject vfxLight, GameObject vfxParticle)
    {
        this.materialOff = materialOff;
        this.materialOn = materialOn;
        this.materialEffect = materialEffect;
        this.vfxLight = vfxLight;
        this.vfxParticle = vfxParticle;
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

    private void createEffect()
    {
        if (effect == null)
        {
            effect = GameObject.CreatePrimitive(PrimitiveType.Cube);
            effect.AddComponent<KeyEffect>().initialize(gameObject.name, transform.localScale, transform.position, materialEffect);
        }
    }

    private void removeEffect()
    {
        if (effect != null)
        {
            effect.GetComponent<KeyEffect>().triggerDetatch();
            effect = null;
        }
    }

    public void noteOn()
    {
        if (!state)
        {
            // State
            state = true;

            // Material
            GetComponent<Renderer>().material = materialOn;

            // Position
            transform.position -= new Vector3(0, depth, 0);

            // Effect
            createEffect();

            // VFX
            createVFX(ref light, vfxLight);
            createVFX(ref particle, vfxParticle);
        }
    }

    public void noteOff()
    {
        if (state)
        {
            // State
            state = false;

            // Material
            GetComponent<Renderer>().material = materialOff;

            // Position
            transform.position += new Vector3(0, depth, 0);

            // Effect
            removeEffect();

            // VFX
            removeVFX(ref light);
            removeVFX(ref particle);
        }
    }
}

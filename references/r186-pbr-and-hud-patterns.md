# Three.js v0.186.1 (r186) PBR Shaders & Engineering HUD Patterns

## 1. Pure ES Module Import Map (`Three.js v0.186.1`)

Place this inside `<head>` so the browser loads the latest official `v0.186.1` (`r186`) ES Module directly:

```html
<script type="importmap">
  {
    "imports": {
      "three": "https://cdn.jsdelivr.net/npm/three@0.186.1/build/three.module.min.js",
      "three/addons/": "https://cdn.jsdelivr.net/npm/three@0.186.1/examples/jsm/"
    }
  }
</script>
```

And inside the main `<script>` bootstrap:

```javascript
(async function () {
  if (!window.THREE || parseInt(window.THREE.REVISION || '0', 10) < 180) {
    try {
      const latestThree = await import('https://cdn.jsdelivr.net/npm/three@0.186.1/build/three.module.min.js')
        .catch(() => import('https://unpkg.com/three@0.186.1/build/three.module.min.js'));
      if (latestThree && latestThree.WebGLRenderer) {
        window.THREE = latestThree;
      }
    } catch (err) {
      await new Promise((resolve) => {
        const s = document.createElement('script');
        s.src = 'https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js';
        s.onload = resolve;
        s.onerror = resolve;
        document.head.appendChild(s);
      });
    }
  }
  const THREE = window.THREE;
  // ...
})();
```

## 2. `r186` Flagship `MeshPhysicalMaterial` Presets

```javascript
const mats = {
  // Biological Wing Membrane / Dichroic Glass with Thin-Film Optical Interference
  wingMembrane: new THREE.MeshPhysicalMaterial({
    color: 0x38bdf8,
    emissive: 0x0284c7,
    emissiveIntensity: 0.32,
    metalness: 0.12,
    roughness: 0.06,
    clearcoat: 1.0,
    iridescence: 1.0,
    iridescenceIOR: 1.38,
    iridescenceThicknessRange: [120, 480],
    transparent: true,
    opacity: 0.50,
    side: THREE.DoubleSide
  }),
  // Chitin Exoskeleton / Brushed Amber Armor with Sheen & Micro-Groove Anisotropy
  chitinAmber: new THREE.MeshPhysicalMaterial({
    color: 0xd97706,
    emissive: 0x451a03,
    emissiveIntensity: 0.25,
    metalness: 0.32,
    roughness: 0.16,
    clearcoat: 1.0,
    clearcoatRoughness: 0.06,
    iridescence: 0.45,
    iridescenceIOR: 1.52,
    sheen: 0.65,
    sheenColor: new THREE.Color(0xfbbf24),
    sheenRoughness: 0.25,
    anisotropy: 0.55,
    transparent: true,
    opacity: 0.93
  }),
  // Compound Eye / Ruby Jewel with Thin-Film Iridescence
  rubyEye: new THREE.MeshPhysicalMaterial({
    color: 0xe11d48,
    emissive: 0x881337,
    emissiveIntensity: 0.48,
    metalness: 0.22,
    roughness: 0.08,
    clearcoat: 1.0,
    clearcoatRoughness: 0.04,
    iridescence: 0.72,
    iridescenceIOR: 1.48,
    iridescenceThicknessRange: [160, 420]
  })
};
```

## 3. 2D-to-3D Dimensional Ascension + 12-Subsystem Exploded View Loop

```javascript
PART_KEYS.forEach((key, idx) => {
  const grp = subsystems[key];
  const p3d = grp.userData.basePos;
  const p2d = grp.userData.pos2D;
  const s2d = grp.userData.scale2D;
  const eVec = grp.userData.explodeVec;

  const curX = THREE.MathUtils.lerp(p2d.x, p3d.x, dim) + eVec.x * exp;
  const curY = THREE.MathUtils.lerp(p2d.y, p3d.y, dim) + eVec.y * exp;
  const curZ = THREE.MathUtils.lerp(p2d.z, p3d.z, dim) + eVec.z * exp * dim;
  grp.position.set(curX, curY, curZ);

  grp.scale.set(
    THREE.MathUtils.lerp(s2d.x, 1.0, dim),
    THREE.MathUtils.lerp(s2d.y, 1.0, dim),
    THREE.MathUtils.lerp(s2d.z, 1.0, dim)
  );

  lPosAttr.setXYZ(idx * 2, p3d.x, p3d.y, p3d.z * dim);
  lPosAttr.setXYZ(idx * 2 + 1, curX, curY, curZ);
});
lPosAttr.needsUpdate = true;
leaderLines.computeLineDistances();
```

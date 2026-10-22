---
name: threejs-bionic-mech-lab
description: Build interactive 3D bionic, horological, and embodied neuroscience WebGL2 simulations using ES Modules and Three.js v0.186.1 (r186) physical PBR shaders. Use when the user asks to generate 3D mechanical creatures, bionic automatons, connectome or physics simulations, 2D-to-3D dimensional morphing blueprints, 12-subsystem exploded views, 4-viewport CAD splits, multi-act director showreels, 60FPS video recorders, or 4:3 and 3:4 high-resolution cover studios.
---
# Three.js Bionic and Horological 3D Lab

Build self-contained, single-file interactive 3D engineering blueprints, horological automatons, and embodied neuroscience laboratories running on the latest Three.js v0.186.1 (r186) ES Module and WebGL2 physical PBR pipeline.

## Summary

This skill standardizes the architecture for high-precision 3D mechanical and biological simulations in a single HTML file. Every generated model starts directly on the latest Three.js v0.186.1 (r186) ES Module with full thin-film iridescence, anisotropy, sheen, and clearcoat shaders, paired with a 12-subsystem inspection matrix, 2D-to-3D dimensional ascension, 0% to 100% exploded disassembly, 4-viewport CAD split, a multi-act director showreel with timeline scrubbing, and a 60FPS HUD-composited video and 4:3 or 3:4 cover studio.

## When to Use

- The user asks to build an interactive 3D mechanical creature, bionic automaton, clockwork ornithopter, or horological sculpture (such as a dragonfly, crocodile, peacock, or fruit fly).
- The user wants an embodied AI, physics (MuJoCo style), or neuroscience connectome 3D visualization (such as neural spike readouts, 9x9 Sudoku solvers, 3x3 Rubik's Cube manipulation, or compound-eye ommatidia vision rendering).
- The user requests a 3D model with 2D-to-3D blueprint ascension, interactive 01-12 subsystem callout pins, exploded view disassembly, 4-viewport CAD views, or built-in 60FPS video and 4:3 or 3:4 cover export.
- The user asks to upgrade an existing Three.js visualization to the latest Three.js v0.186.1 (r186) ES Module and WebGL2 physical PBR stack.

## Steps

### 1. Boot Pure ES Module + Three.js v0.186.1 (r186) + WebGL2 PBR

Load Three.js v0.186.1 (`r186`) via a native W3C `<script type="importmap">` in `<head>` without preloading legacy `r128` UMD scripts.

- Declare `"three": "https://cdn.jsdelivr.net/npm/three@0.186.1/build/three.module.min.js"` and `"three/addons/": "https://cdn.jsdelivr.net/npm/three@0.186.1/examples/jsm/"` inside `<script type="importmap">`.
- Dynamically import `three@0.186.1` at runtime (with `unpkg.com` as secondary ES module mirror and `r128` only inside the `catch` fallback block).
- Initialize `THREE.WebGLRenderer({ antialias: true, powerPreference: 'high-performance', preserveDrawingBuffer: true })` with `ACESFilmicToneMapping`, `SRGBColorSpace`, soft shadow mapping, and a procedural `PMREMGenerator` studio environment map.
- Display a live engine badge in the top header confirming `THREE.JS r186 (v0.186.1) + WEBGL2 PBR`.

### 2. Author r186 Physical Materials (Iridescence, Anisotropy, Sheen, Clearcoat)

Use `THREE.MeshPhysicalMaterial` with `r186` optical channels so biological membranes, precision metals, and enamel surfaces never look flat or plastic.

- Apply thin-film optical interference (`iridescence: 1.0`, `iridescenceIOR: 1.38` to `1.65`, `iridescenceThicknessRange: [120, 480]`) to insect wings, compound eyes, dichroic glass plumes, and neural connectome nodes.
- Apply brushed micro-groove anisotropy (`anisotropy: 0.55` to `0.60`) and biological cuticle sheen (`sheen: 0.65`, `sheenColor`, `sheenRoughness: 0.25`) to chitin exoskeletons, naval brass, and blued steel.
- Apply high-gloss UV clearcoat (`clearcoat: 1.0`, `clearcoatRoughness: 0.05`) to gemstones, cloisonne enamel, and articulated puzzle cubies.
- Attach crisp vector blueprint edges (`THREE.EdgesGeometry` + `THREE.LineSegments`) to each mesh so 2D blueprint mode renders like a glowing CAD etching.

### 3. Construct 6 to 12 Articulated Subsystems with 2D-to-3D Morphing and Exploded View

Organize the 3D hierarchy into 6 to 12 named subsystems (`s01` through `s12`) registered on a central root group.

- Store three coordinate vectors on every subsystem group's `userData`: `basePos` (3D assembled position), `pos2D` and `scale2D` (flattened XY blueprint mandala layout), and `explodeVec` (3D radial disassembly vector).
- Interpolate every frame between `pos2D` and `basePos` using `dimFactor` (`0.0` = 2D flat blueprint, `1.0` = 3D embodied volume) and add `explodeVec * explodeFactor` (`0.0` = assembled, `1.0` = 100% exploded).
- Connect each subsystem's assembled origin to its current displaced position using dynamic dashed engineering leader lines (`THREE.LineDashedMaterial`).
- Render a sweeping horizontal laser scan plane (`scanLaserPlane`) during 2D-to-3D transitions.

### 4. Wire Real-Time Biomechanical Kinematics and Domain Benchmarks

Drive all joints, gears, wings, limbs, and neural particles procedurally in the `requestAnimationFrame` loop using `THREE.Clock`.

- Implement authentic biological or horological motion: alternating tripod hexapod gait, 220Hz 3-DoF wing flapping with figure-8 feathering, anti-phase haltere oscillation, 8-to-10 segment sinusoidal spine/tail waves, meshing spur gears with ruby escapements, hydraulic jaw snap, or 180-degree train fan blooming.
- When building embodied AI or connectome benchmarks, include interactive task modules with zero geometric clipping:
  - **Connectome Spike Solver**: 1,800-particle 3D brain point cloud with gold action-potential flashes, 40ms spike histogram bars, and a 9x9 Sudoku board (supporting 69, 51, and 36 clue stages with zero backtracking).
  - **Articulated 3x3 Rubik's Cube Manipulator**: 27 individual 6-color physical cubies suspended above a non-clipping magnetic force-ring pedestal, featuring a WCA non-repeating 10-move random scramble generator, exact inverse neural solve sequence, live stopwatch timer, and 3D holographic scoreboard.
  - **Retinotopic Vision Input Render**: Dual-hemisphere 721-ommatidia hexagonal canvas rendering real-time blue and yellow-green photoreceptor responses.

### 5. Build the Engineering HUD, 12-Pin Overlay, 4 Themes, and 4-Viewport Split

Layer a glassmorphic Tailwind CSS engineering HUD (`backdrop-filter: blur(14px)`) around the WebGL canvas without obstructing the central 3D model.

- **Top Header**: Technical figure code, serif italic title, engine badge, 4 color theme buttons, 12-pin toggle, Web Audio synthesizer toggle, `AUTO DEMO` button, `REC VIDEO` button, and `4:3` / `3:4` cover buttons.
- **Left Sidebar**: Live 6-metric telemetry grid, 12-subsystem quick-select matrix (`01` to `12`), and the Chinese/bilingual subsystem inspector card (`#inspector-card`) with `RESET FOCUS (ALL)`.
- **3D Callout Pins (`#annotations-layer`)**: Project each subsystem's 3D world anchor to 2D screen coordinates every frame; clicking any pin or 3D mesh (via `THREE.Raycaster`) focuses the camera smoothly onto that subsystem.
- **4-Viewport CAD Mode (`1-4 VIEWS`)**: Use `renderer.setScissorTest(true)` to render 3D Isometric Perspective, Dorsal Plan (Top), Anterior Front, and Lateral Profile simultaneously.

### 6. Implement the Multi-Act Director Auto-Demo, Scrubber, and 60FPS Recorder

Include a self-running director showreel (48s or 120s / 2-minute `02:00` duration) and a composite canvas exporter.

- Provide a top-center director banner (`#demo-banner`) with a draggable timeline scrubber (`#demo-scrubber`) and 6 Act quick-jump chapter buttons (`ACT I` through `ACT VI`) covering: (I) 2D-to-3D laser ascension, (II) primary neural/kinematic benchmark, (III) secondary manipulation & flight, (IV) sequential 01-12 subsystem close-up tour (2 to 3 seconds per subsystem), (V) 100% exploded view + 4 themes + 4-viewport split, and (VI) full reassembly finale.
- Composite both the WebGL canvas and the 2D HUD overlays (callout pins, title box, telemetry card, inspector card, and PIP canvases) onto an offscreen recording canvas (`drawHUDCompositeOnto`) so `REC VIDEO` (`MediaRecorder` at 60FPS, 8 Mbps) and the `4:3` (`1600x1200`) and `3:4` (`1200x1600`) cover studio export complete, publication-ready visuals.
- Consult `references/r186-pbr-and-hud-patterns.md` for copy-ready implementation patterns and shader presets, and inspect `examples/` for complete reference applications.

## Gotchas

- **Never omit `preserveDrawingBuffer: true` on `THREE.WebGLRenderer`**: Without it, `drawImage(renderer.domElement, ...)` and `toDataURL('image/png')` produce blank black frames in captured videos and 4:3 or 3:4 covers.
- **Scale light intensities for Three.js r155+ / r186 physical lighting**: Modern Three.js uses physically correct lighting units (`candela`), so multiply `DirectionalLight` and `PointLight` intensities by `Math.PI` and set `PointLight` decay to `0` (or tune distance/intensity) so metallic and iridescent surfaces stay vibrant.
- **Prevent 3D geometry clipping between characters and props**: When an articulated character manipulates an object (such as a 3x3 Rubik's Cube), hide flat floor slabs that intersect the prop and use a dedicated non-clipping pedestal with at least 1.0 world unit of vertical clearance.
- **Include native CSS layout fallbacks**: Always include a compact set of native CSS utility rules (`.fixed`, `.inset-0`, `.hidden`, `.flex`, `.grid`) alongside the Tailwind CDN script so the HUD layout stays intact even on slow connections.

---
name: blender-3d-automation
description: Use this skill when creating, modifying, inspecting, lighting, texturing, or rendering 3D scenes in Blender via the native blender-rust-mcp server and Python bpy.
---

# Blender 3D Automation & MCP Driver

## When to use
Use this skill whenever:
- Creating 3D models, primitives, environments, or procedural scenes in Blender.
- Interacting with an open Blender session in real-time via the live viewport TCP bridge.
- Generating, checking, and batch-rendering `.blend` files in headless CLI mode (`blender --background`).
- Applying PBR materials (Principled BSDF with metallic, roughness, emission, and hex colors).
- Staging studio/cinematic cameras with automatic `Track To` focus targets and focal lengths.
- Configuring 3-point, sun, or HDRI lighting with physically based lumen/watt values.
- Exporting 3D assets to glTF/GLB, FBX, or OBJ for game engines (Godot, Unreal, Unity) or web (Three.js).

## Design Principles

1. **Dual-Mode Operation (Live vs. Headless)**:
   - If the user has Blender open with the Antigravity MCP addon enabled, commands execute immediately in the active 3D Viewport.
   - If Blender is closed, the bridge automatically spawns `blender.exe --background` to run scripts headlessly without user intervention.
2. **Physically Based Shading (PBR)**:
   - Dielectric materials (plastic, wood, stone, glass) use `metallic: 0.0`.
   - Pure conductors (gold, chrome, copper, aluminum) use `metallic: 1.0`.
   - Never set metallic to intermediate values (e.g. 0.5) unless representing dirty or rusted metals.
   - Roughness should range between `0.1` (high polish) and `0.8` (chalk/clay). Avoid absolute 0.0 or 1.0.
3. **Lighting Energy Conventions**:
   - Sun lights: `3.0` to `8.0` strength (directional sunlight).
   - Point / Area lights: `100.0 W` to `2000.0 W` depending on distance and indoor scale.
   - Avoid flat unshadowed ambient lighting; always establish a Key, Fill, and Rim contrast ratio.
4. **Photographic Camera Staging**:
   - Wide-angle / landscape: `24mm`–`35mm`.
   - Standard / human eye: `50mm`.
   - Portrait / product close-up: `85mm`–`105mm`.
   - Always track a target empty object (`Camera_Focus_Target`) for clean focal orientation.

## Step-by-Step Workflow

1. **Verify Connectivity**:
   - Call `blender_ping` to detect whether live viewport session (port 9876) or headless background CLI mode is active.
2. **Inspect Active Scene**:
   - Call `blender_get_scene_info` to inspect existing objects, mesh counts, active camera, and render engine.
3. **Construct Geometry**:
   - For standard shapes: call `blender_create_primitive` (cube, sphere, cylinder, plane, torus).
   - For procedural geometry or landscape generation: call `blender_execute_bpy` with procedural vertex/modifier logic.
4. **Apply Shaders & Materials**:
   - Call `blender_apply_material` with target object, hex color, metallic, roughness, and emission.
5. **Stage Camera & Lighting**:
   - Call `blender_setup_camera` with location coordinates, focus target, and focal length.
   - Call `blender_setup_lighting` with Key and Fill light sources.
6. **Render Preview**:
   - Call `blender_render_frame` (using `BLENDER_EEVEE_NEXT` for fast previews or `CYCLES` for photorealism).
7. **Save & Export**:
   - Call `blender_save_file` to preserve `.blend` state, and `blender_export` for `.glb` or `.fbx` delivery.

## Specifics & Examples

### 1. Creating a Studio Product Scene
```json
// Create primitive pedestal
{
  "name": "blender_create_primitive",
  "arguments": {
    "primitive_type": "cylinder",
    "name": "Pedestal",
    "location": [0.0, 0.0, 0.5],
    "scale": [1.5, 1.5, 0.5]
  }
}
```

### 2. Applying Matte Dark Metal Material
```json
{
  "name": "blender_apply_material",
  "arguments": {
    "object_name": "Pedestal",
    "material_name": "M_DarkMetal",
    "color_hex": "#1E222A",
    "metallic": 0.85,
    "roughness": 0.25
  }
}
```

### 3. Setting Up Cinematic Camera
```json
{
  "name": "blender_setup_camera",
  "arguments": {
    "location": [3.0, -3.5, 2.2],
    "target": [0.0, 0.0, 0.5],
    "focal_length": 85.0
  }
}
```

### 4. Setting Up Key Sun & Rim Light
```json
{
  "name": "blender_setup_lighting",
  "arguments": {
    "light_type": "SUN",
    "name": "Key_Sun",
    "location": [4.0, -2.0, 6.0],
    "energy": 5.0,
    "color_hex": "#FFF5E6"
  }
}
```

### 5. Executing Complex Procedural BPY Script
```python
# Calling blender_execute_bpy
import bpy
import math

# Create radial ring of cyber cubes
for i in range(8):
    angle = (i / 8) * 2 * math.pi
    x = math.cos(angle) * 3.0
    y = math.sin(angle) * 3.0
    bpy.ops.mesh.primitive_cube_add(size=0.6, location=(x, y, 1.0))
    cube = bpy.context.active_object
    cube.name = f"CyberCube_{i}"

out = {"created_cubes": 8, "radius": 3.0}
```

## Common Mistakes
- **Assuming Live Mode when Blender is Closed**: Always run `blender_ping` first. If Blender is closed, pass `blend_file` paths so headless mode knows which file to open.
- **Forgetting Render Engine Nuances**: In Blender 4.x/5.x, EEVEE is updated to `BLENDER_EEVEE_NEXT`. Do not hardcode legacy `BLENDER_EEVEE` options.
- **Extreme Light Intensities**: Using 1000.0 energy on a `SUN` lamp will completely wash out the scene. Sun energy is irradiance (`5.0`–`10.0`), while Point/Area lamps use luminous flux / Watts (`100`–`2000`).

## Review Checklist
- [ ] `blender_ping` confirmed bridge status.
- [ ] All 3D coordinates use real-world metric scale.
- [ ] Materials adhere to PBR metallic (0.0 or 1.0) and roughness bounds.
- [ ] Camera is aimed at a target and focal length matches composition goals.
- [ ] Render output directory exists before dispatching `blender_render_frame`.
- [ ] Scene saved to `.blend` file.

## Related Skills
- `rust-mcp-toolchain`
- `design-foundations-visual-hierarchy`

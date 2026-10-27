---
name: webgl-threejs-basics
description: Use this skill when constructing interactive 3D web scenes, cameras, lighting, materials, and mesh animations using Three.js and WebGL.
---
# WebGL and Three.js Basics

## When to use
Use this skill when developing interactive 3D product showcases, data visualizations, spatial interfaces, or immersive interactive web experiences.

## Prerequisites
- Node.js 18+ and `three` package installed with `@types/three`.
- Basic understanding of 3D vectors, Cartesian coordinates, and scene graphs.

## Step-by-step workflow
1. **Initialize the core scene triad**: Instantiate the `THREE.Scene`, `THREE.PerspectiveCamera`, and `THREE.WebGLRenderer`.
2. **Mount and size canvas**: Append `renderer.domElement` to the DOM and configure size with `renderer.setSize(width, height)`.
3. **Add lighting**: Place ambient lights (`THREE.AmbientLight`) and directional lights (`THREE.DirectionalLight`) with shadow configurations.
4. **Create meshes**: Combine geometries (`THREE.BoxGeometry`, `THREE.SphereGeometry`) and materials (`THREE.MeshStandardMaterial`) into `THREE.Mesh`.
5. **Run animation & cleanup**: Animate scene objects inside `requestAnimationFrame` and dispose of geometries, materials, and textures on teardown.

## Commands / code examples
```ts
import * as THREE from 'three';

export function create3DScene(container: HTMLElement) {
  const scene = new THREE.Scene();
  scene.background = new THREE.Color('#0f172a');

  const camera = new THREE.PerspectiveCamera(
    75,
    container.clientWidth / container.clientHeight,
    0.1,
    1000
  );
  camera.position.z = 5;

  const renderer = new THREE.WebGLRenderer({ antialias: true });
  renderer.setSize(container.clientWidth, container.clientHeight);
  renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));
  container.appendChild(renderer.domElement);

  const light = new THREE.DirectionalLight(0xffffff, 1.5);
  light.position.set(2, 4, 3);
  scene.add(light);
  scene.add(new THREE.AmbientLight(0xffffff, 0.5));

  const geometry = new THREE.TorusKnotGeometry(1, 0.3, 100, 16);
  const material = new THREE.MeshStandardMaterial({ color: '#38bdf8', roughness: 0.3 });
  const mesh = new THREE.Mesh(geometry, material);
  scene.add(mesh);

  let animationFrameId: number;

  function animate() {
    mesh.rotation.x += 0.01;
    mesh.rotation.y += 0.01;
    renderer.render(scene, camera);
    animationFrameId = requestAnimationFrame(animate);
  }
  animate();

  return () => {
    cancelAnimationFrame(animationFrameId);
    geometry.dispose();
    material.dispose();
    renderer.dispose();
    container.removeChild(renderer.domElement);
  };
}
```

## Common mistakes & pitfalls
- Failing to explicitly call `.dispose()` on geometries, materials, and textures, causing catastrophic GPU memory leaks.
- Not clamping `devicePixelRatio` (e.g., to 2), causing severe frame drops on ultra-high-density mobile displays.
- Re-creating materials and geometries inside the render loop rather than reusing existing instances.

## Verification checklist
- [ ] Renderer pixel ratio is capped (e.g., `Math.min(window.devicePixelRatio, 2)`).
- [ ] Resize listener updates `camera.aspect` and calls `camera.updateProjectionMatrix()`.
- [ ] Cleanup function disposes of all textures, geometries, and materials.
- [ ] Draw calls and polygon counts are monitored and kept within reasonable limits.

## Related skills
- canvas-api-2d-graphics
- performance-code-review-complexity-allocations
- react-fundamentals
- browser-dom-manipulation-events

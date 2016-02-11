# glsl-scene-light-direction

GLSL function for computing lighting direction in scenes. Designed for use as a shader component with [`glslify`](https://github.com/stackgl/glslify) and [`glsl-scene-light`](https://github.com/freeman-lab/glsl-scene-light).

## install

To make avaialble in your project

```javascript
npm install glsl-scene-light-direction --save
```

## example

Define a light in your shader

```glsl
pragma glslify: SceneLight = require('glsl-scene-light')
uniform SceneLight light;
```

Then compute light direction from the vertex position

```glsl
pragma glslify: direction = require('glsl-scene-light-direction')
vec3 dir = direction(light, position);
```

# algorithm

The calculated direction depends on the `position` parameter of the light, a `vec4` in homogenous coordinates. The fourth element determines whether the light is directional or not. 

- If the fourth element is `0.0`, the direction will be the normalized light position.
- If the fourth element is `1.0`, the direction will point from the light to the vertex.

# API

#### `direction(light, position)`

Parameters
- `light` : `struct` instance of [`glsl-scene-light`](https://github.com/freeman-lab/glsl-scene-light)
- `position` : `vec4` position of the light

Returns
- `vec3` the computed light direction

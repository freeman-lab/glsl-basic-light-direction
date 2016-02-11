#pragma glslify: SceneLight = require('glsl-scene-light')

vec3 calcLightDirection(SceneLight light, vec3 position) {
	vec3 direction;

	if (light.position.w == 0.0) {
		direction = normalize(light.position.xyz);
	} else {
		direction = light.position.xyz - position;
	}

	return direction;
}

#pragma glslify: export(calcLightDirection)
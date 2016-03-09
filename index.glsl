#pragma glslify: Light = require('glsl-light')

vec3 calcLightDirection(Light light, vec3 position) {
	vec3 direction;

	if (light.position.w == 0.0) {
		direction = normalize(light.position.xyz);
	} else {
		direction = light.position.xyz - position;
	}

	return direction;
}

#pragma glslify: export(calcLightDirection)
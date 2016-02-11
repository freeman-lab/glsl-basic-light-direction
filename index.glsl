#pragma glslify: BasicLight = require('glsl-basic-light')

vec3 BasicLightDirection(BasicLight light, vec3 position) {
	vec3 direction;

	if (light.position.w == 0.0) {
		direction = normalize(light.position.xyz);
	} else {
		direction = light.position.xyz - position;
	}

	return direction;
}

#pragma glslify: export(BasicLightDirection)
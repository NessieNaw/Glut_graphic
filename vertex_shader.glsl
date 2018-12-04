#version 330 

layout (location = 0) in vec3 bPos;
layout (location = 1) in vec2 vtexcoord0;
layout (location = 2) in float cos;
layout (location = 3) in float przez;

uniform mat4 MVP;
out vec2 texcoord0;
out float cos1;
out float przez_new;

void main()
{
    gl_Position = MVP*vec4(bPos.x, bPos.y, bPos.z, 1.0);
	texcoord0=vtexcoord0;
	cos1=cos;
	przez_new=przez;

}

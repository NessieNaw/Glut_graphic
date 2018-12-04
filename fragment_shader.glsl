#version 330

out vec4 FragColor;
in vec2 texcoord0;
uniform sampler2D tex0;
in float cos1;
in float przez_new;
vec4 blend_text;

void main()
{

	if(cos1 == 0)
		gl_FragColor = vec4(0,1,0,przez_new);
	else if(cos1 == 1)
		gl_FragColor = texture( tex0, texcoord0 );
	else if(cos1 == 2){
		blend_text = texture(tex0, texcoord0);
		blend_text[3] = 0.5;
		gl_FragColor = blend_text;
	}
	
} 

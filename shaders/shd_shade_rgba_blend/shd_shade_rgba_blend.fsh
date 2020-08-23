//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float add_red;
uniform float add_blue;
uniform float add_green;
uniform float add_alpha;


void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor.r += vec3(add_red);
	gl_FragColor.b += vec3(add_blue);
	gl_FragColor.g += vec3(add_green);
	gl_FragColor.a += vec3(add_alpha);

}

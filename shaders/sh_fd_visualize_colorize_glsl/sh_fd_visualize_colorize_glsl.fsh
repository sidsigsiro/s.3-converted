#define colorize_color vec4(0.5, 0.5, 0.5, 1.0)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    gl_FragColor = v_vColour * vec4(colorize_color.rgb, colorize_color.a * texture2D(gm_BaseTexture, v_vTexcoord).w);
}

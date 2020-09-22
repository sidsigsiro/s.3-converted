varying vec2 v_vTexcoord;

void main() {
    vec2 acceleration = vec2(0.0, 0.0);

    gl_FragColor = vec4(acceleration + (128.0 / 255.0), 0.0, 1.0);
}

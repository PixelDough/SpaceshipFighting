varying vec2 v_texcoord;

void main()
{ 
    vec4 colour = texture2D(gm_BaseTexture, v_texcoord);
    gl_FragColor.rgb = 1.0 - colour.rgb;
    gl_FragColor.a = colour.a;
}

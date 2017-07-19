//
// Simple passthrough fragment shader
//
uniform float time;
uniform vec2 resolution;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    
    vec2 p = v_vTexcoord;
    p.y = p.y + sin(p.x*80.+time*6.)*0.001;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, p );  
    
    gl_FragColor = texture2D( gm_BaseTexture, p );
}


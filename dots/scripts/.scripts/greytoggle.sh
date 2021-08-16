#!/usr/bin/env bash

grey_image=~/.cache/grey

glsl_code="
uniform float opacity;
uniform bool invert_color;
uniform sampler2D tex;

void main() {
    vec4 c = texture2D(tex, gl_TexCoord[0].xy);
    float g = (c.r + c.g + c.b) / 3.0;  // EDIT1: Average.
    c = vec4(vec3(g), c.a);         // EDIT2: Color.
    if (invert_color)
        c = vec4(vec3(c.a, c.a, c.a) - vec3(c), c.a);
    c *= opacity;
    gl_FragColor = c;
}
"

if [ -f "$grey_image" ]; then
    echo "turning off greyscale"
    # start regular picom
    pkill picom && picom -b
    # delete greyscale background and set normal 
    feh --bg-fill $(cat ~/.cache/wal/wal)
    rm $grey_image
else
    echo "turning on greyscale"
    # start greyscale picom
    pkill picom && picom -b \
        --backend glx \
        --glx-fshader-win "$glsl_code" \
        2>/dev/null
    # create and set greyscale background
    convert $(cat ~/.cache/wal/wal) -colorspace Gray $grey_image
    feh --bg-fill $grey_image
fi

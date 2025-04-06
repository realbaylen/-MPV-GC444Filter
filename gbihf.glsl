//!HOOK MAIN
//!BIND HOOKED

#define switchLeftToRight true

vec4 hook() {
    vec2 pixel_size = HOOKED_pt;
    vec2 total_size = HOOKED_size;
    vec2 uv = HOOKED_pos;

    if (switchLeftToRight) {
        uv.x = uv.x - floor(mod(uv.x * total_size.x, 2.0)) * pixel_size.x;
    }

    return HOOKED_tex(uv);
}

-- Special module to access light options in renderscript.
-- Renderscript is going to forward this values into shader uniform constants.
return {
    clear_color     = vmath.vector4(0.1, 0.1, 0.5, 1),
    fog             = vmath.vector4(1, 10, 1, 0),
    ambient         = vmath.vector4(0.15, 0.15, 0.15, 1),
    fog_color       = vmath.vector4(0.5, 0.5, 0.75, 1),
    
    cam_pos                 = vmath.vector3(0, 0, 0),
    cam_look_at_position    = vmath.vector3(0, 0, 0),
    sun_position            = vmath.vector4(5, 10, 5, 0),
    sun_color               = vmath.vector4(0.5, 0.5, 0.5, 0),
    shadow_color            = vmath.vector4(0.5, 0.5, 0.4, 0),

    -- List of light sources. Their world position and colors.
    -- v0 is a zero vector4. This value will be assigned in case if there are no sources, or amount of sources less 16 (max in demo).
    -- "Lights" is an indices array. Only first 16 (max in this demo) sources will be used in shader.
    lights = {
        -- {position = v0, color = v0, distance = 1, power = 1},
        -- {position = vmath.vector4(0, 0, 0, 0), color = vmath.vector4(1, 0, 0, 0), distance = 1, power = 1/100}
    },

}
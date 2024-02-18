data:extend({{
    type = "tile",
    name = "plank-floor",
    order = "a",
    needs_correction = false,
    minable = {
        mining_time = 0.1,
        result = "plank"
    },
    -- mined_sound = sounds.deconstruct_bricks(0.8),
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.15,
    layer = 64,
    transition_overlay_layer_offset = 2,
    decorative_removal_probability = 1,
    variants = {
        main = {{
            picture = "__arcanium__/graphics/terrain/wooden-path-2.png",
            count = 1,
            size = 1
        }},
        side = {
            picture = "__arcanium__/graphics/terrain/wooden-path-2.png",
            count = 4
        },
        inner_corner = {
            picture = "__arcanium__/graphics/terrain/wooden-path-2.png",
            count = 4
        },
        outer_corner = {
            picture = "__arcanium__/graphics/terrain/wooden-path-2.png",
            count = 4
        }
    },
    walking_sound = {{
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2
    }, {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2
    }, {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2
    }, {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2
    }},
    map_color = {
        r = 51,
        g = 28,
        b = 0
    },
    pollution_absorption_per_second = 0.1
}})

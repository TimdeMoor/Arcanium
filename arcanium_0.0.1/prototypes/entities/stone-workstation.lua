data:extend({{
    type = "lab",
    name = "stone-workstation",
    icon = "__arcanium__/graphics/test.png",
    icon_size = 32,
    order = "c",
    max_health = 50,
    minable = {
        mining_time = 0.5,
        result = "stone-workstation"
    },

    tile_width = 2,
    tile_height = 2,
    collision_box = {{-0.9, -0.9}, {0.9, 0.1}},
    selection_box = {{-1, -1}, {1, 1}},
    researching_speed = 0.1,
    energy_usage = "1W",
    energy_source = {
        type = "void",
        emissions = 0
    },

    off_animation = {
        filename = "__arcanium__/graphics/test.png",
        size = {32, 32},
        frame_count = 1,
        line_length = 1,
        shift = {0.25, 0}
    },

    on_animation = {
        filename = "__arcanium__/graphics/test.png",
        size = {32, 32},
        frame_count = 1,
        line_length = 1,
        shift = {0.25, 0}
    },

    inputs = {
        -- "knowledge-book-conjuring"
    },

    module_specification = {}
}})

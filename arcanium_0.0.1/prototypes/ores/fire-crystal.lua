data:extend({{
    type = "autoplace-control",
    name = "fire-crystal",
    richness = true,
    order = "b-e",
    localised_name = {"", "[entity=fire-crystal] ", {"entity-name.fire-crystal"}},
    category = "resource"
}, {
    type = "noise-layer",
    name = "fire-crystal"
}, {
    type = "resource",
    name = "fire-crystal",
    icon = "__arcanium__/graphics/entities/fire-crystal-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {
        r = 0.80,
        g = 0.11,
        b = 0.14
    },
    minable = {
        hardness = 0.5,
        -- mining_particle = "fire-crystal-particle",
        mining_time = 1,
        result = "item-fire-crystal"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "fire-crystal",
        sharpness = 1,
        richness_multiplier = 10000,
        richness_base = 300,
        size_control_multiplier = 0.04,
        peaks = {{
            influence = 0.3,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0,
            starting_area_weight_max_range = 2
        }, {
            influence = 0.54,
            noise_layer = "fire-crystal",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.4,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0,
            starting_area_weight_max_range = 2
        }}
    },
    stage_counts = {1},
    stages = {
        sheet = {
            filename = "__arcanium__/graphics/entities/fire-crystal-ore.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            frame_count = 1,
            variation_count = 1
        }
    }
}})

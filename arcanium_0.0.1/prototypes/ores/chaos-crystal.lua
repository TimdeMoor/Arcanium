data:extend({{
    type = "autoplace-control",
    name = "chaos-crystal",
    richness = true,
    order = "b-e",
    localised_name = {"", "[entity=chaos-crystal] ", {"entity-name.chaos-crystal"}},
    category = "resource"
}, {
    type = "noise-layer",
    name = "chaos-crystal"
}, {
    type = "resource",
    name = "chaos-crystal",
    icon = "__arcanium__/graphics/entities/chaos-crystal-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {
        r = 0.15,
        g = 0.15,
        b = 0.15
    },
    minable = {
        hardness = 0.5,
        -- mining_particle = "chaos-crystal-particle",
        mining_time = 1,
        result = "item-chaos-crystal"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "chaos-crystal",
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
            influence = 0.55,
            noise_layer = "chaos-crystal",
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
            filename = "__arcanium__/graphics/entities/chaos-crystal-ore.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            frame_count = 1,
            variation_count = 1
        }
    }
}})

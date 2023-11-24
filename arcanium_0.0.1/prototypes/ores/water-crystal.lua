data:extend({{
    type = "autoplace-control",
    name = "water-crystal",
    richness = true,
    order = "b-e",
    localised_name = {"", "[entity=water-crystal] ", {"entity-name.water-crystal"}},
    category = "resource"
}, {
    type = "noise-layer",
    name = "water-crystal"
}, {
    type = "resource",
    name = "water-crystal",
    icon = "__arcanium__/graphics/entities/water-crystal-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {
        r = 0.24,
        g = 0.36,
        b = 0.80
    },
    minable = {
        hardness = 0.5,
        -- mining_particle = "water-crystal-particle",
        mining_time = 1,
        result = "item-water-crystal"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "water-crystal",
        sharpness = 1,
        richness_multiplier = 10000,
        richness_base = 300,
        size_control_multiplier = 0.03,
        peaks = {{
            influence = 0.3,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0,
            starting_area_weight_max_range = 2
        }, {
            influence = 0.1,
            noise_layer = "water-crystal",
            noise_octaves_difference = -2,
            noise_persistence = 0.4,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0,
            starting_area_weight_max_range = 2
        }}
    },
    stage_counts = {1},
    stages = {
        sheet = {
            filename = "__arcanium__/graphics/entities/water-crystal-ore.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            frame_count = 1,
            variation_count = 1
        }
    }
}})

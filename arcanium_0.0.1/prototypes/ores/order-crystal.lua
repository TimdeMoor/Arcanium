data:extend({{
    type = "autoplace-control",
    name = "order-crystal",
    richness = true,
    order = "b-e",
    localised_name = {"", "[entity=order-crystal] ", {"entity-name.order-crystal"}},
    category = "resource"
}, {
    type = "noise-layer",
    name = "order-crystal"
}, {
    type = "resource",
    name = "order-crystal",
    icon = "__arcanium__/graphics/entities/order-crystal-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {
        r = 0.69,
        g = 0.69,
        b = 0.69
    },
    minable = {
        hardness = 0.5,
        -- mining_particle = "order-crystal-particle",
        mining_time = 1,
        result = "item-order-crystal"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "order-crystal",
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
            influence = 0.55,
            noise_layer = "order-crystal",
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
            filename = "__arcanium__/graphics/entities/order-crystal-ore.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            frame_count = 1,
            variation_count = 1
        }
    }
}})

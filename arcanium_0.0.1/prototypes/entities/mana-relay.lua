data:extend({{
    type = "electric-pole",
    name = "entity-basic-mana-relay",
    icon = "__arcanio__/graphics/test.png",
    icon_size = 32,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "item-basic-mana-relay"
    },
    max_health = 200,
    corpse = "small-remnants",
    resistances = {{
        type = "fire",
        percent = 90
    }},
    collision_box = box(0.1, 0.1),
    selection_box = box(0.5, 0.5),
    drawing_box = box(0.1, 0.1),
    maximum_wire_distance = 8,
    supply_area_distance = 0.1,
    pictures = {
        filename = "__arcanio__/graphics/test.png",
        priority = "high",
        width = 32,
        height = 32,
        direction_count = 1,
        shift = {0, 0}
    },
    vehicle_impact_sound = {
        filename = "__base__/sound/car-metal-impact.ogg",
        volume = 0.65
    },
    working_sound = {
        sound = {
            filename = "__base__/sound/substation.ogg"
        },
        apparent_volume = 1.5,
        audible_distance_modifier = 0.5,
        probability = 1 / (3 * 60)
    },
    connection_points = {{
        shadow = {
            copper = {1.9, -0.6},
            green = {1.3, -0.6},
            red = {2.65, -0.6}
        },
        wire = {
            copper = {-0.23, -2.65},
            green = {-0.85, -2.65},
            red = {0.35, -2.65}
        }
    }},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        width = 12,
        height = 12,
        priority = "extra-high-no-scale"
    }
}})

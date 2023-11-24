data:extend({{
    type = "assembling-machine",
    name = "entity-basic-mana-extractor",
    icon = "__arcanio__/graphics/test.png",
    icon_size = 32,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "item-basic-mana-extractor"
    },
    max_health = 200,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
    },
    energy_usage = "10kW",
    crafting_speed = 1,
    crafting_categories = {"crafting", "mana-extracting"},
    corpse = "small-remnants",
    resistances = {{
        type = "fire",
        percent = 90
    }},
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.1, -0.1}, {0.1, 0.1}},
    maximum_wire_distance = 1,
    supply_area_distance = 64,
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
    }
}})

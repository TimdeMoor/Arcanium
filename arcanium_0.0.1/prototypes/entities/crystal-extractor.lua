data:extend({{
    type = "mining-drill",
    name = "entity-crystal-extractor",
    icon = "__arcanio__/graphics/icons/test.png",
    icon_size = "32",
    flags = {"placeable-neutral", "player-creation"},
    minable = {
        mining_time = 1,
        result = "item-crystal-extractor"
    },
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source = {
        type = "electric",
        emissions_per_minute = 1,
        usage_priority = "secondary-input"
    },
    energy_usage = "4kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    resource_categories = {"basic-solid"}
}})

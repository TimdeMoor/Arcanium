data:extend({{
    type = "assembling-machine",
    name = "aura-assembler",
    icon = "__arcanium__/graphics/test.png",
    icon_size = 32,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "aura-assembler"
    },
    max_health = 200,
    energy_source = {
        type = "void",
        emissions_per_minute = -5
    },
    energy_usage = "1W",
    crafting_speed = 1,
    crafting_categories = {"crafting"},
    corpse = "small-remnants",
    collision_box = box(2.8, 2.8),
    selection_box = box(3.0, 3.0),
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
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
          priority="high",
          width = 108,
          height = 114,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(0, 2),
        }
      }
    },
}})

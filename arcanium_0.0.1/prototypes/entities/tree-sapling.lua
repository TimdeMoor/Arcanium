data:extend({{
    type = "tree",
    name = "sapling",
    icon = "__arcanium__/graphics/icons/sapling.png",
    icon_size = 512,
    scale = 1,
    icon_mipmaps = 4,
    minable = {
        mining_particle = "wooden-particle",
        mining_time = 0.5,
        mining_trigger = {{
            type = "direct",
            action_delivery = {{
                type = "instant",
                target_effects = leaf_sound_trigger
            }}
        }}
    },
    max_health = 60,
    healing_per_tick = 1 / 60,
    collision_box = box(1, 3),
    selection_box = box(1, 3),
    placable_off_grid = true,
    pictures = {{
        filename = "__arcanium__/graphics/icons/sapling.png",
        scale = 0.2,
        width = 512,
        height = 512
    }}
}})

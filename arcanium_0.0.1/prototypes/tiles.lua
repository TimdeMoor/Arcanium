local emptytile = {}
emptytile.name = "void"
emptytile.collision_mask = {"ground-tile", "water-tile", "resource-layer", "floor-layer", "item-layer", "object-layer",
                            "player-layer", "doodad-layer"}

emptytile.type = "tile"
emptytile.layer = 0
emptytile.map_color = {
    r = 0,
    g = 0,
    b = 0
}
emptytile.pollution_absorption_per_second = 0.01
emptytile.tint = {
    r = 0.25,
    g = 0.25,
    b = 0.25,
    a = 0.15
}
emptytile.variants = {
    main = {{
        picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
        count = 1,
        size = 1
    }},
    empty_transitions = true,
    material_background = {
        picture = "__arcanium__/graphics/terrain/void.png",
        count = 1,
        scale = 32
    }
}
emptytile.can_be_part_of_blueprint = false
emptytile.layer_group = "zero"
data:extend{emptytile}

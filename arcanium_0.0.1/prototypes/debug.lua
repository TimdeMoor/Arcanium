data:extend({{
    type = "item",
    name = "basic-mana-crystal",
    icon = "__arcanium__/graphics/icons/order-crystal.png",
    icon_size = 64,
    subgroup = "summoning",
    order = "a",
    stack_size = 50
},
{
    type = "recipe",
    name = "debug-mana-crystal",
    icons = Arcanium.graphics.icon_with_subimage(
        "__arcanium__/graphics/icons/order-crystal.png",
        "__arcanium__/graphics/icons/blood-drop.png",
        64, Arcanium.enums.subimage_position.TopLeft
    ),
    category = "crafting",
    energy_required = 1,
    enabled = true,
    ingredients = {},
    result = "basic-mana-crystal"
}
})
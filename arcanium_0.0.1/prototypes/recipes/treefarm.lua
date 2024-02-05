data:extend({
    {
        type = "recipe",
        name = "basic-wood",
        icons = Arcanium.graphics.icon_with_subimage(
            "__base__/graphics/icons/wood.png",
            "__base__/graphics/icons/fluid/water.png",
            64, Arcanium.enums.subimage_position.TopLeft
        ),
        category = "crafting-with-fluid",
        energy_required = 4,
        enabled = true,
        ingredients =
        {
        {"sapling", 1},
        {type="fluid", name="water", amount=50}
        },
        result= "wood",
        result_count = 5
    },
    {
        type = "recipe",
        name = "plank",
        energy_required = 1,
        enabled = true,
        category = "crafting",
        ingredients =
        {
        {"wood", 1}
        },
        result= "plank",
        result_count = 2
    },
    {
        type = "recipe",
        name = "sapling",
        energy_required = 2,
        enabled = true,
        category = "crafting",
        ingredients =
        {
          {"wood", 2}
        },
        result= "sapling",
        result_count = 1
    },
    {
        type = "recipe",
        name = "stick",
        energy_required = 1,
        enabled = true,
        category = "crafting",
        ingredients =
        {
        {"plank", 1}
        },
        result= "stick",
        result_count = 2
    },
    {
        type = "recipe",
        name = "paper",
        energy_required = 1,
        enabled = true,
        category = "crafting",
        ingredients =
        {
        {"plank", 1}
        },
        result= "paper",
        result_count = 2
    },
    {
        type = "recipe",
        name = "empty-scroll",
        energy_required = 1,
        enabled = true,
        category = "crafting",
        ingredients =
        {
        {"paper", 1},
        {"stick", 2}
        },
        result= "empty-scroll",
        result_count = 1
    },
})

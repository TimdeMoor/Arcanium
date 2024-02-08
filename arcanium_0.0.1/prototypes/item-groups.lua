data:extend(
{
    --recipe categories
    {
        type = "recipe-category",
        name = "conjuring-sacrificial"
    },
    --item groups
    {
        type = "item-group",
        name = "arcanium",
        inventory_order = "a-a",
        icon = "__arcanium__/graphics/icons/transmutationCircle.png",
        icon_size = 500
    },
    --item subgroups
    {
        type = "item-subgroup",
        name = "conjuring-catalysts",
        group = "arcanium",
        order = "a-a"
    },
    {
        type = "item-subgroup",
        name = "conjuring-sacrificial",
        group = "arcanium",
        order = "a-b"
    },
    {
        type = "item-subgroup",
        name = "conjuring-basic",
        group = "arcanium",
        order = "a-c"
    },
    {
        type = "item-subgroup",
        name = "conjuring-advanced",
        group = "arcanium",
        order = "a-d"
    },
    {
        type = "item-subgroup",
        name = "conjuring-chaotic",
        group = "arcanium",
        order = "a-e"
    },
    {
        type = "item-subgroup",
        name = "research",
        group = "arcanium",
        order = "z"
    },
})

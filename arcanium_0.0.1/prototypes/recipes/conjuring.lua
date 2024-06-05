local conjuring_vanilla_resources = {"iron-ore", "copper-ore", "coal", "stone"}

for _, resource in pairs(conjuring_vanilla_resources) do
    data:extend({{
        type = "recipe",
        name = "basic-conjuring-" .. resource,
        energy_required = 1,
        icons = icon_with_subimage("__base__/graphics/icons/" .. resource .. ".png",
            "__arcanium__/graphics/icons/order-crystal.png", 64, enums.subimage_position.TopLeft),
        subgroup = "basic",
        enabled = false,
        ingredients = {{"basic-conjuring-catalyst", 1}, {resource, 1}},
        results = {{resource, 2}, {
            type = "item",
            name = "basic-conjuring-catalyst",
            probability = settings.startup["basic-conjuring-catalyst-use-chance"].value / 100,
            amount = 1
        }}
    }, {
        type = "recipe",
        name = "sacrificial-conjuring-" .. resource,
        energy_required = 1,
        icons = icon_with_subimage("__base__/graphics/icons/" .. resource .. ".png",
            "__arcanium__/graphics/icons/blood-drop.png", 64, enums.subimage_position.TopLeft),
        subgroup = "sacrificial",
        category = "conjuring-sacrificial",
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {},
        result = resource
    }})
end
data:extend({{
    type = "recipe",
    name = "basic-conjuring-catalyst-sacrificial",
    icons = icon_with_subimage("__arcanium__/graphics/icons/order-crystal.png",
        "__arcanium__/graphics/icons/blood-drop.png", 64, enums.subimage_position.TopLeft),
    category = "conjuring-sacrificial",
    energy_required = 1,
    ingredients = {},
    result = "basic-conjuring-catalyst",
    enabled = false
}, {
    type = "recipe",
    name = "basic-conjuring-catalyst",
    icon = "__arcanium__/graphics/icons/order-crystal.png",
    icon_size = 64,
    category = "conjuring",
    energy_required = 1,
    ingredients = {},
    result = "basic-conjuring-catalyst",
    enabled = false
}})

data:extend({{
    type = "recipe",
    name = "basic-conjuring-elementium-ore",
    energy_required = 1,
    icons = icon_with_subimage("__arcanium__/graphics/icons/elementium-ore.png",
        "__arcanium__/graphics/icons/order-crystal.png", 64, enums.subimage_position.TopLeft),
    subgroup = "basic",
    enabled = false,
    ingredients = {{"basic-conjuring-catalyst", 1}, {"elementium-ore", 1}},
    results = {{"elementium-ore", 2}, {
        type = "item",
        name = "basic-conjuring-catalyst",
        probability = settings.startup["basic-conjuring-catalyst-use-chance"].value / 100,
        amount = 1
    }}
}, {
    type = "recipe",
    name = "sacrificial-conjuring-elementium-ore",
    energy_required = 1,
    icons = icon_with_subimage("__arcanium__/graphics/icons/elementium-ore.png",
        "__arcanium__/graphics/icons/blood-drop.png", 64, enums.subimage_position.TopLeft),
    subgroup = "sacrificial",
    category = "conjuring-sacrificial",
    enabled = false,
    allow_as_intermediate = false,
    ingredients = {},
    result = "elementium-ore"
}})

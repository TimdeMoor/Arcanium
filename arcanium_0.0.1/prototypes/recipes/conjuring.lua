local conjuring_resources = {"iron-ore", "copper-ore", "coal", "stone", "wood"}

for _, resource in pairs(conjuring_resources) do
    data:extend({{
        type = "recipe",
        name = "basic-conjuring-"..resource,
        energy_required = 1,
        icons = icon_with_subimage(
            "__base__/graphics/icons/"..resource..".png",
            "__arcanium__/graphics/icons/order-crystal.png",
            64, enums.subimage_position.TopLeft),
        subgroup = "conjuring-basic",
        enabled = false,
        ingredients = {{
            type = "item",
            name = "basic-conjuring-catalyst",
            amount = 1
        }},
        results = {{
            type = "item",
            name = resource,
            amount = 1
        }, {
            type = "item",
            name = "basic-conjuring-catalyst",
            probability = settings.startup["basic-conjuring-catalyst-use-chance"].value/100,
            amount = 1
        }}
    },
    {
        type = "recipe",
        name = "sacrificial-conjuring-"..resource,
        energy_required = 1,
        icons = icon_with_subimage(
            "__base__/graphics/icons/"..resource..".png",
            "__arcanium__/graphics/icons/blood-drop.png",
            64, enums.subimage_position.TopLeft),
        subgroup = "conjuring-sacrificial",
        category = "conjuring-sacrificial",
        enabled = true,
        allow_as_intermediate = false;
        ingredients = {},
        result = resource
    },
})
end

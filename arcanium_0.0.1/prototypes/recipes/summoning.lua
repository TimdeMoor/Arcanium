local summoning_resources = {"iron-ore", "copper-ore", "coal", "stone", "wood"}

for _, resource in pairs(summoning_resources) do
    data:extend({{
        type = "recipe",
        name = "basic-summoning-"..resource,
        energy_required = 2,
        icons = Arcanium.graphics.icon_with_subimage(
            "__base__/graphics/icons/"..resource..".png",
            "__arcanium__/graphics/icons/order-crystal.png",
            64, Arcanium.enums.subimage_position.TopLeft),
        subgroup = "summoning-ore",
        enabled = false,
        ingredients = {{
            type = "item",
            name = "basic-mana-crystal",
            amount = 1
        }},
        results = {{
            type = "item",
            name = resource,
            amount = 1
        }, {
            type = "item",
            name = "basic-mana-crystal",
            probability = settings.startup["basic-mana-crystal-use-chance"].value/100,
            amount = 1
        }}
    },
    {
        type = "recipe",
        name = "raw-summoning-"..resource,
        energy_required = 5,
        icons = Arcanium.graphics.icon_with_subimage(
            "__base__/graphics/icons/"..resource..".png",
            "__arcanium__/graphics/icons/blood-drop.png",
            64, Arcanium.enums.subimage_position.TopLeft),
        subgroup = "summoning-raw",
        category = "summoning-raw",
        enabled = true,
        allow_as_intermediate = false;
        ingredients = {},
        result = resource
    },
})
end

local effects = {}
local summoning_resources = {"iron-ore", "copper-ore", "coal", "stone", "wood"}

for _, resource in pairs(summoning_resources) do
    table.insert(effects,{
        type = "unlock-recipe",
        recipe = "basic-summoning-"..resource
    })
end

data:extend({{
    type = "technology",
    name = "experimentation-summoning",
    icon_size = 32,
    icon = "__arcanium__/graphics/icons/paper.png",
    effects = effects,
    unit = {
        count = 10,
        ingredients = {{"knowledge-book-summoning", 1}},
        time = 15
    },
    order = "d-a-a"
}})

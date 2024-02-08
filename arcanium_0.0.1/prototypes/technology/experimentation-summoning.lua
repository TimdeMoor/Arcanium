local effects = {}
local conjuring_resources = {"iron-ore", "copper-ore", "coal", "stone", "wood"}

for _, resource in pairs(conjuring_resources) do
    table.insert(effects,{
        type = "unlock-recipe",
        recipe = "basic-conjuring-"..resource
    })
end

data:extend({{
    type = "technology",
    name = "experimentation-conjuring",
    icon_size = 32,
    icon = "__arcanium__/graphics/icons/paper.png",
    effects = effects,
    unit = {
        count = 10,
        ingredients = {{"knowledge-book-conjuring", 1}},
        time = 15
    },
    order = "d-a-a"
}})

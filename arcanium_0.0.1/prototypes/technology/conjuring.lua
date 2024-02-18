local effects = {}
local conjuring_resources = {"iron-ore", "copper-ore", "coal", "stone"}

for _, resource in pairs(conjuring_resources) do
    table.insert(effects, {
        type = "unlock-recipe",
        recipe = "basic-conjuring-" .. resource
    })
end
table.insert(effects, {
    type = "unlock-recipe",
    recipe = "basic-conjuring-catalyst-sacrificial"
})

data:extend({{
    type = "technology",
    name = "basic-conjuring",
    icon_size = 512,
    icon = "__arcanium__/graphics/icons/technology/basic-conjuring-catalyst.png",
    effects = effects,
    unit = {
        count = 10,
        ingredients = {{"knowledge-book-conjuring", 1}},
        time = 1
    },
    prerequisites = {"basic-scroll"},
    order = "d-a-a"
}})

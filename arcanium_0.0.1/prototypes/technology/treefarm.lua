data:extend({{
    type = "technology",
    name = "tree-farm",
    icon_size = 512,
    icon = "__arcanium__/graphics/icons/technology/sprout.png",
    effects = {{
        type = "unlock-recipe",
        recipe = "basic-wood"
    }, {
        type = "unlock-recipe",
        recipe = "plank"
    }, {
        type = "unlock-recipe",
        recipe = "sapling"
    }},
    unit = {
        count = 1,
        ingredients = {{"knowledge-book-conjuring", 1}},
        time = 1
    },
    order = "d-a-a",
}})

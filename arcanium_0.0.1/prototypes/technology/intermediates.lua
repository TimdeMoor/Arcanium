data:extend({{
    type = "technology",
    name = "basic-scroll",
    icon_size = 512,
    icon = "__arcanium__/graphics/icons/technology/scroll-unfurled.png",
    effects = {{
        type = "unlock-recipe",
        recipe = "stick"
    }, {
        type = "unlock-recipe",
        recipe = "paper"
    }, {
        type = "unlock-recipe",
        recipe = "empty-scroll"
    }},
    unit = {
        count = 1,
        ingredients = {{"knowledge-book-conjuring", 1}},
        time = 1
    },
    prerequisites = {"tree-farm"},
    order = "d-a-a"
}})

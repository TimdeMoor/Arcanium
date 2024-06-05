data:extend({{
    type = "technology",
    name = "basic-conjuring-coal",
    icon_size = 512,
    icons = icon_with_subimage("__base__/graphics/icons/coal.png", "__arcanium__/graphics/icons/order-crystal.png", 64,
        enums.subimage_position.TopLeft),
    effects = {{
        type = "unlock-recipe",
        recipe = "basic-conjuring-coal"
    }},
    unit = {
        count = 10,
        ingredients = {{"knowledge-book-conjuring", 1}},
        time = 1
    },
    prerequisites = {"basic-scroll"},
    order = "d-a-a"
}})

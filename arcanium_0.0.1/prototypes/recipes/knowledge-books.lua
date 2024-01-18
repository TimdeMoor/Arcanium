data:extend({{
    type = "recipe",
    name = "knowledge-book-summoning",
    icon = "__arcanium__/graphics/icons/knowledge-book-red.png",
    icon_size = 32,
    energy_required = 1,
    enabled = true,
    subgroup = "research",
    ingredients = {{"iron-ore", 1}, {"copper-ore", 1}, {"basic-mana-crystal", 1}},
    results = {{
        type = "item",
        name = "basic-mana-crystal",
        probability = 0.75,
        amount = 1
    }, {
        type = "item",
        name = "knowledge-book-summoning",
        probability = 0.75,
        amount = 1
    }}
}})

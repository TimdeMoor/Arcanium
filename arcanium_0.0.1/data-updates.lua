-- disable vanilla recipes
--for recipe, recipes in pairs(data.raw.recipe) do
    -- data.raw.recipe[recipe].enabled = false
--end

-- disable vanilla tech
--for tech, technology in pairs(data.raw.technology) do
    -- data.raw.technology[tech].enabled = false
--end

-- disable vanilla items
--for item, items in pairs(data.raw.item) do
    -- data.raw.item[item].enabled = false
--end

-- add custom science to labs
Arcanium.add_tool_to_labs("knowledge-book-elemental")
Arcanium.add_tool_to_labs("knowledge-book-alchemy")
Arcanium.add_tool_to_labs("knowledge-book-enchantments")
Arcanium.add_tool_to_labs("knowledge-book-summoning")

table.insert(data.raw.character.character.crafting_categories, "summoning-raw")
data.raw.character.character.max_health = settings.startup["character-starting-health"].value
data.raw.character.character.healing_per_tick = settings.startup["character-healing-per-second"].value/60

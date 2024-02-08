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
for lab, labs in pairs(data.raw.lab) do
    if data.raw.lab[lab].inputs ~= nil then
        table.insert(data.raw.lab[lab].inputs, "knowledge-book-elemental")
        table.insert(data.raw.lab[lab].inputs, "knowledge-book-alchemy")
        table.insert(data.raw.lab[lab].inputs, "knowledge-book-enchantments")
        table.insert(data.raw.lab[lab].inputs, "knowledge-book-conjuring")
    end
end

table.insert(data.raw.character.character.crafting_categories, "conjuring-sacrificial")

data.raw.character.character.max_health = settings.startup["character-starting-health"].value
data.raw.character.character.healing_per_tick = settings.startup["character-healing-per-second"].value/60

-- add custom science to labs
for lab, labs in pairs(data.raw.lab) do
    if data.raw.lab[lab].inputs ~= nil then
        table.insert(data.raw.lab[lab].inputs, "knowledge-book-conjuring")
        table.insert(data.raw.lab[lab].inputs, "knowledge-book-elemental")
        table.insert(data.raw.lab[lab].inputs, "knowledge-book-alchemy")
        table.insert(data.raw.lab[lab].inputs, "knowledge-book-enchantments")
    end
end

table.insert(data.raw.character.character.crafting_categories, "conjuring-sacrificial")

data.raw.character.character.max_health = settings.startup["character-starting-health"].value
data.raw.character.character.healing_per_tick = settings.startup["character-healing-per-second"].value / 60

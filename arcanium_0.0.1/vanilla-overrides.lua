require("functions")

-- disable all vanilla tech, recipes and items
for k, v in pairs(data.raw["recipe"]) do
    disable_recipe(v)
end

for k, v in pairs(data.raw["technology"]) do
    disable_technology(v)
end

-- for item, items in pairs(data.raw.["item"]) do
-- disable_item(v)
-- end

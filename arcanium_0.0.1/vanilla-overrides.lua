require("functions")

--disable all vanilla tech and recipes
for k, v in pairs(data.raw["recipe"]) do
    disable_recipe(v)
end

for k, v in pairs(data.raw["technology"]) do
    disable_technology(v)
end


Arcanium = Arcanium or {}
Arcanium.debug = Arcanium.debug or {}
Arcanium.graphics = Arcanium.graphics or {}

require("functions")
require("enums")

local itemgroups = {"arcanium"}

local summoning_subgroups = {"summoning", "summoning-ore", "summoning-raw" ,"research"}

Arcanium.generate_itemgroups(itemgroups)
Arcanium.generate_itemsubgroups(itemgroups[1], summoning_subgroups)

-- Entities

-- Items
require("prototypes.items.mana-crystal")
require("prototypes.items.knowledge-books")

-- Recipes
require("prototypes.recipes.mana-crystal")
require("prototypes.recipes.summoning")
require("prototypes.recipes.knowledge-books")

-- Ores

-- ItemGroups
require("prototypes.item-groups")

-- Technologies
require("prototypes.technology.experimentation-summoning")
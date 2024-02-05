Arcanium = Arcanium or {}
Arcanium.debug = Arcanium.debug or {}
Arcanium.graphics = Arcanium.graphics or {}
Arcanium.util = Arcanium.util or {}

require("functions")
require("enums")

local itemgroups = {"arcanium"}

local summoning_subgroups = {"summoning", "conjuring-ore", "conjuring-sacrificial", "research"}

Arcanium.generate_itemgroups(itemgroups)
Arcanium.generate_itemsubgroups(itemgroups[1], summoning_subgroups)

-- Entities
require("prototypes.entities.aura-assembler")
require("prototypes.entities.unstable-assembler")

-- Items
require("prototypes.items.mana-crystal")
require("prototypes.items.knowledge-books")
require("prototypes.items.aura-assembler")
require("prototypes.items.unstable-assembler")
require("prototypes.items.armor")
--require("prototypes.items.enchants")
require("prototypes.items.plank")
require("prototypes.items.sapling")
require("prototypes.items.paper")
require("prototypes.items.stick")
require("prototypes.items.empty-scroll")

-- Recipes
require("prototypes.recipes.mana-crystal")
require("prototypes.recipes.conjuring")
require("prototypes.recipes.knowledge-books")
--require("prototypes.recipes.enchants")
require("prototypes.recipes.treefarm")

-- Ores

-- ItemGroups
require("prototypes.item-groups")

-- Technologies
require("prototypes.technology.experimentation-summoning")

-- Debug
require("prototypes.debug")

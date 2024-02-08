Arcanium = Arcanium or {}
debug = debug or {}
graphics = graphics or {}
util = util or {}

require("functions")
require("enums")

-- First, disable all vanilla related tech and recipes
require("vanilla-overrides")

-- Entities
require("prototypes.entities.aura-assembler")
require("prototypes.entities.unstable-assembler")
require("prototypes.entities.stone-workstation")

-- Items
require("prototypes.items.conjuring-catalysts")
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

-- Tiles
--require("prototypes.tiles")

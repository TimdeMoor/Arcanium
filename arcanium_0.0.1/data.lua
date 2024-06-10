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
require("prototypes.entities.tree-sapling")

-- Items
require("prototypes.items.conjuring-catalysts")
require("prototypes.items.knowledge-books")
require("prototypes.items.aura-assembler")
require("prototypes.items.unstable-assembler")
require("prototypes.items.armor")
require("prototypes.items.elementium-ore")
-- require("prototypes.items.enchants")
require("prototypes.items.plank")
require("prototypes.items.sapling")
require("prototypes.items.paper")
require("prototypes.items.stick")
require("prototypes.items.empty-scroll")

-- Recipes
require("prototypes.recipes.conjuring")
require("prototypes.recipes.knowledge-books")
-- require("prototypes.recipes.enchants")
require("prototypes.recipes.treefarm")

-- Ores

-- ItemGroups
require("prototypes.item-groups")

-- Technologies
require("prototypes.technology.treefarm")
require("prototypes.technology.intermediates")
require("prototypes.technology.conjuring.basic-coal")
require("prototypes.technology.conjuring.basic-stone")
require("prototypes.technology.conjuring.basic-copper-ore")
require("prototypes.technology.conjuring.basic-iron-ore")
require("prototypes.technology.conjuring.basic-elementium-ore")

-- Tiles
require("prototypes.tiles")

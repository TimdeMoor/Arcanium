data:extend({{
    type = "equipment-category",
    name = "tier1"
}, {
    type = "equipment-category",
    name = "tier2"
}, {
    type = "equipment-category",
    name = "tier3"
}, {
    type = "equipment-category",
    name = "tier4"
}, {
    type = "equipment-grid",
    name = "apprentice-grid",
    width = 2,
    height = 2,
    equipment_categories = {"tier1"}
}, {
    type = "equipment-grid",
    name = "wizard-grid",
    width = 3,
    height = 3,
    equipment_categories = {"tier1", "tier2"}
}, {
    type = "equipment-grid",
    name = "archmage-grid",
    width = 4,
    height = 4,
    equipment_categories = {"tier1", "tier2", "tier3"}
}, {
    type = "equipment-grid",
    name = "darklord-grid",
    width = 5,
    height = 5,
    equipment_categories = {"tier1", "tier2", "tier3", "tier4"}
}, {
    type = "armor",
    name = "apprentice-armor",
    icon = "__arcanium__/graphics/icons/order-crystal.png",
    icon_size = 64,
    subroup = "arcanium-combat",
    order = "a",
    stack_size = 1,
    infinite = true,
    equipment_grid = "apprentice-grid",
    inventory_size_bonus = 10,
    open_sound = {
        filename = "__base__/sound/armor-open.ogg",
        volume = 1
    },
    close_sound = {
        filename = "__base__/sound/armor-close.ogg",
        volume = 1
    }
}, {
    type = "armor",
    name = "wizard-armor",
    icon = "__arcanium__/graphics/icons/order-crystal.png",
    icon_size = 64,
    subroup = "arcanium-combat",
    order = "a",
    stack_size = 1,
    infinite = true,
    equipment_grid = "wizard-grid",
    inventory_size_bonus = 20,
    open_sound = {
        filename = "__base__/sound/armor-open.ogg",
        volume = 1
    },
    close_sound = {
        filename = "__base__/sound/armor-close.ogg",
        volume = 1
    }
}, {
    type = "armor",
    name = "archmage-armor",
    icon = "__arcanium__/graphics/icons/order-crystal.png",
    icon_size = 64,
    subroup = "arcanium-combat",
    order = "a",
    stack_size = 1,
    infinite = true,
    equipment_grid = "archmage-grid",
    inventory_size_bonus = 30,
    open_sound = {
        filename = "__base__/sound/armor-open.ogg",
        volume = 1
    },
    close_sound = {
        filename = "__base__/sound/armor-close.ogg",
        volume = 1
    }
}, {
    type = "armor",
    name = "darklord-armor",
    icon = "__arcanium__/graphics/icons/order-crystal.png",
    icon_size = 64,
    subroup = "arcanium-combat",
    order = "a",
    stack_size = 1,
    infinite = true,
    equipment_grid = "darklord-grid",
    inventory_size_bonus = 40,
    open_sound = {
        filename = "__base__/sound/armor-open.ogg",
        volume = 1
    },
    close_sound = {
        filename = "__base__/sound/armor-close.ogg",
        volume = 1
    }
}})

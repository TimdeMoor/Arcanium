data:extend({{
    type = "int-setting",
    name = "damage-on-sacrificial-amount",
    setting_type = "startup",
    minimum_value = 0,
    default_value = 50,
    maximum_value = 199
},{
    type = "int-setting",
    name = "basic-mana-crystal-use-chance",
    setting_type = "startup",
    minimum_value = 1,
    default_value = 66,
    maximum_value = 100,
},{
    type = "int-setting",
    name = "character-starting-health",
    setting_type = "startup",
    minimum_value = 200,
    default_value = 250,
    maximum_value = 1000,
},{
    type = "int-setting",
    name = "character-healing-per-second",
    setting_type = "startup",
    minimum_value = 1,
    default_value = 10,
    maximum_value = 50,
},{
    type = "bool-setting",
    name = "debug-mode",
    setting_type = "startup",
    default_value = false,
},{
    type = "int-setting",
    name = "aura-check-frequency-in-ticks",
    setting_type = "startup",
    minimum_value = 10,
    default_value = 60,
    maximum_value = 600,
},{
    type = "int-setting",
    name = "unstable-check-frequency-in-ticks",
    setting_type = "startup",
    minimum_value = 10,
    default_value = 60,
    maximum_value = 600,
},{
    type = "int-setting",
    name = "aura-crafting-threshold",
    setting_type = "startup",
    minimum_value = 0,
    maximum_value = 50,
    default_value = 15
},{
    type = "int-setting",
    name = "unstable-damage",
    setting_type = "startup",
    minimum_value = 1,
    maximum_value = 10,
    default_value = 1
}
})

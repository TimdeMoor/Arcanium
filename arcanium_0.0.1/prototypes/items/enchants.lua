local shield_values_per_tier = {25, 50, 100, 200}
local seconds_to_recharge = 5

for i = 1, 4 do
    data:extend({{
        type = "item",
        name = "enchant-of-protection-t" .. i,
        icon = "__arcanium__/graphics/test.png",
        icon_size = 32,
        placed_as_equipment_result = "enchant-of-protection-t" .. i,
        order = "a",
        stack_size = 5
    }, {
        type = "energy-shield-equipment",
        name = "enchant-of-protection-t" .. i,
        sprite = {
            filename = "__arcanium__/graphics/test.png",
            width = 64,
            height = 64,
            priority = "medium"
        },
        shape = {
            width = 1,
            height = 1,
            type = "full"
        },
        energy_source = {
            type = "electric",
            input_flow_limit = 0.2 * shield_values_per_tier[i] .. "kj",
            buffer_capacity = 0.2 * shield_values_per_tier[i] .. "kj",
            usage_priority = "primary-input"
        },
        max_shield_value = shield_values_per_tier[i],
        energy_per_shield = 0.2 * shield_values_per_tier[i] .. "kj",
        categories = {"tier1"}
    }, {
        type = "item",
        name = "mana-core-t" .. i,
        icon = "__arcanium__/graphics/test.png",
        icon_size = 32,
        placed_as_equipment_result = "mana-core-t" .. i,
        order = "a",
        stack_size = 5
    }, {
        type = "generator-equipment",
        name = "mana-core-t" .. i,
        sprite = {
            filename = "__arcanium__/graphics/icons/test.png",
            width = 32,
            height = 32,
            priority = "medium"
        },
        shape = {
            width = 1,
            height = 1,
            type = "full"
        },
        energy_source = {
            type = "electric",
            usage_priority = "primary-output"
        },
        power = "10000kW",
        categories = {"tier" .. i}
    }})
end


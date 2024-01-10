local shield_values_per_tier = {25, 50, 100, 200}
local seconds_to_recharge = 5

for i=1,4 do
    data:extend({
        {
            type = "item",
            name = "enchant-of-protection-t"..i,
            icon = "__arcanium__/graphics/test.png",
            icon_size = 32,
            order = "a",
            stack_size = 50,
        },
        {
        type = "energy-shield-equipment",
        name = "enchant-of-protection-t"..i,
        sprite = {
            filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
            width = 64,
            height = 64,
            priority = "medium",
          },
        shape = {
            width = 1,
            height = 1,
            type = "full"
        },
        energy_source = {
            type = "void",
            input_flow_limit = "1kJ",
            usage_priority = "primary-input",
        },
        max_shield_value = shield_values_per_tier[i],
        energy_per_shield = "1kJ",
        categories = {"tier1"},
    }})
end

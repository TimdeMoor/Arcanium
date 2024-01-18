Arcanium = Arcanium or {}
Arcanium.util = Arcanium.util or {}

script.on_event(defines.events.on_built_entity, function(event)
    track_aura_assemblers(event)
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    track_aura_assemblers(event)
end)

local function damage_player_character(player, damage)
    player.character.health = player.character.health - damage
    if player.character.health <= 0 then
        player.character.die()
    end
end

script.on_event(defines.events.on_player_crafted_item, function(event)
    local player = game.players[event.player_index]
    if player.character == nil then
        return
    end
    if event.recipe.category == "summoning-raw" then
        damage_player_character(player, settings.startup["damage-on-summon-amount"].value)
    end
end)


function onInit()
    script.on_event(defines.events.on_tick, onTick)
    global.aura_assemblers = global.aura_assemblers or {}
end
script.on_init(onInit)

function onTick()
    if (game.tick % settings.startup["aura-check-frequency-in-ticks"].value == 0) then
        processAuraAssemblers(global.aura_assemblers)
    end
end

function onLoad()
	script.on_event(defines.events.on_tick, onTick)
end
script.on_load(onLoad)

function track_aura_assemblers(event)
    local entity = event.created_entity
    local name = entity.name

    if (name == "aura-assembler") then
        table.insert(global.aura_assemblers, entity)
    end
end

function processAuraAssemblers(aura_assemblers)
    for _, assembler in pairs(aura_assemblers) do
        local pollution = Arcanium.util.get_pollution(assembler.position, assembler.surface)
        if pollution >= settings.startup["aura-crafting-threshold"].value then
            assembler.active = true
        else
            assembler.active = false
        end
    end
end


--TODO: Fix so it works on any surface
--- returns the pollution amount on a surface from a position vector
---@param position table
---@param surface_index number
function Arcanium.util.get_pollution(position, surface_index)
    return game.surfaces[1].get_pollution(position)
end
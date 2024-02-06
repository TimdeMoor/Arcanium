Arcanium = Arcanium or {}
Arcanium.util = Arcanium.util or {}


script.on_event(defines.events.on_built_entity, function(event)
    track_aura_assemblers(event)
    track_unstable_entities(event)
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    track_aura_assemblers(event)
    track_unstable_entities(event)
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
    if string.find(event.recipe.category, "sacrificial") then
        damage_player_character(player, settings.startup["damage-on-sacrificial-amount"].value)
    end
end)

function onInit()
    script.on_event(defines.events.on_tick, onTick)
    global.aura_assemblers = global.aura_assemblers or {}
    global.unstable_entities = global.unstable_entities or {}
end
script.on_init(onInit)

--TODO: rewrite to use nth tick
function onTick()
    if (game.tick % settings.startup["aura-check-frequency-in-ticks"].value == 0) then
        process_aura_assemblers(global.aura_assemblers)
    end

    if (game.tick % settings.startup["unstable-check-frequency-in-ticks"].value == 0) then
        if (global.unstable_entities ~= nil) then
            damage_unstable_entities(global.unstable_entities)
        end
    end
end

function onLoad()
	script.on_event(defines.events.on_tick, onTick)
end
script.on_load(onLoad)

function track_aura_assemblers(event)
    entity = event.created_entity
    if (string.find(entity.name, "aura")) then
        table.insert(global.aura_assemblers, entity)
    end
end

function process_aura_assemblers(aura_assemblers)
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

function track_unstable_entities(event)
    global.unstable_entities = global.unstable_entities or {}
    entity = event.created_entity
    if (string.find(entity.name, "unstable")) then
        table.insert(global.unstable_entities, entity)
    end
end

--- damages all the unstable entities on the map
function damage_unstable_entities(unstable_entities)
    for _, entity in pairs(unstable_entities) do
        entity.damage(settings.startup["unstable-damage"].value, 1)
    end
end
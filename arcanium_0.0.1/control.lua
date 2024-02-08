Arcanium = Arcanium or {}
require("functions")
require("starter-inventory")

script.on_event(defines.events.on_built_entity, function(event)
    track_aura_assemblers(event)
    track_unstable_entities(event)
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    track_aura_assemblers(event)
    track_unstable_entities(event)
end)

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
        local pollution = get_pollution(assembler.position, assembler.surface)
        if pollution >= settings.startup["aura-crafting-threshold"].value then
            assembler.active = true
        else
            assembler.active = false
        end
    end
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

--- sets the players starter inventory
function set_starter_inventory(event)
    local player = game.players[event.player_index]
    local inventory = player.get_main_inventory()

    if(not inventory)then return end

    inventory.clear()
    for _, v in pairs(starter_inventory) do
        player.get_main_inventory().insert(v)
    end
end
script.on_event(defines.events.on_cutscene_cancelled, set_starter_inventory)
script.on_event(defines.events.on_player_created, set_starter_inventory)

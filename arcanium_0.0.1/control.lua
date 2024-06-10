Arcanium = Arcanium or {}
require("functions")
require("starter-inventory")

script.on_event(defines.events.on_built_entity, function(event)
    track_aura_assemblers(event)
    track_unstable_entities(event)
    plant_sapling(event)
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    track_aura_assemblers(event)
    track_unstable_entities(event)
    plant_sapling(event)
end)

script.on_event(defines.events.on_player_mined_entity, function(event)
    entity = event.entity
    if (string.find(entity.name, "tree")) then
        local ratio = entity.get_health_ratio()
        if (ratio ~= 1) then
            event.buffer.clear()
            game.print("Looks like this tree wasn't mature yet...")
        end
    end
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

-- TODO: rewrite to use nth tick
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

    if (not inventory) then
        return
    end

    inventory.clear()
    for _, v in pairs(starter_inventory) do
        player.get_main_inventory().insert(v)
    end
end

function plant_sapling(event)
    local entity = event.created_entity
    if not (entity.name == "sapling") then
        return
    end

    local treenames = {"tree-01", "tree-02", "tree-03", "tree-04", "tree-05", "tree-07", "tree-08"}
    local treename = treenames[math.random(#treenames)]
    local treeData = {
        name = treename,
        position = entity.position
    }
    local surface = entity.surface

    entity.die()
    local created_entity
    if surface.can_place_entity(treeData) then
        created_entity = surface.create_entity(treeData)
    end
    created_entity.health = 0
end

script.on_event(defines.events.on_player_created, set_starter_inventory)
script.on_event(defines.events.on_cutscene_cancelled, set_starter_inventory)
script.on_event(defines.events.on_cutscene_finished, set_starter_inventory)

script.on_event(defines.events.on_chunk_generated, function(ev)
    local starter_island_size = 8
    local surface = ev.surface
    if (not (surface.name == "nauvis" or surface.name:sub(1, 11) ~= "spaceblock_")) then
        return
    end
    local area = ev.area
    local tv = {}
    local t = {}
    local tx
    local base_tile = 1
    for x = area.left_top.x, area.right_bottom.x do
        for y = area.left_top.y, area.right_bottom.y do

            if ((x >= starter_island_size * -1 and x < starter_island_size) and
                (y >= starter_island_size * -1 and y < starter_island_size)) then
                tx = tx or {}
                table.insert(tx, {
                    name = "landfill",
                    position = {x, y}
                })
            else
                local tile = "void" -- "out-of-map"
                local rg = false
                if (rg) then
                    local zx, zy = x, y
                    tv[zx] = tv[zx] or {}
                    if (not tv[zx][zy]) then
                        table.insert(t, {
                            name = tile,
                            position = {zx, zy}
                        })
                    end
                    for i = 1, math.random(4, 12) do
                        local xy = math.random(1, 4) - 2
                        zx = zx + (xy == -1 and -1 or (xy == 2 and 1 or 0))
                        zy = zy + (xy == 0 and -1 or (xy == 1 and 1 or 0))
                        tv[zx] = tv[zx] or {}
                        if (math.abs(zx) > starter_island_size and math.abs(zy) > starter_island_size and not tv[zx][zy]) then
                            tv[zx][zy] = true
                            table.insert(t, {
                                name = tile,
                                position = {zx, zy}
                            })
                        end
                    end
                elseif (not tv[x] or not tv[x][y]) then
                    table.insert(t, {
                        name = tile,
                        position = {x, y}
                    })
                    tv[x] = tv[x] or {}
                    tv[x][y] = true
                end
            end
        end
    end

    surface.destroy_decoratives {
        area = area
    }
    if (tx) then
        surface.set_tiles(tx)
    end
    surface.set_tiles(t)

    for k, v in pairs(surface.find_entities_filtered {
        type = "character",
        invert = true,
        area = area
    }) do
        v.destroy {
            raise_destroy = true
        }
    end

end)

--- gets an gameitem by name
---@param itemname string
function get_item(itemname)
    return data.raw["item"][itemname]
end

--- adds item to a subgroup
---@param itemname string
---@param subgroupname string
function additem_to_subgroup(itemname, subgroupname)
    local item = get_item(itemname)
    item.subgroup = subgroupname
end

--- Damages a playercharacter for the specified amount.
---@param player table
---@param damage number
function damage_player_character(player, damage)
    player.character.health = player.character.health - damage
    if player.character.health <= 0 then
        player.character.die()
    end
end

--- Generates an icon with two layers (subimage gets displayed on top of the icon, subimage positions are specified in arcanium.enums)
---@param iconpath string
---@param subimagepath string
---@param icon_size number
---@param subimage_position_index number
function icon_with_subimage(iconpath, subimagepath, icon_size, subimage_position_index)
    local offset = icon_size / 4
    local shift_positions = {}
    shift_positions[1] = {-offset, -offset}
    shift_positions[2] = {0, -offset}
    shift_positions[3] = {offset, -offset}
    shift_positions[4] = {-offset, 0}
    shift_positions[5] = {0, 0}
    shift_positions[6] = {offset, 0}
    shift_positions[7] = {-offset, offset}
    shift_positions[8] = {0, offset}
    shift_positions[9] = {offset, offset}

    local stacked_icons = {{
        icon = iconpath,
        icon_size = icon_size,
        scale = 1,
        shift = {0, 0}
    }, {
        icon = subimagepath,
        icon_size = icon_size,
        scale = 0.66,
        shift = shift_positions[subimage_position_index]
    }}
    return stacked_icons
end

-- TODO: Fix so it works on any surface
--- returns the pollution amount on a surface from a position vector
---@param position table
---@param surface_index number
function get_pollution(position, surface_index)
    return game.surfaces[1].get_pollution(position)
end

--- damages the given player for an amount
---@param player any
---@param damage any
function damage_player_character(player, damage)
    player.character.health = player.character.health - damage
    if player.character.health <= 0 then
        player.character.die()
    end
end

--- dumps table data into ingame console
---@param dump any
function dump(dump)
    game.print(serpent.block(dump))
end

---returns a table with data for a box of size WxH
---@param width number
---@param height number
function box(width, height)
    local halfW = width / 2
    local halfH = height / 2
    return {{-halfW, -halfH}, {halfW, halfH}}
end

---disables the given recipe
---@param recipe string 
function disable_recipe(recipe)
    recipe.enabled = false
    if recipe.normal then
        recipe.normal.enabled = false
    end
    if recipe.expensive then
        recipe.expensive.enabled = false
    end
end

---disables the given technology
---@param technology string
function disable_technology(technology)
    technology.hidden = true
end

---disables the given item
---@param item string
function disable_item(item)
    item.enabled = false
end

function table_length(table)
    local counter = 0
    for k, v in pairs(table) do
        counter = counter + 1
    end
    return counter
end

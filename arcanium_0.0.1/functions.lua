--- Automatically generates itemgroups for the given list of names
---@param itemgroup_names table
function Arcanium.generate_itemgroups(itemgroup_names)
    local tempgroups = {}
    local i = 1
    for _, itemgroupname in pairs(itemgroup_names) do
        local tempgroup = {
            type = "item-group",
            name = itemgroupname,
            order = "a",
            inventory_order = "a-a",
            icon = "__arcanium__/graphics/icons/transmutationCircle.png",
            icon_size = 500
        }
        tempgroups[i] = tempgroup
        i = i + 1
    end
    data:extend(tempgroups)
end

--- Automatically generates all the subitemgroups and connects them to an itemgroup
---@param itemgroup_name string
---@param itemsubgroup_names table
function Arcanium.generate_itemsubgroups(itemgroup_name, itemsubgroup_names)
    local tempsubgroups = {}
    local i = 1
    for _, subgroupname in pairs(itemsubgroup_names) do
        local tempsubgroup = {
            type = "item-subgroup",
            name = subgroupname,
            group = itemgroup_name,
            order = "a-a"
        }
        tempsubgroups[i] = tempsubgroup
        i = i + 1
    end
    data:extend(tempsubgroups)
end

--- gets an gameitem by name
---@param itemname string
function Arcanium.get_item(itemname)
    return data.raw["item"][itemname]
end

--- func desc
---@param itemname string
---@param subgroupname string
function Arcanium.additem_to_subgroup(itemname, subgroupname)
    local item = Arcanium.get_item(itemname)
    item.subgroup = subgroupname
end

--- Damages a playercharacter for the specified amount.
---@param player table
---@param damage number
function Arcanium.damage_player_character(player, damage)
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
function Arcanium.graphics.icon_with_subimage(iconpath, subimagepath, icon_size, subimage_position_index)
    local offset = icon_size/4
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
        shift = {0,0}
    },
    {
        icon = subimagepath,
        icon_size = icon_size,
        scale = 0.66,
        shift = shift_positions[subimage_position_index]
    }}
    return stacked_icons
end

--- dumps table data into logfile
---@param dump any
function Arcanium.debug.dump(dump)
    log(serpent.block(dump))
end

---returns a table with data for a box of size WxH
---@param width number
---@param height number
function Arcanium.util.box(width, height)
    local halfW = width/2
    local halfH = height/2
    return {{-halfW, -halfH},{halfW, halfH}}
end
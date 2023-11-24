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

script.on_event(defines.events.on_tick, function(event)
    
end)
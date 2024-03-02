next_to_castle = Ladx_location.new()

if options.tradequest then
    ukuku_prairie:connect_one_way(next_to_castle, function()
        return has("trade_bananas")
    end) -- can only give bananas from ukuku prairie side
else
    next_to_castle:connect_two_ways(ukuku_prairie)
end

next_to_castle:connect_one_way(ukuku_prairie, function()
    return has("flippers")
end)

castle_secret_entrance_left = Ladx_location.new()
castle_secret_entrance_right = Ladx_location.new()
castle_secret_entrance_right:connect_two_ways(castle_secret_entrance_left, function()
    return has("feather")
end)

castle_courtyard = Ladx_location.new()
castle_frontdoor = Ladx_location.new()
castle_frontdoor:connect_one_way(castle_courtyard, function()
    return bush()
end)

castle_inside = Ladx_location.new()
-- button implementation is not great because it asks to go somewhere else
castle_frontdoor:connect_two_ways(ukuku_prairie, function()
    return can_reach(castle_inside)
end)
castle_inside:connect_one_way(ukuku_prairie, function()
    return can_reach(castle_frontdoor)
end)
castle_inside:connect_one_way(castle_frontdoor, function()
    return can_reach(ukuku_prairie)
end)

next_to_castle:connect_two_ways_entrance("castle_secret_entrance", castle_secret_entrance_right, function()
    return orA(
        has("bomb"),
        has("boomerang"),
        has("powder"),
        has("rod"),
        has("sword")
    )
end)

castle_courtyard:connect_two_ways_entrance("castle_secret_exit", castle_secret_entrance_left)

bay_water:connect_one_way("0x078", function()
    return has("flippers")
end)
castle_top_outside = Ladx_location.new()
castle_top_inside = Ladx_location.new()
castle_frontdoor:connect_two_ways_entrance("castle_main_entrance", castle_inside, function()
    return bush()
end)
castle_top_outside:connect_two_ways_entrance("castle_upper_left", castle_inside)
castle_top_outside:connect_two_ways_entrance("castle_upper_right", castle_top_inside)
-- GoldLeaf locations
castle_courtyard:connect_one_way("0x05A", function()
    return orA(
        has("sword"),
        has("bow"),
        has("rod")
    )
end) -- Mad bomber, enemy hiding in the 6 holes

crow_gold_leaf = Ladx_location.new("0x058")
crow_gold_leaf:connect_two_ways(castle_courtyard, function()
    return andA(
        has("bracelet1"),
        r.attack_hookshot_no_bomb
    )
end) -- Bird on tree, can't kill with bomb cause it flies off. Immune to magic_powder

castle_inside:connect_one_way("0x2D2", function()
    return attack_hookshot_powder()
end) -- Inside the castle, kill enemies

castle_inside:connect_one_way("0x2C5", function()
    return andA(
        has("bomb"),
        attack_hookshot_powder()
    )
end) -- Inside the castle, bomb wall to reveal enemy

kanalet_chain_trooper = Ladx_location.new("0x2C6")
castle_top_inside:connect_one_way(kanalet_chain_trooper, function()
    return andA(
        has("bracelet1"),
        attack_hookshot()
    )
end) -- Inside the castle, spinning spikeball enemy

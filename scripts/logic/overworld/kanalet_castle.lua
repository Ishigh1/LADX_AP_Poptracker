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

bay_water:connect_one_way(Ladx_location.new("0x078"), function()
    return has("flippers")
end)

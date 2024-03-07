graveyard = Ladx_location.new()
graveyard:connect_two_ways(forest, function()
    return any(
            has("feather"),
            has("rooster"),
            has("bracelet1")
    )
end)

d0 = Ladx_location.new()
d9 = d0
graveyard:connect_two_ways_entrance_door_stuck("d0", d0, function()
    return has("bracelet1")
end)

armos_maze = Ladx_location.new()
armos_maze:connect_two_ways(animal_village, function()
    return has("bracelet1")
end)
armos_temple = Ladx_location.new()
function can_beat_armos_knight()
    return orA(
        has("bow"),
        has("rod"),
        has("sword1")
    )
end

armos_temple:connect_one_way("0x27F", can_beat_armos_knight)
armos_maze:connect_two_ways_entrance("armos_maze_cave", Ladx_location.new("0x2FC"))
armos_maze:connect_two_ways_entrance("armos_temple", armos_temple)

armos_fairy_entrance = Ladx_location.new()
armos_fairy_entrance:connect_two_ways(bay_water, function()
    return has("flippers")
end)
armos_fairy_entrance:connect_two_ways(animal_village, function()
    return has("bracelet1")
end)
armos_fairy_entrance:connect_two_ways_entrance_door_stuck("armos_fairy", nil, function()
    return has("bomb")
end)

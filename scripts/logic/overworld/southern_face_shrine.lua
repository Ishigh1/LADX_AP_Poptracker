armos_maze = Ladx_location.new()
armos_maze:connect_two_ways(animal_village, function()
    return has("bracelet1")
end)
armos_temple = Ladx_location.new()
function can_beat_armos_knight()
    return any(
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

d6_connector_left = Ladx_location.new()
d6_connector_right = Ladx_location.new()
d6_connector_left:connect_two_ways(d6_connector_right, function()
    return any(
        has("rooster"),
        all(
            has("hookshot"),
            any(
                has("flippers"),
                all(
                    has("feather"),
                    has("boots")
                )
            )
        )
    )
end)
d6_entrance = Ladx_location.new()
d6_entrance:connect_one_way(bay_water)
d6_armos_island = Ladx_location.new()
d6_armos_island:connect_two_ways(bay_water, function()
    return has("flippers")
end)
d6_armos_island:connect_two_ways_entrance("d6_connector_entrance", d6_connector_right)
d6_entrance:connect_two_ways_entrance("d6_connector_exit", d6_connector_left)
d6 = Ladx_location.new()
d6_entrance:connect_two_ways_entrance_door_stuck("d6", function()
    return has("face_key")
end)

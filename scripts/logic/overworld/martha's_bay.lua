-- ghost_hut_outside

sword_beach_to_ghost_hut = Ladx_location.new()
sword_beach_to_ghost_hut:connect_one_way(Ladx_location.new("0x0E5"), function()
    return has("bracelet1")
end)
sword_beach:connect_two_ways_entrance("sword_beach_to_ghost_hut", sword_beach_to_ghost_hut, function()
    return has("bracelet1")
end)

ghost_hut_outside = Ladx_location.new()
ghost_hut_outside:connect_two_ways(sword_beach_to_ghost_hut, function()
    return has("bracelet1")
end)

ghost_hut_inside = Ladx_location.new()
ghost_hut_inside:connect_two_ways(Ladx_location.new("0x1E3"), function()
    return has("bracelet1")
end)

ghost_hut_outside:connect_two_ways_entrance("ghost_house", ghost_hut_inside)

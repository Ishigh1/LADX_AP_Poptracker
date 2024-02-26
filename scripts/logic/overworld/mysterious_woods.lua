forest = Ladx_location.new()
mabe_village:connect_two_ways(forest, function()
    return bush()
end)

forest:connect_one_way(Ladx_location.new("0x071"), function()
    return has("bracelet1")
end)

forest_heartpiece = Ladx_location.new("0x044")
forest:connect_one_way(forest_heartpiece, function()
    return orA(
        has("boomerang"),
        has("feather"),
        has("hookshot"),
        has("rooster")
    )
end)

forest_madbatter = Ladx_location.new()
forest_madbatter:connect_one_way(Ladx_location.new("0x1E1"), function()
    return has("powder")
end)
forest:connect_two_ways_entrance_door_stuck("forest_madbatter", forest_madbatter, function()
    return has("bracelet1")
end)

forest_cave = Ladx_location.new()
forest_cave:connect_one_way(Ladx_location.new("0x2BD"), function()
    return has("sword")
end)
log_cave_heartpiece = Ladx_location.new("0x2AB")
forest_cave:connect_one_way(log_cave_heartpiece, function()
    return has("bracelet1")
end)
forest_toadstool = Ladx_location.new("0x050")
forest:connect_two_ways_entrance("toadstool_entrance", forest_cave)
forest_toadstool:connect_two_ways_entrance("toadstool_exit", forest_cave)

hookshot_cave = Ladx_location.new()
hookshot_cave_chest = Ladx_location.new("0x2B3")
hookshot_cave:connect_two_ways(hookshot_cave_chest, function()
    return orA(
            has("hookshot"),
            has("rooster")
    )
end)
forest:connect_two_ways_entrance("hookshot_cave", hookshot_cave, function()
    return has("bracelet1")
end)

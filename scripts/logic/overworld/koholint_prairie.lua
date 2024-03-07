witch_hut = Ladx_location.new()
witch_hut:connect_one_way("0x2A2", function()
    return has("toadstool")
end)
witch_hut:connect_two_ways_entrance("witch", witch_hut_inside)

crazy_tracy_hut = Ladx_location.new()
crazy_tracy_hut:connect_two_ways(forest, function()
    return has("bracelet1")
end)

crazy_tracy_hut_inside = Ladx_location.new()
crazy_tracy_hut_inside:connect_one_way("0x2F1", function()
    return can_spend(50)
end)
crazy_tracy_hut:connect_two_ways_entrance("crazy_tracy", crazy_tracy_hut_inside)

start_house:connect_one_way(crazy_tracy_hut, function()
    return has("song2")
end)

ghost_grave = Ladx_location.new()
forest:connect_two_ways(ghost_grave, function()
    return has("bracelet1")
end)

ghost_grave:connect_one_way("0x074", function()
    return all(
        bush(),
        has("shovel")
    )
end)

graveyard_cave_left = Ladx_location.new()
graveyard_cave_right = Ladx_location.new()

graveyard_cave_right:connect_two_ways(graveyard_cave_left, function()
    return any(
        has("feather"),
        has("rooster")
    )
end)

graveyard_heartpiece = Ladx_location.new("0x2DF")
graveyard_heartpiece:connect_two_ways(graveyard_cave_right, function()
    return any(
        all(
            has("bomb"),
            any(
                has("hookshot"),
                has("boots")
            ),
            has("feather")
        ),
        has("rooster")
    )
end)
ghost_grave:connect_two_ways_entrance("graveyard_cave_left", graveyard_cave_left, function()
    return has("bracelet1")
end)
graveyard:connect_two_ways_entrance("graveyard_cave_right", graveyard_cave_right)

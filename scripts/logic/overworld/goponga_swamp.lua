swamp = Ladx_location.new()
swamp:connect_two_ways(forest, function()
    return andA(
        orA(
            has("powder"),
            has("feather"),
            has("rooster")
        ),
        bush()
    )
end)
swamp:connect_one_way(forest, function()
    return bush()
end)
swamp:connect_two_ways(forest_toadstool, function()
    return orA(
        has("feather"),
        has("rooster")
    )
end)

swamp_chest = Ladx_location.new("0x034")
swamp_chest:connect_two_ways(Ladx_location.new("0x034"), function()
    return orA(
        has("bowwow"),
        has("hookshot"),
        has("rod"),
        has("boomerang")
    )
end)
d2 = Ladx_location.new("d2")
swamp.connect_two_ways("d2", d2, function()
    return orA(
        has("bowwow"),
        has("hookshot"),
        has("rod"),
        has("boomerang")
    )
end)

forest_rear_chest = Ladx_location.new("0x041")
swamp:connect_two_ways(forest_rear_chest, function()
    return bush()
end)
swamp.connect_two_ways("writes_phone")

writes_hut_outside = Ladx_location.new()
writes_hut_outside:connect_two_ways(swamp, function()
    return orA(
        has("feather"),
        has("rooster")
    )
end)

writes_house = Ladx_location.new()
writes_house:connect_one_way(Ladx_location.new("0x2A8-Trade"), function()
    return has("trade_letter")
end)
writes_hut_outside:connect_two_ways_entrance("writes_house", writes_house)

writes_cave = Ladx_location.new()
writes_cave_left_chest = Ladx_location.new("0x2AE")
writes_cave:connect_two_ways(writes_cave_left_chest, function()
    return orA(
        has("feather"),
        has("rooster"),
        has("hookshot")
    )
end)
writes_cave:connect_one_way(Ladx_location.new("0x2AF"), function()
    return has("bracelet1")
end)
writes_hut_outside:connect_two_ways_entrance("writes_cave_left", writes_cave)
writes_hut_outside:connect_two_ways_entrance("writes_cave_right", writes_cave)

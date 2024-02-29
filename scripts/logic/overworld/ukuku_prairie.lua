ukuku_prairie = Ladx_location.new()
ukuku_prairie:connect_two_ways(mabe_village, function()
    return has("bracelet1")
end)
ukuku_prairie:connect_two_ways(graveyard, function()
    return has("bracelet1")
end)

ukuku_prairie:connect_one_way(Ladx_location.new("0x07B-Trade"), function()
    return has("trade_bananas")
end)
ukuku_prairie:connect_one_way(Ladx_location.new("0x087-Trade"), function()
    return has("trade_stick")
end)

ukuku_prairie:connect_two_ways_entrance("prairie_left_phone")
ukuku_prairie:connect_two_ways_entrance("prairie_right_phone")
ukuku_prairie:connect_two_ways_entrance("prairie_left_cave1", Ladx_location.new("0x2CD"))
ukuku_prairie:connect_two_ways_entrance_door_stuck("prairie_left_fairy", nil, function()
    return has("bomb")
end)

prairie_left_cave2 = Ladx_location.new()
prairie_left_cave2:connect_one_way(Ladx_location.new("0x2F4"), function()
    return has("boots")
end)
prairie_left_cave2:connect_one_way(Ladx_location.new("0x2E5"), function()
    return andA(
        has("bomb"),
        has("boots")
    )
end)
ukuku_prairie:connect_two_ways_entrance_door_stuck("prairie_left_cave2", prairie_left_cave2, function()
    return has("bomb")
end)

mamu = Ladx_location.new()
mamu:connect_one_way(Ladx_location.new("0x2FB"), function()
    return andA(
        has("ocarina"),
        can_spend(1480)
    )
end)
ukuku_prairie:connect_two_ways_entrance("mamu", mamu, function()
    return andA(
        orA(
            andA(
                has("feather"),
                has("boots")
            ),
            has("rooster")
        ),
        orA(
            has("hookshot"),
            has("rooster")
        ),
        has("bracelet1")
    )
end)

dungeon3_entrance = Ladx_location.new()
dungeon3_entrance:connect_two_ways(ukuku_prairie, function()
    return orA(
        has("feather"),
        has("rooster"),
        has("flippers")
    )
end)
d3 = Ladx_location.new()
dungeon3_entrance:connect_two_ways_entrance_door_stuck("d3", d3, function()
    return has("slime_key")
end)
dungeon3_entrance:connect_one_way(Ladx_location.new("0x0A5"), function()
    return has("shovel")
end)
dungeon3_entrance:connect_one_way(ukuku_prairie)

prairie_island_seashell = Ladx_location.new()
prairie_island_seashell:connect_one_way(Ladx_location.new("0x0A6"), function()
    return andA(
        has("flippers"),
        has("bush")
    )
end)
ukuku_prairie:connect_one_way(Ladx_location.new("0x08B"), function()
    return has("bush")
end)
ukuku_prairie:connect_one_way(Ladx_location.new("0x0A4"), function()
    return has("boots")
end)
ukuku_prairie:connect_two_ways_entrance("castle_jump_cave", Ladx_location.new("0x1FD"), function()
    return orA(
        andA(
            has("feather"),
            has("boots")
        ),
        has("rooster")
    )
end)

prairie_under_rock_chest:connect_one_way(Ladx_location.new("0x0B9"), function()
    return has("bracelet1")
end)

prairie_plateau = Ladx_location.new() -- prairie plateau at the owl statue
prairie_plateau:connect_one_way(Ladx_location.new("0x0A8"), function()
    return has("shovel")
end) -- at the owl statue

prairie_cave = Ladx_location.new()
prairie_cave_secret_exit = Ladx_location.new()
prairie_cave_secret_exit:connect_two_ways(prairie_cave, function()
    return andA(
        has("bomb"),
        orA(
            has("feather"),
            has("rooster")
        )
    )
end)
ukuku_prairie:connect_two_ways_entrance("prairie_right_cave_top", prairie_cave)
left_bay_area:connect_two_ways_entrance("prairie_right_cave_bottom", prairie_cave)
prairie_plateau:connect_two_ways_entrance("prairie_right_cave_high", prairie_cave_secret_exit)

seashell_mansion = Ladx_location.new()
seashell_mansion:add_one_way(Ladx_location.new("0x2E9"), function()
    return has("seashell", 20)
end)
ukuku_prairie:connect_two_ways_entrance("seashell_mansion", seashell_mansion)

richard_house = Ladx_location.new()
richard_cave = Ladx_location.new()
richard_cave:connect_one_way(richard_house, function()
    return has("gold_leaf", 5)
end)
richard_cave:connect_one_way(richard_house) -- can exit richard's cave even without leaves
richard_cave_chest = Ladx_location.new("0x2C8")
richard_cave_chest:add_two_ways(richard_cave, function()
    return orA(
        has("feather"),
        has("hookshot"),
        has("rooster")
    )
end)
richard_maze = Ladx_location.new()
ukuku_prairie:connect_two_ways_entrance("richard_house", richard_house)
richard_maze:connect_two_ways_entrance("richard_maze", richard_cave)
richard_maze:add_one_way(Ladx_location.new("0x0C6"), function()
    return andA(
        bush(),
        shovel()
    )
end)

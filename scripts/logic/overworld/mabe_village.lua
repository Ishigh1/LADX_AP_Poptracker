mabe_village = Ladx_location.new()
mabe_village:connect_one_way("0x2A4", function()
    return bush()
end)
mabe_village:connect_one_way("0x2B1", function()
    return andA(
        bush(),
        can_spend(20)
    )
end)
mabe_village:connect_one_way("0x0A3", function()
    return bush()
end)
mabe_village:connect_one_way("0x0D2", function()
    return has("boots")
end)
marins_song = Ladx_location.new("Marin's Song")
mabe_village:connect_one_way(marins_song, function()
    return has("ocarina")
end)
rooster_cave = Ladx_location.new()
rooster_cave:connect_one_way("0x1E4", function()
    return andA(
        has("ocarina"),
        has("song3")
    )
end)

papahl_house = Ladx_location.new()
papahl_house:connect_one_way(Ladx_location.new("0x2A6-Trade"), function()
    return has("trade_yoshi_doll")
end)

trendy_shop = Ladx_location.new()
trendy_shop:connect_one_way(Ladx_location.new("0x2A0-Trade")) -- No logic, wtf

mabe_village:connect_two_ways_entrance("papahl_house_left", papahl_house)
mabe_village:connect_two_ways_entrance("papahl_house_right", papahl_house)
mabe_village:connect_two_ways_entrance_door_stuck("rooster_grave", rooster_cave, function()
    return has("bracelet2")
end)
mabe_village:connect_two_ways_entrance("madambowwow")
mabe_village:connect_two_ways_entrance("ulrira")
mabe_village:connect_two_ways_entrance("mabe-phone")
mabe_village:connect_two_ways_entrance("library")
mabe_village:connect_two_ways_entrance("trendy_shop", trendy_shop, function()
    return bush()
end)
d1 = Ladx_location.new()
mabe_village:connect_two_ways_entrance_door_stuck("d1", d1, function()
    return has("tail_key")
end)

start_house = Ladx_location.new("0x2A3")
start_house:connect_two_ways_entrance("start_house", mabe_village)
entry_point:connect_one_way(start_house)

shop = Ladx_location.new()
shop:connect_one_way("0x2A1", function()
    return orA(
        can_spend(500),
        has("sword")
    )
end)
shop:connect_one_way("0x2A7", function()
    return orA(
        can_spend(1480),
        has("sword")
    )
end)
mabe_village:connect_two_ways_entrance("shop", shop, function()
    return bush()
end)

dream_hut = Ladx_location.new()
dream_hut_right = Ladx_location.new("0x2BF")
dream_hut_right:connect_two_ways(dream_hut, function()
    return orA(
        has("boomerang"),
        has("hookshot"),
        has("feather")
    )
end)
dream_hut_left = Ladx_location.new("0x2BE")
dream_hut_left:connect_two_ways(dream_hut_right, function()
    return has("boots")
end)
mabe_village:connect_two_ways_entrance("dream_hut", dream_hut, function()
    return has("power_bracelet")
end)

kennel = Ladx_location.new()
kennel:connect_one_way("0x2B2", function()
    return has("shovel")
end)
kennel:connect_one_way(Ladx_location.new("0x2B2-Trade"), function()
    return has("ribbon")
end)
mabe_village:connect_two_ways_entrance("kennel", kennel)

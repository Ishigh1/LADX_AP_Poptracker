graveyard:connect_two_ways_entrance("photo_house")

moblin_cave = Ladx_location.new()
function can_beat_moblin_king()
    return has("sword1")
end

moblin_cave:connect_one_way(Ladx_location.new("0x2E2"), function()
    return andA(
        attack_hookshot_powder(),
        can_beat_moblin_king()
    )
end)

graveyard:connect_two_ways_entrance("moblin_cave", moblin_cave)

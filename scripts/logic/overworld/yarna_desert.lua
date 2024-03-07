desert = Ladx_location.new()
desert:connect_two_ways(animal_village, function()
    return bush()
end)
desert_lanmola = Ladx_location.new("0x0CE")
desert_lanmola:connect_two_ways(desert, function()
    return any(
        has("bow"),
        has("sword1"),
        has("hookshot"),
        has("rod"),
        has("boomerang")
    )
end)

desert_cave = Ladx_location.new()
desert:connect_two_ways_entrance("desert_cave", desert_cave)
desert:connect_one_way(desert_cave)

desert_cave:connect_one_way("0x1E8", function()
    return has("bomb")
end)
desert:connect_one_way("0x0FF", function()
    return has("bracelet1")
end)

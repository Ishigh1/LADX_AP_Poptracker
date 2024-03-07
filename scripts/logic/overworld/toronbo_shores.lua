sword_beach = Ladx_location.new("0x0F2")
sword_beach:connect_two_ways(mabe_village, function()
    return any(
        bush(),
        has("shield"),
        attack_hookshot()
    )
end)

banana_seller = Ladx_location.new()
banana_seller:connect_one_way(Ladx_location.new("0x2FE-Trade"), function()
    return has("trade_dog_food")
end)

sword_beach:connect_two_ways_entrance("banana_seller", banana_seller, function()
    return bush()
end)

boomerang_cave = Ladx_location.new()

boomerang_cave:connect_one_way(Ladx_location.new("0x1F5-Trade"), function()
    return any(
        has("boomerang"),
        has("hookshot"),
        has("rod"),
        has("boots"),
        has("feather"),
        has("shovel")
    )
end)

sword_beach:connect_two_ways_entrance_door_stuck("boomerang_cave", boomerang_cave, function()
    return has("bomb")
end)

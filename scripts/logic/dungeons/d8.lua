local entrance = Ladx_location.new()
d8:connect_one_way(entrance)

local entrance_up = Ladx_location.new()
entrance_up:connect_two_ways(entrance, function()
    return has("feather")
end)

local entrance_left = Ladx_location.new()
entrance_left:connect_two_ways(entrance, function()
    return attack_hookshot_no_bomb()
end)

-- left side
entrance_left:connect_one_way("0x24D")
entrance_left:connect_one_way("0x25C", function()
    return attack_hookshot()
end)
local vire_drop_key = Ladx_location.new("0x24C")
vire_drop_key:connect_two_ways(entrance_left, function()
    return attack_hookshot_no_bomb()
end)
local sparks_chest = Ladx_location.new("0x255")
sparks_chest:connect_two_ways(entrance_left, function()
    return orA(
        has("hookshot"),
        has("feather")
    )
end)
entrance_left:connect_one_way("0x246", function()
    return has("rod")
end)

-- right side
local slime_chest = Ladx_location.new("0x259")
slime_chest:connect_two_ways(entrance, function()
    return orA(
        has("feather"),
        andA(
            attack_hookshot(),
            has("bracelet1")
        )
    )
end)
local bottom_right = Ladx_location.new("0x25A")
bottom_right:connect_two_ways(entrance, function()
    return andA(
        has("feather"),
        orA(
            has("bomb"),
            andA(
                attack_hookshot_powder(),
                has("bracelet1")
            )
        )
    )
end)
local bottomright_pot_chest = Ladx_location.new("0x25F")
bottomright_pot_chest:connect_two_ways(bottom_right, function()
    return has("bracelet1")
end)

local map_chest = Ladx_location.new("0x24F")
map_chest:connect_two_ways(entrance_up)
local lower_center = Ladx_location.new()
lower_center:connect_one_way(entrance_up, function(keys)
    return has("small_key8", keys + 1, 1), 1
end)

local upper_center = Ladx_location.new()
upper_center:connect_two_ways(lower_center, function(keys)
    return has("small_key8", 1 + keys, 2), 1
end)

upper_center:connect_one_way("0x23E", function()
    return attack_skeleton()
end)

local medicine_chest = Ladx_location.new("0x235")
medicine_chest:connect_two_ways(upper_center, function()
    return andA(
        has("feather"),
        has("hookshot")
    )
end)

local middle_center_1 = Ladx_location.new()
middle_center_1:connect_one_way(upper_center, function()
    return has("bomb")
end)

local middle_center_2 = Ladx_location.new()
middle_center_2:connect_two_ways(middle_center_1, function(keys)
    return has("small_key8", 1 + keys, 4), 1
end)

local middle_center_3 = Ladx_location.new()
middle_center_3:connect_two_ways(middle_center_2, function(keys)
    return has("small_key8", 1 + keys, 1), 1
end)

local miniboss_entrance = Ladx_location.new()
miniboss_entrance:connect_two_ways(middle_center_3, function(keys)
    return andA(
        has("hookshot"),
        has("small_key8", 1 + keys, 7)
    ), 1
end)

function d8_can_beat_miniboss()
    return has("sword1")
end

local miniboss = Ladx_location.new()
miniboss:connect_two_ways(miniboss_entrance, function()
    return andA(
        has("feather"),
        d8_can_beat_miniboss()
    )
end)
miniboss:connect_one_way("0x237")

local up_left = Ladx_location.new()
up_left:connect_two_ways(upper_center, function(keys)
    return andA(
        attack_hookshot_powder(),
        andA(
            has("small_key8", keys + 1, 4)
        )
    ), 1
end)

entrance_up:connect_one_way(up_left, function()
    return andA(
        has("feather"),
        has("rod")
    )
end)

up_left:connect_one_way("0x240")

up_left:connect_one_way(entrance_left)
up_left:connect_one_way("0x23D", function()
    return has("bomb")
end)
up_left:connect_one_way(upper_center)

up_left:connect_one_way("0x000")
up_left:connect_one_way("0x241", function()
    return has("bow")
end)

up_left:connect_one_way("0x23A", function()
    return has("hookshot")
end)

local top_left_stairs = Ladx_location.new()
top_left_stairs:connect_two_ways(entrance_up, function()
    return andA(
        has("feather"),
        has("rod")
    )
end)

top_left_stairs:connect_one_way(up_left)

local nightmare_key = Ladx_location.new("0x232")
nightmare_key:connect_two_ways(top_left_stairs, function(keys)
    return andA(
        has("feather"),
        has("sword"),
        has("small_key8", 1 + keys, 7)
    ), 1
end)

middle_center_2:connect_one_way(middle_center_2, function()
    return andA(
        has("bomb"),
        has("feather")
    )
end)

local bossdoor = Ladx_location.new()
bossdoor:connect_two_ways(entrance_up, function()
    return andA(
        has("feather"),
        has("rod")
    )
end)

function d8_can_beat_boss()
    return orA(
        has("rod"),
        andA(
            difficulty("hell"),
            has("sword2")
        )
    )
end

local boss = Ladx_location.new("0x234")
boss:connect_two_ways(bossdoor, function()
    return andA(
        has("nightmare_key8"),
        d8_can_beat_boss()
    )
end)
boss:connect_one_way("0x230")

-- hard
entrance_left:connect_one_way(entrance, function()
    return andA(
        difficulty("hard"),
        has("bomb")
    )
end)

vire_drop_key:connect_two_ways(entrance_left, function()
    return andA(
        difficulty("hard"),
        has("bomb")
    )
end)

bottom_right:connect_two_ways(slime_chest, function()
    return andA(
        difficulty("hard"),
        has("feather")
    )
end)

up_left:connect_two_ways(lower_center, function()
    return andA(
        difficulty("hard"),
        has("bomb"),
        has("feather")
    )
end)

slime_chest:connect_two_ways(entrance, function()
    return andA(
        difficulty("hard"),
        attack_hookshot_powder(),
        has("bracelet1")
    )
end)

-- glitched
sparks_chest:connect_two_ways(entrance_left, function()
    return andA(
        difficulty("glitched"),
        orA(
            attack_hookshot(),
            has("feather"),
            has("boots")
        )
    )
end)

lower_center:connect_one_way(entrance_up, function()
    return difficulty("glitched")
end)

miniboss_entrance:connect_two_ways(lower_center, function()
    return andA(
        difficulty("glitched"),
        has("bomb"),
        has("feather"),
        has("hookshot")
    )
end)

miniboss_entrance:connect_two_ways(lower_center, function(keys)
    return andA(
        difficulty("glitched"),
        has("bomb"),
        has("feather"),
        has("small_key8", 1 + keys, 7)
    ), 1
end)

up_left:connect_two_ways(lower_center, function()
    return andA(
        difficulty("glitched"),
        has("feather")
    )
end)

up_left:connect_two_ways(upper_center, function()
    return andA(
        difficulty("glitched"),
        has("feather")
    )
end)

top_left_stairs:connect_two_ways(up_left, function()
    return andA(
        difficulty("glitched"),
        has("feather"),
        has("sword")
    )
end)

medicine_chest:connect_two_ways(upper_center, function()
    return andA(
        difficulty("glitched"),
        has("feather")
    )
end)

up_left:connect_one_way(bossdoor, function()
    return andA(
        difficulty("glitched"),
        has("feather")
    )
end)

-- hell
bottomright_pot_chest:connect_two_ways(entrance, function()
    return andA(
        difficulty("hell"),
        has("sword"),
        has("bracelet1"),
        has("boots")
    )
end)

entrance:connect_one_way(bottomright_pot_chest, function()
    return andA(
        difficulty("hell"),
        has("feather"),
        has("sword")
    )
end)

medicine_chest:connect_two_ways(upper_center, function()
    return andA(
        difficulty("hell"),
        has("boots"),
        has("hookshot")
    )
end)

miniboss:connect_two_ways(miniboss_entrance, function()
    return andA(
        difficulty("hell"),
        has("boots"),
        d8_can_beat_miniboss()
    )
end)

top_left_stairs:connect_two_ways(map_chest, function()
    return andA(
        difficulty("hell"),
        has("boots"),
        has("rod")
    )
end)

nightmare_key:connect_two_ways(top_left_stairs, function(keys)
    return andA(
        difficulty("hell"),
        has("boots"),
        has("sword"),
        has("small_key8", 1 + keys, 7)
    ), 1
end)

bottom_right:connect_one_way(entrance_up, function()
    return andA(
        difficulty("hell"),
        has("bracelet1"),
        has("boots")
    )
end)

bossdoor:connect_two_ways(entrance_up, function()
    return andA(
        difficulty("hell"),
        has("boots"),
        has("rod")
    )
end)

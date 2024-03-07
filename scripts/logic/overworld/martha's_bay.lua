-- ghost_hut_outside

sword_beach_to_ghost_hut = Ladx_location.new()
sword_beach_to_ghost_hut:connect_one_way("0x0E5", function()
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

left_bay_area = Ladx_location.new()

left_bay_area:connect_one_way(ghost_hut_outside, function()
    return any(
        all(
            has("feather"),
            has("boots")
        ),
        has("rooster")
    )
end)

left_bay_area:connect_two_ways_entrance("prairie_low_phone", left_bay_area)

left_bay_area:connect_one_way("0x0E9", function()
    return bush()
end)

tiny_island = Ladx_location.new("0x0F8")
tiny_island:connect_one_way(left_bay_area, function()
    return all(
        any(
            has("flippers"),
            has("rooster")
        ),
        bush()
    )
end)

bay_madbatter_connector_entrance = Ladx_location.new()
bay_madbatter_connector_exit = Ladx_location.new()
bay_madbatter_connector_exit:connect_two_ways(bay_madbatter_connector_entrance, function()
    return has("flippers")
end)
bay_madbatter_connector_outside = Ladx_location.new()
bay_madbatter = Ladx_location.new()
bay_madbatter:connect_one_way("0x1E0", function()
    return has("powder")
end)
left_bay_area:connect_two_ways_entrance_door_stuck("prairie_madbatter_connector_entrance",
    bay_madbatter_connector_entrance,
    function()
        return all(
            any(
                has("feather"),
                has("rooster")
            ),
            any(
                has("sword"),
                has("rod"),
                has("boomerang")
            )
        )
    end,
    function()
        return bush()
    end)
bay_madbatter_connector_outside:connect_two_ways_entrance("prairie_madbatter_connector_exit",
    bay_madbatter_connector_exit)
bay_madbatter_connector_outside:connect_two_ways_entrance("prairie_madbatter", bay_madbatter)

bay_water = Ladx_location.new()
bay_water:connect_two_ways(ukuku_prairie, function()
    return has("flippers")
end)
bay_water:connect_two_ways(left_bay_area, function()
    return has("flippers")
end)
fisher_under_bridge = Ladx_location.new("0x2F5-Trade")
bay_water:add_one_way(fisher_under_bridge, function()
    return all(
        has("fishing_hook"),
        has("feather"),
        has("flippers")
    )
end)
bay_water:connect_one_way(Location().add("0x0C9-Trade"), function()
    return all(
        has("necklace"),
        has("flippers")
    )
end)
d5_entrance = Ladx_location.new()
d5_entrance:connect_one_way(bay_water, function()
    return has("flippers")
end)
d5 = Ladx_location.new()
d5_entrance:connect_two_ways_entrance("d5", d5)

mermaid_statue = Ladx_location.new("0x297-Trade")
mermaid_statue:connect_two_ways(animal_village, function()
    return all(
        has("trade_scale"),
        has("hookshot")
    )
end)

animal_village:connect_one_way("0x0DA")
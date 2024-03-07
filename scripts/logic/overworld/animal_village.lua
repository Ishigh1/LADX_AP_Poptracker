animal_village = Ladx_location.new()
animal_village:connect_one_way(Ladx_location.new("0x0CD-Trade"), function()
    return has("trade_broom")
end)
cookhouse = Ladx_location.new()
cookhouse:connect_one_way(Ladx_location.new("0x2D7-Trade"), function()
    return has("trade_honeycomb")
end)
goathouse = Ladx_location.new()
goathouse:connect_one_way(Ladx_location.new("0x2D9-Trade"), function()
    return has("trade_hibiscus")
end)

animal_village:connect_two_ways_entrance("animal_phone")
animal_village:connect_two_ways_entrance("animal_house1")
animal_village:connect_two_ways_entrance("animal_house2")
animal_village:connect_two_ways_entrance("animal_house3", goathouse)
animal_village:connect_two_ways_entrance("animal_house4")
animal_village:connect_two_ways_entrance("animal_house5", cookhouse)

animal_village:connect_two_ways(bay_water)
animal_village:connect_two_ways(ukuku_prairie, function()
    return any(
        has("hookshot"),
        has("rooster")
    )
end)
animal_village_connector_left = Ladx_location.new()
animal_village_connector_right = Ladx_location.new()
animal_village_connector_left:connect_two_ways(animal_village_connector_right, function()
    return has("boots")
end)
ukuku_prairie:connect_two_ways_entrance("prairie_to_animal_connector", animal_village_connector_left, function()
    return any(
        has("bomb"),
        has("boomerang"),
        has("powder"),
        has("rod"),
        has("sword1")
    )
end)
animal_village:connect_two_ways_entrance("animal_to_prairie_connector", animal_village_connector_right)

animal_village_bombcave = Ladx_location.new()
desert:connect_two_ways_entrance_door_stuck("animal_cave", animal_village_bombcave, function()
    return has("bomb")
end)
animal_village_bombcave_heartpiece = Ladx_location.new("0x2E6")

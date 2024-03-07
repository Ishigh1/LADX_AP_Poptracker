-- overworld
function lower_right_taltal()
    return any(
        can_access(obstacle_cave_exit_exterior),
        can_access(papahl_cave_entrance_exterior),
        can_access(papahl_cave_exit_exterior),
        all(
            can_access(outside_rooster_house),
            any(
                has("flippers"),
                has("rooster"),
                all(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        ),
        all(
            can_access(five_chest_game_left_exterior),
            any(
                has("flippers"),
                has("rooster")
            )
        )
    )
end

function outside_rooster_house()
    return any(
        all(
            can_access(lower_right_taltal),
            any(
                has("flippers"),
                has("rooster"),
                all(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        ),
        --bird_cave
        all(
            can_access(mountain_bridge_staircase),
            any(
                has("hookshot"),
                has("rooster"),
                all(
                    difficulty("glitched"),
                    has("boots"),
                    has("feather")
                ),
                all(
                    difficulty("hell"),
                    has("boots"),
                    has("feather")
                )
            )
        )
    )
end

function water_cave_hole() -- plateau where the hole is
    return any(
        can_access(five_chest_game_right_exterior),
        can_access(right_taltal_connector1_left_exterior),
        all(
            difficulty("glitched"),
            can_access(d7_platau)
        )
    )
end

function outside_mad_batter() -- taltal_boulder_zone
    return can_access(left_right_connector_cave_exit_exterior)
end

function mountain_bridge_staircase()
    return any(
        can_access(left_right_connector_cave_entrance_exterior),
        all(
            can_access(outside_rooster_house),
            any(
                has("hookshot"),
                has("rooster"),
                all(
                    difficulty("glitched"),
                    has("boots"),
                    has("feather")
                ),
                all(
                    difficulty("hell"),
                    has("boots"),
                    has("feather")
                )
            )
        )
    )
end

function d7_tower()
    return all(
        can_access(d7_platau),
        has("bracelet1"),
        has("bird_key")
    )
end

function d7_platau()
    return any(
        can_access(right_taltal_connector4_top_exterior),
        can_access(d7_tower)
    )
end

function right_taltal_connector_outside1()
    return any(
        can_access(right_taltal_connector1_right_exterior),
        can_access(right_taltal_connector2_exterior),
        can_access(d7_platau)
    )
end

function right_taltal_connector_outside2()
    return any(
        can_access(right_taltal_connector3_exterior),
        can_access(right_taltal_connector4_bottom_exterior),
        can_access(right_fairy_exterior)
    )
end

function d8_entrance()
    return any(
        can_access(d8_entrance_inside),
        can_access(d8_phone),
        can_access(fire_cave_top_exterior)
    )
end

function outside_fire_cave()
    return any(
        can_access(fire_cave_bottom_exterior),
        can_access(d8_entrance),
        can_access(outside_mad_batter)
    )
end

-- d8 plateau

function d8_entrance_inside()
    return all(
        can_access(d8_entrance),
        has("ocarina"),
        has("song3"),
        has("sword1")
    )
end

function d8_phone()
    return can_access(d8_entrance)
end

-- overworld locations

function bridge_rock() -- bridge_seashell / 0x00C
    return all(
        can_access(outside_rooster_house),
        has("bracelet1"),
        any(
            has("feather"),
            has("rooster"),
            all(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

-- obstacle_cave

function obstacle_cave_entrance_exterior() -- obstacle_cave_entrance (entrance)
    return any(
        all(
            can_access(tal_tal_heights),
            any(
                has("bracelet1"),
                all(
                    difficulty("glitched"),
                    has("hookshot")
                )
            )
        ),
        can_access(obstacle_cave_entrance_interior)
    )
end

function obstacle_cave_entrance_interior() -- obstacle_cave_entrance
    return any(
        can_access(obstacle_cave_entrance_exterior),
        all(
            can_access(obstacle_cave_middle_interior),
            any(
                has("sword1"),
                has("feather"),
                all(
                    difficulty("hell"),
                    has("hookshot")
                ),
                all(
                    difficulty("hell"),
                    has("rooster"),
                    has("boots")
                )
            )
        )
    )
end

function obstacle_cave_middle_interior() -- obstacle_cave_inside
    return any(
        all(
            can_access(obstacle_cave_entrance_interior),
            any(
                has("sword1"),
                all(
                    difficulty("hell"),
                    has("hookshot")
                ),
                all(
                    difficulty("hell"),
                    has("feather"),
                    has("boots"),
                    any(
                        has("sword1"),
                        has("rod"),
                        has("bow")
                    )
                ),
                all(
                    difficulty("hell"),
                    has("boots"),
                    has("rooster")
                )
            )
        ),
        can_access(obstacle_cave_middle_exterior),
        all(
            can_access(obstacle_cave_exit_interior),
            any(
                has("boots"),
                has("rooster")
            )
        )
    )
end

function access_tunnel_interior() -- obstacle_cave_inside_chest
    return any(
        all(
            can_access(obstacle_cave_middle_interior),
            any(
                has("hookshot"),
                has("rooster"),
                all(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        ),
        can_access(obstacle_cave_middle_exterior)
    )
end

function obstacle_cave_middle_exterior() -- obstacle_cave_outside_chest
    return any(
        can_access(obstacle_cave_middle_interior),
        can_access(papahl_cave_entrance_exterior)
    )
end

function obstacle_cave_exit_interior() -- obstacle_cave_exit
    return any(
        can_access(obstacle_cave_exit_exterior),
        all(
            can_access(obstacle_cave_middle_interior),
            any(
                has("boots"),
                has("rooster"),
                all(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        )
    )
end

function obstacle_cave_exit_exterior()
    return any(
        can_access(obstacle_cave_exit_interior),
        can_access(lower_right_taltal)
    )
end

-- papahl cave

function papahl_cave_entrance_exterior()
    return any(
        can_access(lower_right_taltal),
        can_access(obstacle_cave_entrance_interior)
    )
end

function papahl_cave_entrance_interior()
    return any(
        can_access(papahl_cave_entrance_exterior),
        can_access(paphl_cave)
    )
end

function paphl_cave() -- papahl_cave
    return any(
        can_access(papahl_cave_entrance_interior),
        can_access(papahl_cave_exit_interior)
    )
end

function papahl_cave_exit_interior()
    return any(
        can_access(papahl_cave_exit_exterior),
        can_access(paphl_cave)
    )
end

function papahl_cave_exit_exterior() -- papahl
    return any(
        can_access(papahl_cave_exit_interior)
    )
end

-- five chest game

function five_chest_game_left_exterior()
    return any(
        all(
            can_access(lower_right_taltal),
            any(
                has("flippers"),
                has("rooster")
            )
        ),
        can_access(five_chest_game_bottom_interior)
    )
end

function five_chest_game_right_exterior()
    return any(
        can_access(five_chest_game_bottom_interior)
    )
end

function five_chest_game_bottom_interior() -- multichest_cave
    return any(
        can_access(five_chest_game_left_exterior),
        can_access(five_chest_game_right_exterior),
        all(
            can_access(five_chest_game_top_interior),
            has("bomb")
        )
    )
end

function five_chest_game_top_interior() -- multichest_cave_secret
    return any(
        can_access(five_chest_game_top_exterior),
        all(
            can_access(five_chest_game_bottom_interior),
            has("bomb")
        )
    )
end

function five_chest_game_top_exterior() -- multichest_outside
    return any(
        can_access(five_chest_game_top_interior)
    )
end

-- left_right_connector_cave

function left_right_connector_cave_entrance_exterior()
    return any(
        can_access(mountain_bridge_staircase),
        can_access(left_right_connector_cave_entrance_interior)
    )
end

function left_right_connector_cave_entrance_interior()
    return any(
        can_access(left_right_connector_cave_entrance_exterior),
        all(
            difficulty("glitched"),
            can_access(left_right_connector_cave_exit_interior),
            has("hookshot"),
            has("feather")
        ),
        all(
            difficulty("hell"),
            can_access(left_right_connector_cave_exit_interior),
            has("rooster"),
            any(
                has("boots"),
                has("sword1"),
                has("bow"),
                has("rod")
            )
        )
    )
end

function access_tunnel_bombable_heart_piece() -- mountain_heartpiece
    return any(
        all(
            can_access(left_right_connector_cave_entrance_interior),
            has("bomb")
        ),
        all(
            difficulty("glitched"),
            can_access(obstacle_cave_middle_interior),
            has("bomb")
        )
    )
end

function left_right_connector_cave_exit_interior()
    return any(
        all(
            can_access(left_right_connector_cave_entrance_interior),
            any(
                has("hookshot"),
                has("rooster")
            )
        ),
        all(
            difficulty("hell"),
            can_access(left_right_connector_cave_entrance_interior),
            has("boots"),
            has("feather")
        ),
        can_access(left_right_connector_cave_exit_exterior)
    )
end

function left_right_connector_cave_exit_exterior()
    return any(
        can_access(left_right_connector_cave_exit_interior),
        can_access(outside_mad_batter)
    )
end

-- mad_batter

function tal_tal_mountain_mad_batter_exterior()
    return any(
        can_access(tal_tal_mountain_mad_batter_interior),
        all(
            can_access(outside_mad_batter),
            has("powder")
        )
    )
end

function tal_tal_mountain_mad_batter_interior() -- taltal_madbatter
    return can_access(tal_tal_mountain_mad_batter_exterior)
end

function tal_tal_mountain_mad_batter_reward() -- 0x1E2
    return all(
        can_access(tal_tal_mountain_mad_batter_interior),
        has("powder")
    )
end

-- bird_cave
function bird_cave_exterior() -- bird_cave
    return any(
        can_access(outside_rooster_house),
        can_access(bird_cave_interior)
    )
end

function bird_cave_interior() -- bird_cave
    return can_access(bird_cave_exterior)
end

function bird_key_cave() -- bird_key
    return all(
        can_access(bird_cave_interior),
        any(
            has("rooster"),
            all(
                has("bracelet2"),
                any(
                    has("feather"),
                    difficulty("hard")
                )
            ),
            all(
                difficulty("glitched"),
                has("feather"),
                has("hookshot")
            ),
            all(
                difficulty("hell"),
                has("feather"),
                has("boots")
            )
        )
    )
end

-- right_taltal_connector1

function right_taltal_connector1_left_exterior()
    return any(
        can_access(water_cave_hole),
        can_access(right_taltal_connector1_interior)
    )
end

function right_taltal_connector1_interior()
    return any(
        can_access(right_taltal_connector1_left_exterior),
        can_access(right_taltal_connector1_right_exterior)
    )
end

function right_taltal_connector1_right_exterior()
    return any(
        can_access(right_taltal_connector_outside1),
        can_access(right_taltal_connector1_interior)
    )
end

-- right_taltal_connector2 / right_taltal_connector3

function right_taltal_connector2_exterior()
    return any(
        can_access(right_taltal_connector_outside1),
        can_access(right_taltal_connector2_interior)
    )
end

function right_taltal_connector2_interior()
    return any(
        can_access(right_taltal_connector2_exterior)
    )
end

function right_taltal_connector3_interior()
    return any(
        all(
            can_access(right_taltal_connector2_interior),
            any(
                has("feather"),
                has("rooster")
            ),
            has("hookshot")
        ),
        all(
            can_access(right_taltal_connector2_interior),
            difficulty("glitched")
        )
    )
end

function right_taltal_connector3_exterior()
    return any(
        can_access(right_taltal_connector_outside2),
        can_access(right_taltal_connector3_interior)
    )
end

-- right_taltal_connector4

function right_taltal_connector4_bottom_exterior()
    return any(
        can_access(right_taltal_connector_outside2),
        can_access(right_taltal_connector4_interior)
    )
end

function right_taltal_connector4_interior()
    return any(
        can_access(right_taltal_connector4_bottom_exterior),
        can_access(right_taltal_connector4_top_exterior)
    )
end

function right_taltal_connector4_top_exterior()
    return any(
        can_access(d7_platau),
        can_access(right_taltal_connector4_interior)
    )
end

-- right fairy

function right_fairy_exterior()
    return any(
        all(
            can_access(right_taltal_connector_outside2),
            has("bomb")
        ),
        can_access(right_fairy_interior)
    )
end

function right_fairy_interior()
    return can_access(right_fairy_exterior)
end

-- fire_cave

function fire_cave_top_exterior()
    return any(
        can_access(d8_entrance),
        can_access(fire_cave_top_interior)
    )
end

function fire_cave_top_interior()
    return any(
        can_access(fire_cave_top_exterior),
        all(
            can_access(fire_cave_bottom_interior),
            has("shield2")
        )
    )
end

function fire_cave_bottom_interior()
    return any(
        can_access(fire_cave_bottom_interior),
        all(
            can_access(fire_cave_top_interior),
            any(
                has("shield2"),
                all(
                    difficulty("hard"),
                    has("boots")
                )
            )
        )
    )
end

function fire_cave_bottom_exterior()
    return any(
        all(
            can_access(outside_fire_cave),
            has("bomb")
        )
    )
end

-- class-based

obstacle_cave_entrance = Ladx_location.new()
obstacle_cave_entrance:connect_two_ways_entrance("obstacle_cave_entrance", windfish_egg, function()
    return has("bracelet1")
end)

obstacle_cave_inside = Ladx_location.new()
obstacle_cave_inside:connect_two_ways(obstacle_cave_entrance, function()
    return has("sword1")
end)
obstacle_cave_inside:connect_one_way(obstacle_cave_entrance, function()
    return has("feather")
end)

obstacle_cave_exit = Ladx_location.new()
obstacle_cave_exit:connect_two_ways(obstacle_cave_inside, function()
    return any(
        has("boots"),
        has("rooster")
    )
end)

lower_right_taltal = Ladx_location.new()
lower_right_taltal:connect_two_ways_entrance("obstacle_cave_exit", obstacle_cave_exit)

multichest_cave = Ladx_location.new()
multichest_cave:connect_two_ways_entrance("multichest_left", lower_right_taltal, function()
    return any(
        has("flippers"),
        has("rooster")
    )
end)

water_cave_hole = Ladx_location.new()
water_cave_hole:connect_two_ways_entrance("multichest_right", multichest_cave)

right_taltal_connector1 = Ladx_location.new()
right_taltal_connector1:connect_two_ways_entrance("right_taltal_connector1", water_cave_hole)

outside_rooster_house = Ladx_location.new()
outside_rooster_house:connect_two_ways(lower_right_taltal, function()
    return any(
        has("flippers"),
        has("rooster")
    )
end)

mountain_bridge_staircase = Ladx_location.new()
mountain_bridge_staircase:connect_two_ways(outside_rooster_house, function()
    return any(
        has("hookshot"),
        has("rooster")
    )
end)

left_right_connector_cave_entrance = Ladx_location.new()
left_right_connector_cave_entrance:connect_two_ways_entrance("left_to_right_taltalentrance", mountain_bridge_staircase,
    function()
        return any(
            has("bomb"),
            has("boomerang"),
            has("powder"),
            has("rod"),
            has("sword1")
        )
    end)

left_right_connector_cave_exit = Ladx_location.new()
left_right_connector_cave_entrance:connect_one_way(left_right_connector_cave_exit, function()
    return any(
        has("hookshot"),
        has("rooster")
    )
end)

taltal_boulder_zone = Ladx_location.new()
taltal_boulder_zone:connect_two_ways_entrance("left_taltal_entrance", left_right_connector_cave_exit)

outside_fire_cave = Ladx_location.new()
taltal_boulder_zone:connect_one_way(outside_fire_cave)

fire_cave_bottom = Ladx_location.new()
outside_fire_cave:connect_two_ways_entrance_door_stuck("fire_cave_entrance", fire_cave_bottom, function()
    return has("bomb")
end)

fire_cave_top = Ladx_location.new()
fire_cave_top:connect_two_ways(fire_cave_bottom, function()
    return has("shield2")
end)

d8_entrance = Ladx_location.new()
d8_entrance:connect_two_ways_entrance("fire_cave_exit", fire_cave_top)

d8 = Ladx_location.new("d8")
d8_entrance:connect_two_ways_entrance_door_stuck("d8", d8, function()
    return all(
        has("ocarina"),
        has("song3"),
        has("sword1")
    )
end)

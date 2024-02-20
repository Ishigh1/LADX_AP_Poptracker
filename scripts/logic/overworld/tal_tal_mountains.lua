-- overworld
function lower_right_taltal()
    return orA(
        can_access(obstacle_cave_exit_exterior),
        can_access(papahl_cave_entrance_exterior),
        can_access(papahl_cave_exit_exterior),
        andA(
            can_access(outside_rooster_house),
            orA(
                has("flippers"),
                has("rooster"),
                andA(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        ),
        andA(
            can_access(five_chest_game_left_exterior),
            orA(
                has("flippers"),
                has("rooster")
            )
        )
    )
end

function outside_rooster_house()
    return orA(
        andA(
            can_access(lower_right_taltal),
            orA(
                has("flippers"),
                has("rooster"),
                andA(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        ),
        --bird_cave
        andA(
            can_access(mountain_bridge_staircase),
            orA(
                has("hookshot"),
                has("rooster"),
                andA(
                    difficulty("glitched"),
                    has("boots"),
                    has("feather")
                ),
                andA(
                    difficulty("hell"),
                    has("boots"),
                    has("feather")
                )
            )
        )
    )
end

function water_cave_hole() -- plateau where the hole is
    return orA(
        can_access(five_chest_game_right_exterior),
        can_access(right_taltal_connector1_left_exterior),
        andA(
            difficulty("glitched"),
            can_access(d7_platau)
        )
    )
end

function outside_mad_batter() -- taltal_boulder_zone
    return can_access(left_right_connector_cave_exit_exterior)
end

function mountain_bridge_staircase()
    return orA(
        can_access(left_right_connector_cave_entrance_exterior),
        andA(
            can_access(outside_rooster_house),
            orA(
                has("hookshot"),
                has("rooster"),
                andA(
                    difficulty("glitched"),
                    has("boots"),
                    has("feather")
                ),
                andA(
                    difficulty("hell"),
                    has("boots"),
                    has("feather")
                )
            )
        )
    )
end

function d7_tower()
    return andA(
        can_access(d7_platau),
        has("bracelet1"),
        has("bird_key")
    )
end

function d7_platau()
    return can_access(right_taltal_connector4_top_exterior)
end

function right_taltal_connector_outside1()
    return orA(
        can_access(right_taltal_connector1_right_exterior),
        can_access(right_taltal_connector2_exterior),
        can_access(d7_platau)
    )
end

function right_taltal_connector_outside2()
    return orA(
        can_access(right_taltal_connector3_exterior),
        can_access(right_taltal_connector4_bottom_exterior),
        can_access(right_fairy_exterior)
    )
end

-- overworld locations

function bridge_rock() -- bridge_seashell / 0x00C
    return andA(
        can_access(outside_rooster_house),
        has("bracelet1"),
        orA(
            has("feather"),
            has("rooster"),
            andA(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

-- obstacle_cave

function obstacle_cave_entrance_exterior() -- obstacle_cave_entrance (entrance)
    return orA(
        andA(
            can_access(tal_tal_heights),
            orA(
                has("bracelet1"),
                andA(
                    difficulty("glitched"),
                    has("hookshot")
                )
            )
        ),
        can_access(obstacle_cave_entrance_interior)
    )
end

function obstacle_cave_entrance_interior() -- obstacle_cave_entrance
    return orA(
        can_access(obstacle_cave_entrance_exterior),
        andA(
            can_access(obstacle_cave_middle_interior),
            orA(
                has("sword1"),
                has("feather"),
                andA(
                    difficulty("hell"),
                    has("hookshot")
                ),
                andA(
                    difficulty("hell"),
                    has("rooster"),
                    has("boots")
                )
            )
        )
    )
end

function obstacle_cave_middle_interior() -- obstacle_cave_inside
    return orA(
        andA(
            can_access(obstacle_cave_entrance_interior),
            orA(
                has("sword1"),
                andA(
                    difficulty("hell"),
                    has("hookshot")
                ),
                andA(
                    difficulty("hell"),
                    has("feather"),
                    has("boots"),
                    orA(
                        has("sword1"),
                        has("rod"),
                        has("bow")
                    )
                ),
                andA(
                    difficulty("hell"),
                    has("boots"),
                    has("rooster")
                )
            )
        ),
        can_access(obstacle_cave_middle_exterior),
        andA(
            can_access(obstacle_cave_exit_interior),
            orA(
                has("boots"),
                has("rooster")
            )
        )
    )
end

function access_tunnel_interior() -- obstacle_cave_inside_chest
    return orA(
        andA(
            can_access(obstacle_cave_middle_interior),
            orA(
                has("hookshot"),
                has("rooster"),
                andA(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        ),
        can_access(obstacle_cave_middle_exterior)
    )
end

function obstacle_cave_middle_exterior() -- obstacle_cave_outside_chest
    return orA(
        can_access(obstacle_cave_middle_interior),
        can_access(papahl_cave_entrance_exterior)
    )
end

function obstacle_cave_exit_interior() -- obstacle_cave_exit
    return orA(
        can_access(obstacle_cave_exit_exterior),
        andA(
            can_access(obstacle_cave_middle_interior),
            orA(
                has("boots"),
                has("rooster"),
                andA(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        )
    )
end

function obstacle_cave_exit_exterior()
    return orA(
        can_access(obstacle_cave_exit_interior),
        lower_right_taltal()
    )
end

-- papahl cave

function papahl_cave_entrance_exterior()
    return orA(
        lower_right_taltal(),
        can_access(obstacle_cave_entrance_interior)
    )
end

function papahl_cave_entrance_interior()
    return orA(
        can_access(papahl_cave_entrance_exterior),
        can_access(paphl_cave)
    )
end

function paphl_cave() -- papahl_cave
    return orA(
        can_access(papahl_cave_entrance_interior),
        can_access(papahl_cave_exit_interior)
    )
end

function papahl_cave_exit_interior()
    return orA(
        can_access(papahl_cave_exit_exterior),
        can_access(paphl_cave)
    )
end

function papahl_cave_exit_exterior() -- papahl
    return orA(
        can_access(papahl_cave_exit_interior)
    )
end

-- five chest game

function five_chest_game_left_exterior()
    return orA(
        andA(
            can_access(lower_right_taltal),
            orA(
                has("flippers"),
                has("rooster")
            )
        ),
        can_access(five_chest_game_bottom_interior)
    )
end

function five_chest_game_right_exterior()
    return orA(
        can_access(five_chest_game_bottom_interior)
    )
end

function five_chest_game_bottom_interior() -- multichest_cave
    return orA(
        can_access(five_chest_game_left_exterior),
        can_access(five_chest_game_right_exterior),
        andA(
            can_access(five_chest_game_top_interior),
            has("bomb")
        )
    )
end

function five_chest_game_top_interior() -- multichest_cave_secret
    return orA(
        can_access(five_chest_game_top_exterior),
        andA(
            can_access(five_chest_game_bottom_interior),
            has("bomb")
        )
    )
end

function five_chest_game_top_exterior() -- multichest_outside
    return orA(
        can_access(five_chest_game_top_interior)
    )
end

-- left_right_connector_cave

function left_right_connector_cave_entrance_exterior()
    return orA(
        can_access(mountain_bridge_staircase),
        can_access(left_right_connector_cave_entrance_interior)
    )
end

function left_right_connector_cave_entrance_interior()
    return orA(
        can_access(left_right_connector_cave_entrance_exterior),
        andA(
            difficulty("glitched"),
            can_access(left_right_connector_cave_exit_interior),
            has("hookshot"),
            has("feather")
        ),
        andA(
            difficulty("hell"),
            can_access(left_right_connector_cave_exit_interior),
            has("rooster"),
            orA(
                has("boots"),
                has("sword1"),
                has("bow"),
                has("rod")
            )
        )
    )
end

function access_tunnel_bombable_heart_piece() -- mountain_heartpiece
    return orA(
        andA(
            can_access(left_right_connector_cave_entrance_interior),
            has("bomb")
        ),
        andA(
            difficulty("glitched"),
            can_access(obstacle_cave_middle_interior),
            has("bomb")
        )
    )
end

function left_right_connector_cave_exit_interior()
    return orA(
        andA(
            can_access(left_right_connector_cave_entrance_interior),
            orA(
                has("hookshot"),
                has("rooster")
            )
        ),
        andA(
            difficulty("hell"),
            can_access(left_right_connector_cave_entrance_interior),
            has("boots"),
            has("feather")
        ),
        can_access(left_right_connector_cave_exit_exterior)
    )
end

function left_right_connector_cave_exit_exterior()
    return orA(
        can_access(left_right_connector_cave_exit_interior),
        can_access(outside_mad_batter)
    )
end

-- mad_batter

function tal_tal_mountain_mad_batter_exterior()
    return orA(
        can_access(tal_tal_mountain_mad_batter_interior),
        andA(
            can_access(outside_mad_batter),
            has("powder")
        )
    )
end

function tal_tal_mountain_mad_batter_interior() -- taltal_madbatter
    return can_access(tal_tal_mountain_mad_batter_exterior)
end

function tal_tal_mountain_mad_batter_reward() -- 0x1E2
    return andA(
        can_access(tal_tal_mountain_mad_batter_interior),
        has("powder")
    )
end

-- bird_cave
function bird_cave_exterior() -- bird_cave
    return orA(
        can_access(outside_rooster_house),
        can_access(bird_cave_interior)
    )
end

function bird_cave_interior() -- bird_cave
    return can_access(bird_cave_exterior)
end

function bird_key_cave() -- bird_key
    return andA(
        can_access(bird_cave_interior),
        orA(
            has("rooster"),
            andA(
                has("bracelet2"),
                orA(
                    has("feather"),
                    difficulty("hard")
                )
            ),
            andA(
                difficulty("glitched"),
                has("feather"),
                has("hookshot")
            ),
            andA(
                difficulty("hell"),
                has("feather"),
                has("boots")
            )
        )
    )
end

-- right_taltal_connector1

function right_taltal_connector1_left_exterior()
    return orA(
        can_access(water_cave_hole),
        can_access(right_taltal_connector1_interior)
    )
end

function right_taltal_connector1_interior()
    return orA(
        can_access(right_taltal_connector1_left_exterior),
        can_access(right_taltal_connector1_right_exterior)
    )
end

function right_taltal_connector1_right_exterior()
    return orA(
        can_access(right_taltal_connector_outside1),
        can_access(right_taltal_connector1_interior)
    )
end

-- right_taltal_connector2 / right_taltal_connector3

function right_taltal_connector2_exterior()
    return orA(
        can_access(right_taltal_connector_outside1),
        can_access(right_taltal_connector2_interior)
    )
end

function right_taltal_connector2_interior()
    return orA(
        can_access(right_taltal_connector2_exterior)
    )
end

function right_taltal_connector3_interior()
    return orA(
        andA(
            can_access(right_taltal_connector2_interior),
            orA(
                has("feather"),
                has("rooster")
            ),
            has("hookshot")
        ),
        andA(
            can_access(right_taltal_connector2_interior),
            difficulty("glitched")
        )
    )
end

function right_taltal_connector3_exterior()
    return orA(
        can_access(right_taltal_connector_outside2),
        can_access(right_taltal_connector3_interior)
    )
end

-- right_taltal_connector4

function right_taltal_connector4_bottom_exterior()
    return orA(
        can_access(right_taltal_connector_outside2),
        can_access(right_taltal_connector4_interior)
    )
end

function right_taltal_connector4_interior()
    return orA(
        can_access(right_taltal_connector4_bottom_exterior),
        can_access(right_taltal_connector4_top_exterior)
    )
end

function right_taltal_connector4_top_exterior()
    return orA(
        can_access(d7_platau),
        can_access(right_taltal_connector4_interior)
    )
end

-- right fairy

function right_fairy_exterior()
    return orA(
        andA(
            can_access(right_taltal_connector_outside2),
            has("bomb")
        ),
        can_access(right_fairy_interior)
    )
end

function right_fairy_interior()
    return can_access(right_fairy_exterior)
end

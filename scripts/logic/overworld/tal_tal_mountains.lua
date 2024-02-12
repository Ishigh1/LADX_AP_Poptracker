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

function water_cave_hole()
    return orA(
        can_access(five_chest_game_right_exterior)
    )
end

function outside_mad_batter() -- taltal_boulder_zone
    return can_access(left_right_connector_cave_exit_exterior)
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

-- not implemented

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

function mad_batter()
    -- Implement access rules if needed
    return true
end

function bird_key_cave()
    -- Implement access rules if needed
    return true
end

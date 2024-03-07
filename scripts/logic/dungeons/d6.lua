-- utils

function d6_access()
    return A(can_access("Southern Face Shrine/D6 Entrance/D6 Entry"))
end

function d6_left_side()
    return all(
        has("bracelet1"),
        any(
            has("bomb"),
            has("boomerang"),
            all(
                difficulty("glitched"),
                has("feather")
            ),
            all(
                difficulty("hell"),
                has("boots"),
                any(
                    has("bow"),
                    has("rod")
                )
            )
        )
    )
end

function d6_top_left()
    return all(
        d6_left_side(),
        has("bracelet2")
    )
end

function d6_to_miniboss()
    return A(has("small_key6"))
end

function d6_can_beat_miniboss()
    return A(has("bracelet1"))
end

function d6_miniboss()
    return all(
        d6_to_miniboss(),
        has("bomb"),
        d6_can_beat_miniboss()
    )
end

function d6_lower_right_side()
    return all(
        any(
            has("bomb"),
            has("bow"),
            has("rod")
        ),
        has("bracelet1")
    )
end

function d6_center_1()
    return any(
        all(
            d6_miniboss(),
            has("bracelet2"),
            any(
                has("feather"),
                all(
                    difficulty("hard"),
                    has("boots")
                ),
                difficulty("hell")
            )
        ),
        all(
            difficulty("glitched"),
            d6_center_2_and_upper_right_side_0_keys(),
            has("bracelet1"),
            has("feather")
        )
    )
end

function d6_center_2_and_upper_right_side_0_keys()
    return all(
        difficulty("glitched"),
        d6_lower_right_side(),
        has("feather"),
        any(
            has("sword1"),
            has("bow"),
            has("rod"),
            difficulty("hell")
        )
    )
end

function d6_center_2_and_upper_right_side_2_keys()
    return all(
        d6_center_1(),
        has("small_key6", 2)
    )
end

function d6_center_2_and_upper_right_side()
    return any(
        d6_center_2_and_upper_right_side_0_keys(),
        d6_center_2_and_upper_right_side_2_keys()
    )
end

function d6_can_beat_boss()
    return A(has("bomb"))
end

function d6_boss_kill()
    return all(
        has("nightmare_key6"),
        d6_can_beat_boss()
    )
end

-- locations
function d6_mini_moldorm_spark_chest() -- 0x1CF
    return any(
        has("bomb"),
        has("bow"),
        has("rod"),
        has("bracelet2")
    )
end

function d6_flying_heart_statue_chest() -- 0x1C9
    return A(has("bracelet2"))
end

function d6_l2_bracelet_chest() -- bracelet_chest
    return all(
        has("bomb"),
        any(
            has("feather"),
            difficulty("hard")
        )
    )
end

function d6_three_wizzrobe_switch_chest() -- 0x1C0
    return all(
        has("bracelet1"),
        any(
            has("bomb"),
            has("bow"),
            has("rod")
        )
    )
end

function d6_stairs_across_statues_chest() -- 0x1B9
    return d6_left_side()
end

function d6_switch_star_above_statues_chest() -- 0x1B3
    return d6_left_side()
end

function d6_two_wizzrobe_key() -- 0x1B4
    return all(
        d6_left_side(),
        any(
            has("bomb"),
            has("bow"),
            has("rod")
        )
    )
end

function d6_top_left_horse_heads_chest() -- 0x1B0
    return d6_top_left()
end

function d6_raft_chest() -- 0x06C
    return all(
        d6_top_left(),
        has("bracelet1")
    )
end

function d6_water_tektite_chest() -- 0x1BE
    return d6_lower_right_side()
end

function d6_four_wizzrobe_ledge_chest() -- medicine_chest
    return all(
        d6_lower_right_side(),
        any(
            has("feather"),
            all(
                difficulty("hell"),
                has("boots"),
                any(
                    has("rod"),
                    has("bow")
                )
            )
        )
    )
end

function d6_tile_room_key() -- 0x1C3
    return d6_center_1()
end

function d6_top_right_horse_heads_chest() -- 0x1B1
    return d6_center_2_and_upper_right_side()
end

function d6_pot_locked_chest() -- boss_key
    return any(
        all(
            has("hookshot"),
            any(
                all(
                    d6_center_2_and_upper_right_side_0_keys(),
                    has("small_key6", 1, 3)
                ),
                all(
                    d6_center_2_and_upper_right_side_2_keys(),
                    has("small_key6", 3)
                )
            )
        ),
        all(
            difficulty("glitched"),
            d6_lower_right_side(),
            has("feather")
        )
    )
end

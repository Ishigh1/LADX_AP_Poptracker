-- utils

function d6_access()
    return A(can_access("Southern Face Shrine/D6 Entrance/D6 Entry"))
end

function d6_left_side()
    return andA(
        has("bracelet1"),
        orA(
            has("bomb"),
            has("boomerang"),
            andA(
                difficulty("glitched"),
                has("feather")
            ),
            andA(
                difficulty("hell"),
                has("boots"),
                orA(
                    has("bow"),
                    has("rod")
                )
            )
        )
    )
end

function d6_top_left()
    andA(
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
    return andA(
        d6_to_miniboss(),
        has("bomb"),
        d6_can_beat_miniboss()
    )
end

function d6_lower_right_side()
    return andA(
        orA(
            has("bomb"),
            has("bow"),
            has("rod")
        ),
        has("bracelet1")
    )
end

function d6_center_1()
    return orA(
        andA(
            d6_miniboss(),
            has("bracelet2"),
            orA(
                has("feather"),
                andA(
                    difficulty("hard"),
                    has("boots")
                ),
                difficulty("hell")
            )
        ),
        andA(
            difficulty("glitched"),
            d6_center_2_and_upper_right_side_0_keys(),
            has("bracelet1"),
            has("feather")
        )
    )
end

function d6_center_2_and_upper_right_side_0_keys()
    return andA(
        difficulty("glitched"),
        d6_lower_right_side(),
        has("feather"),
        orA(
            has("sword1"),
            has("bow"),
            has("rod"),
            difficulty("hell")
        )
    )
end

function d6_center_2_and_upper_right_side_2_keys()
    return andA(
        d6_center_1(),
        has("small_key6", 2)
    )
end

function d6_center_2_and_upper_right_side()
    return orA(
        d6_center_2_and_upper_right_side_0_keys(),
        d6_center_2_and_upper_right_side_2_keys()
    )
end

function d6_can_beat_boss()
    return A(has("bomb"))
end

function d6_boss_kill()
    return andA(
        has("nightmare_key6"),
        d6_can_beat_boss()
    )
end

-- locations
function d6_mini_moldorm_spark_chest() -- 0x1CF
    return orA(
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
    return andA(
        has("bomb"),
        orA(
            has("feather"),
            difficulty("hard")
        )
    )
end

function d6_three_wizzrobe_switch_chest() -- 0x1C0
    return andA(
        has("bracelet1"),
        orA(
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
    return andA(
        d6_left_side(),
        orA(
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
    return andA(
        d6_top_left(),
        has("bracelet1")
    )
end

function d6_water_tektite_chest() -- 0x1BE
    return d6_lower_right_side()
end

function d6_four_wizzrobe_ledge_chest() -- medicine_chest
    return andA(
        d6_lower_right_side(),
        orA(
            has("feather"),
            andA(
                difficulty("hell"),
                has("boots"),
                orA(
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
    return orA(
        andA(
            has("hookshot"),
            orA(
                andA(
                    d6_center_2_and_upper_right_side_0_keys(),
                    has("small_key6", 1, 3)
                ),
                andA(
                    d6_center_2_and_upper_right_side_2_keys(),
                    has("small_key6", 3)
                )
            )
        ),
        andA(
            difficulty("glitched"),
            d6_lower_right_side(),
            has("feather")
        )
    )
end

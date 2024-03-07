-- utils

function d5_access()
    return all(
        can_access("Martha's Bay Water"),
        has("flippers")
    )
end

function d5_area2()
    return has("small_key5")
end

function d5_can_beat_miniboss()
    return any(
        has("bow"),
        has("hookshot")
    )
end

function d5_post_gohma_1_keys()
    return any(
        all(
            difficulty("glitched"),
            d5_area2(),
            has("hookshot")
        ),
        all(
            difficulty("hell"),
            d5_area2(),
            has("boots"),
            has("feather"),
            has("bracelet1"),
            attack_hookshot_powder()
        )
    )
end

function d5_post_gohma_2_keys()
    return all(
        d5_area2(),
        has("hookshot"),
        d5_can_beat_miniboss(),
        has("small_key5", 2)
    )
end

local function can_move_from_post_gohma_to_staircase_before_boss()
    return any(
        all(
            has("hookshot"),
            any(
                has("feather"),
                all(
                    difficulty("hard"),
                    has("boots")
                )
            )
        ),
        all(
            difficulty("hell"),
            has("boots"),
            has("feather")
        )
    )
end

function d5_staircase_before_boss_1_keys()
    return any(
        all(
            d5_after_stalfos_1_keys(),
            any(
                has("feather"),
                all(
                    difficulty("hard"),
                    has("boots")
                )
            ),
            attack_hookshot_powder()
        ),
        all(
            d5_post_gohma_1_keys(),
            can_move_from_post_gohma_to_staircase_before_boss()
        )
    )
end

function d5_staircase_before_boss_2_keys()
    return all(
        d5_post_gohma_2_keys(),
        can_move_from_post_gohma_to_staircase_before_boss()
    )
end

function d5_staircase_before_boss()
    return any(
        d5_staircase_before_boss_1_keys(),
        d5_staircase_before_boss_2_keys()
    )
end

function d5_after_keyblock_boss_1_keys()
    return all(
        difficulty("hard"),
        d5_after_stalfos_1_keys(),
        has("feather"),
        attack_hookshot_powder()
    )
end

function d5_after_keyblock_boss_2_keys()
    return all(
        d5_staircase_before_boss_1_keys(),
        has("small_key5", 2, 3)
    )
end

function d5_after_keyblock_boss_3_keys()
    return all(
        d5_staircase_before_boss_2_keys(),
        has("small_key5", 3)
    )
end

function d5_after_keyblock_boss()
    return any(
        d5_after_keyblock_boss_1_keys(),
        d5_after_keyblock_boss_2_keys(),
        d5_after_keyblock_boss_3_keys()
    )
end

function d5_after_stalfos_1_keys()
    return all(
        d5_area2(),
        has("sword1"),
        any(
            has("bomb"),
            difficulty("hell")
        )
    )
end

function d5_after_stalfos_from_stairs()
    return any(
        all(
            difficulty("hard"),
            d5_after_keyblock_boss(),
            has("feather"),
            attack_hookshot_powder()
        ),
        all(
            difficulty("glitched"),
            d5_staircase_before_boss(),
            has("boots"),
            has("feather"),
            any(
                has("sword1"),
                has("bow"),
                has("rod")
            )
        ),
        all(
            difficulty("hell"),
            d5_staircase_before_boss(),
            has("feather"),
            has("sword1")
        )
    )
end

function d5_after_stalfos()
    return any(
        d5_after_stalfos_1_keys(),
        d5_after_stalfos_from_stairs()
    )
end

function d5_north_of_crossroads()
    return all(
        d5_after_stalfos(),
        any(
            has("feather"),
            all(
                difficulty("hard"),
                has("hookshot")
            )
        )
    )
end

function d5_third_arena()
    return all(
        d5_north_of_crossroads(),
        has("sword1"),
        any(
            has("bomb"),
            difficulty("hell")
        )
    )
end

function d5_before_boss()
    return any(
        all(
            d5_after_keyblock_boss(),
            has("hookshot")
        ),
        all(
            difficulty("hard"),
            d5_after_stalfos_1_keys(),
            has("feather"),
            has("boots"),
            attack_hookshot_powder()
        ),
        all(
            difficulty("hell"),
            d5_after_stalfos_1_keys(),
            has("feather"),
            has("sword1")
        )
    )
end

function d5_can_beat_boss()
    return all(
        has("hookshot"),
        has("sword1")
    )
end

-- locations

function d5_entrance_hookshottable_chest() -- start_hookshot_chest
    return any(
        has("hookshot"),
        all(
            difficulty("glitched"),
            has("feather")
        ),
        all(
            difficulty("hell"),
            has("boots")
        )
    )
end

function d5_spark_two_iron_mask_chest() -- compass
    return attack_hookshot_powder()
end

function d5_crystal_key() -- fourth_stalfos_area
    return all(
        d5_spark_two_iron_mask_chest(),
        has("sword1"),
        any(
            has("feather"),
            all(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_flying_bomb_chest_south() -- 0x19B
    return all(
        d5_area2(),
        attack_hookshot_powder()
    )
end

function d5_three_iron_mask_chest() -- blade_trap_chest
    return all(
        d5_area2(),
        any(
            has("hookshot"),
            all(
                difficulty("hard"),
                has("feather"),
                attack_hookshot_powder()
            ),
            all(
                difficulty("hell"),
                has("boots"),
                attack_hookshot_powder()
            )
        )
    )
end

function d5_hookshot_note_chest() -- 0x196 / after_stalfos
    return d5_after_stalfos()
end

function d5_two_stalfos_star_pit_chest() -- first_bridge_chest
    return all(
        d4_north_crossroads(),
        any(
            has("hookshot"),
            all(
                has("feather"),
                has("boots")
            ),
            all(
                difficulty("hard"),
                has("feather")
            ),
            all(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_swort_stalfos_star_bridge_chest() -- north_bridge_chest
    return all(
        d5_north_of_crossroads(),
        any(
            has("hookshot"),
            all(
                difficulty("glitched"),
                has("feather")
            ),
            all(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_flying_bomb_chest_east() -- east_bridge_chest
    return all(
        d5_north_of_crossroads(),
        any(
            has("hookshot"),
            all(
                difficulty("glitched"),
                has("feather")
            ),
            all(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_master_stalfos_item() -- m_stalfos_drop
    return all(
        d5_third_arena(),
        has("sword1"),
        any(
            all(
                has("bomb"),
                has("feather")
            ),
            all(
                difficulty("hell"),
                has("feather")
            ),
            all(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_three_stalfos_chest() -- stone_tablet
    return all(
        d5_north_of_crossroads(),
        has("bracelet1"),
        attack_skeleton()
    )
end

function d5_nightmare_key_torch_cross_chest() -- boss_key
    return all(
        d5_after_stalfos(),
        has("flippers"),
        any(
            has("hookshot"),
            all(
                has("feather"),
                has("boots")
            ),
            difficulty("hell")
        )
    )
end

function d5_boss_kill()
    return all(
        d5_before_boss(),
        has("nightmare_key5"),
        d5_can_beat_boss()
    )
end

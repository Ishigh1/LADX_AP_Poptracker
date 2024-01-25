-- utils

function d5_access()
    return andA(
        can_access("Martha's Bay Water"),
        has("flippers")
    )
end

function d5_area2()
    return has("small_key5")
end

function d5_can_beat_miniboss()
    return orA(
        has("bow"),
        has("hookshot")
    )
end

function d5_post_gohma_1_keys()
    return orA(
        andA(
            difficulty("glitched"),
            d5_area2(),
            has("hookshot")
        ),
        andA(
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
    return andA(
        d5_area2(),
        has("hookshot"),
        d5_can_beat_miniboss(),
        has("small_key5", 2)
    )
end

local function can_move_from_post_gohma_to_staircase_before_boss()
    return orA(
        andA(
            has("hookshot"),
            orA(
                has("feather"),
                andA(
                    difficulty("hard"),
                    has("boots")
                )
            )
        ),
        andA(
            difficulty("hell"),
            has("boots"),
            has("feather")
        )
    )
end

function d5_staircase_before_boss_1_keys()
    return orA(
        andA(
            d5_after_stalfos_1_keys(),
            orA(
                has("feather"),
                andA(
                    difficulty("hard"),
                    has("boots")
                )
            ),
            attack_hookshot_powder()
        ),
        andA(
            d5_post_gohma_1_keys(),
            can_move_from_post_gohma_to_staircase_before_boss()
        )
    )
end

function d5_staircase_before_boss_2_keys()
    return andA(
        d5_post_gohma_2_keys(),
        can_move_from_post_gohma_to_staircase_before_boss()
    )
end

function d5_staircase_before_boss()
    return orA(
        d5_staircase_before_boss_1_keys(),
        d5_staircase_before_boss_2_keys()
    )
end

function d5_after_keyblock_boss_1_keys()
    return andA(
        difficulty("hard"),
        d5_after_stalfos_1_keys(),
        has("feather"),
        attack_hookshot_powder()
    )
end

function d5_after_keyblock_boss_2_keys()
    return andA(
        d5_staircase_before_boss_1_keys(),
        has("small_key5", 2, 3)
    )
end

function d5_after_keyblock_boss_3_keys()
    return andA(
        d5_staircase_before_boss_2_keys(),
        has("small_key5", 3)
    )
end

function d5_after_keyblock_boss()
    return orA(
        d5_after_keyblock_boss_1_keys(),
        d5_after_keyblock_boss_2_keys(),
        d5_after_keyblock_boss_3_keys()
    )
end

function d5_after_stalfos_1_keys()
    return andA(
        d5_area2(),
        has("sword1"),
        orA(
            has("bomb"),
            difficulty("hell")
        )
    )
end

function d5_after_stalfos_from_stairs()
    return orA(
        andA(
            difficulty("hard"),
            d5_after_keyblock_boss(),
            has("feather"),
            attack_hookshot_powder()
        ),
        andA(
            difficulty("glitched"),
            d5_staircase_before_boss(),
            has("boots"),
            has("feather"),
            orA(
                has("sword1"),
                has("bow"),
                has("rod")
            )
        ),
        andA(
            difficulty("hell"),
            d5_staircase_before_boss(),
            has("feather"),
            has("sword1")
        )
    )
end

function d5_after_stalfos()
    return orA(
        d5_after_stalfos_1_keys(),
        d5_after_stalfos_from_stairs()
    )
end

function d5_north_of_crossroads()
    return andA(
        d5_after_stalfos(),
        orA(
            has("feather"),
            andA(
                difficulty("hard"),
                has("hookshot")
            )
        )
    )
end

function d5_third_arena()
    return andA(
        d5_north_of_crossroads(),
        has("sword1"),
        orA(
            has("bomb"),
            difficulty("hell")
        )
    )
end

function d5_before_boss()
    return orA(
        andA(
            d5_after_keyblock_boss(),
            has("hookshot")
        ),
        andA(
            difficulty("hard"),
            d5_after_stalfos_1_keys(),
            has("feather"),
            has("boots"),
            attack_hookshot_powder()
        ),
        andA(
            difficulty("hell"),
            d5_after_stalfos_1_keys(),
            has("feather"),
            has("sword1")
        )
    )
end

function d5_can_beat_boss()
    return andA(
        has("hookshot"),
        has("sword1")
    )
end

-- locations

function d5_entrance_hookshottable_chest() -- start_hookshot_chest
    return orA(
        has("hookshot"),
        andA(
            difficulty("glitched"),
            has("feather")
        ),
        andA(
            difficulty("hell"),
            has("boots")
        )
    )
end

function d5_spark_two_iron_mask_chest() -- compass
    return attack_hookshot_powder()
end

function d5_crystal_key() -- fourth_stalfos_area
    return andA(
        d5_spark_two_iron_mask_chest(),
        has("sword1"),
        orA(
            has("feather"),
            andA(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_flying_bomb_chest_south() -- 0x19B
    return andA(
        d5_area2(),
        attack_hookshot_powder()
    )
end

function d5_three_iron_mask_chest() -- blade_trap_chest
    return andA(
        d5_area2(),
        orA(
            has("hookshot"),
            andA(
                difficulty("hard"),
                has("feather"),
                attack_hookshot_powder()
            ),
            andA(
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
    return andA(
        d4_north_crossroads(),
        orA(
            has("hookshot"),
            andA(
                has("feather"),
                has("boots")
            ),
            andA(
                difficulty("hard"),
                has("feather")
            ),
            andA(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_swort_stalfos_star_bridge_chest() -- north_bridge_chest
    return andA(
        d5_north_of_crossroads(),
        orA(
            has("hookshot"),
            andA(
                difficulty("glitched"),
                has("feather")
            ),
            andA(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_flying_bomb_chest_east() -- east_bridge_chest
    return andA(
        d5_north_of_crossroads(),
        orA(
            has("hookshot"),
            andA(
                difficulty("glitched"),
                has("feather")
            ),
            andA(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_master_stalfos_item() -- m_stalfos_drop
    return andA(
        d5_third_arena(),
        has("sword1"),
        orA(
            andA(
                has("bomb"),
                has("feather")
            ),
            andA(
                difficulty("hell"),
                has("feather")
            ),
            andA(
                difficulty("hell"),
                has("boots")
            )
        )
    )
end

function d5_three_stalfos_chest() -- stone_tablet
    return andA(
        d5_north_of_crossroads(),
        has("bracelet1"),
        attack_skeleton()
    )
end

function d5_nightmare_key_torch_cross_chest() -- boss_key
    return andA(
        d5_after_stalfos(),
        has("flippers"),
        orA(
            has("hookshot"),
            andA(
                has("feather"),
                has("boots")
            ),
            difficulty("hell")
        )
    )
end

function d5_boss_kill()
    return andA(
        d5_before_boss(),
        has("nightmare_key5"),
        d5_can_beat_boss()
    )
end

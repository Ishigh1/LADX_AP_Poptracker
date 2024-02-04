-- utils

function d4_access()
    return andA(
        can_access("Outside D4"),
        can_access(tal_tal_heights),
        has("angler_key")
    )
end

function d4_right_of_entrance()
    return orA(
        andA(
            has("shield1"),
            attack_hookshot_powder()
        ),
        andA(
            d4_after_double_lock_0_keys(),
            has("small_key4", 2, 5)
        )
    )
end

function d4_rightside_crossroads()
    return orA(
        andA(
            has("feather"),
            orA(
                has("boots"),
                difficulty("hard")
            )
        ),
        andA(
            difficulty("hell"),
            has("boots"),
            orA(
                has("hookshot"),
                has("small_key4", 2, 5)
            )
        )
    )
end

function d4_after_double_lock_0_keys()
    return orA(
        andA(
            difficulty("hard"),
            has("feather")
        ),
        andA(
            difficulty("hell"),
            has("boots")
        )
    )
end

function d4_after_double_lock_2_keys()
    return andA(
        d4_right_of_entrance(),
        has("small_key4", 2),
        orA(
            has("feather"),
            has("flippers")
        )
    )
end

function d4_after_double_lock()
    return orA(
        d4_after_double_lock_0_keys(),
        d4_after_double_lock_2_keys()
    )
end

function d4_north_crossroads_0_keys()
    return orA(
        andA(
            difficulty("hard"),
            has("feather")
        ),
        andA(
            difficulty("hell"),
            has("boots"),
            has("hookshot")
        )
    )
end

function d4_north_crossroads_2_keys()
    return andA(
        d4_after_double_lock_2_keys(),
        has("feather"),
        has("boots")
    )
end

function d4_north_crossroads()
    return orA(
        d4_north_crossroads_0_keys(),
        d4_north_crossroads_2_keys()
    )
end

function d4_before_miniboss_1_keys()
    return andA(
        d4_north_crossroads_0_keys(),
        has("small_key4", 1, 3)
    )
end

function d4_before_miniboss_3_keys()
    return andA(
        d4_north_crossroads_2_keys(),
        has("small_key4", 3)
    )
end

function d4_before_miniboss()
    return orA(
        d4_before_miniboss_1_keys(),
        d4_before_miniboss_3_keys()
    )
end

function d4_left_water_area_1_keys()
    return orA(
        andA(
            d4_before_miniboss_1_keys(),
            orA(
                has("feather"),
                has("flippers")
            )
        ),
        andA(
            d4_terrace_zols_chest_1_keys(),
            attack_hookshot_powder()
        )
    )
end

function d4_left_water_area_2_keys()
    return andA(
        d4_terrace_zols_chest_2_keys(),
        attack_hookshot_powder()
    )
end

function d4_left_water_area_3_keys()
    return orA(
        andA(
            d4_before_miniboss_3_keys(),
            orA(
                has("feather"),
                has("flippers")
            )
        ),
        andA(
            d4_terrace_zols_chest_3_keys(),
            attack_hookshot_powder()
        )
    )
end

function d4_left_water_area_4_keys()
    return andA(
        d4_terrace_zols_chest_4_keys(),
        attack_hookshot_powder()
    )
end

function d4_left_water_area()
    return orA(
        d4_left_water_area_1_keys(),
        d4_left_water_area_2_keys(),
        d4_left_water_area_3_keys(),
        d4_left_water_area_4_keys()
    )
end

function d4_can_beat_miniboss()
    return has("sword1")
end

function d4_post_miniboss_2_keys()
    return andA(
        d4_before_miniboss_1_keys(),
        has("small_key4", 2, 5),
        d4_can_beat_miniboss()
    )
end

function d4_post_miniboss_4_keys()
    return andA(
        d4_before_miniboss_3_keys(),
        has("small_key4", 4, 5),
        d4_can_beat_miniboss()
    )
end

function d4_terrace_zols_chest_1_keys()
    return andA(
        d4_before_miniboss_1_keys(),
        orA(
            has("flippers"),
            andA(
                difficulty("glitched"),
                has("feather")
            )
        )
    )
end

function d4_terrace_zols_chest_2_keys()
    return andA(
        d4_post_miniboss_2_keys(),
        orA(
            has("bracelet1"),
            difficulty("hard")
        )
    )
end

function d4_terrace_zols_chest_3_keys()
    return andA(
        d4_before_miniboss_3_keys(),
        orA(
            has("flippers"),
            andA(
                difficulty("glitched"),
                has("feather")
            )
        )
    )
end

function d4_terrace_zols_chest_4_keys()
    return andA(
        d4_post_miniboss_4_keys(),
        orA(
            has("bracelet1"),
            difficulty("hard")
        )
    )
end

function d4_terrace_zols_chest()
    return orA(
        d4_terrace_zols_chest_1_keys(),
        d4_terrace_zols_chest_2_keys(),
        d4_terrace_zols_chest_3_keys(),
        d4_terrace_zols_chest_4_keys()
    )
end

function d4_before_boss_base_2_keys()
    return andA(
        d4_before_miniboss_1_keys(),
        has("small_key4", 2, 5)
    )
end

function d4_before_boss_base_4_keys()
    return andA(
        d4_before_miniboss_3_keys(),
        has("small_key4", 4, 5)
    )
end

function d4_before_boss()
    return orA(
        andA(
            orA(
                d4_before_boss_base_2_keys(),
                d4_before_boss_base_4_keys()
            ),
            attack_hookshot(),
            has("flippers")
        ),
        andA(
            difficulty("hard"),
            d4_left_water_area(),
            has("feather")
        ),
        andA(
            difficulty("hell"),
            d4_left_water_area(),
            has("boots")
        )
    )
end

function d4_can_beat_boss()
    return andA(
        has("flippers"),
        orA(
            has("sword1"),
            has("rod"),
            has("bow"),
            andA(has("bomb"), difficulty("hard"))
        )
    )
end

-- locations

function d4_two_spiked_beetle_zol_chest()
    return d4_right_of_entrance()
end

function d4_crystal_chest()
    return andA(
        d4_right_of_entrance(),
        has("shield1"),
        has("sword1")
    )
end

function d4_lower_bomb_locked_watery_chest() -- pushable_block_chest
    return andA(
        d4_rightside_crossroads(),
        orA(
            has("bomb"),
            andA(
                difficulty("glitched"),
                has("flippers")
            ),
            andA(
                difficulty("hell"),
                has("boots")
            ),
            andA(
                difficulty("hell"),
                has("feather")
            )
        )
    )
end

function d4_upper_bomb_locked_watery_chest() -- puddle_crack_block_chest
    return andA(
        d4_rightside_crossroads(),
        orA(
            has("bomb"),
            has("flippers"),
            andA(
                difficulty("hard"),
                has("feather")
            )
        )
    )
end

function d4_flipper_locked_before_boots_pit_chest() -- dungeon4_puddle_before_crossroads
    return andA(
        d4_after_double_lock(),
        orA(
            has("flippers"),
            andA(
                difficulty("hard"),
                has("feather")
            ),
            andA(
                difficulty("hell"),
                has("boots"),
                has("hookshot")
            )
        )
    )
end

function d4_pit_key() -- sidescroller_key
    return orA(
        andA(
            d4_before_miniboss(),
            attack_hookshot_powder(),
            has("flippers")
        ),
        andA(
            difficulty("hard"),
            d4_before_miniboss(),
            has("feather"),
            has("boomerang")
        ),
        andA(
            difficulty("hard"),
            d4_before_miniboss(),
            has("bracelet1"),
            has("flippers")
        ),
        andA(
            difficulty("glitched"),
            d4_before_miniboss(),
            has("feather"),
            orA(
                attack_hookshot_powder(),
                has("bracelet1")
            )
        )
    )
end

function d4_flipper_locked_after_boots_pit_chest() -- center_puddle_chest
    return andA(
        d4_before_miniboss(),
        orA(
            has("flippers"),
            andA(
                difficulty("hard"),
                has("feather")
            )
        )
    )
end

function d4_blob_chest()
    return d4_left_water_area()
end

function d4_spark_chest()
    return d4_left_water_area()
end

function d4_flippers_chest()
    return d4_terrace_zols_chest()
end

function d4_nightmare_key_ledge_chest() -- to_the_nightmare_key
    return orA(
        andA(
            d4_left_water_area(),
            has("feather"),
            orA(
                difficulty("hard"),
                has("flippers"),
                has("boots")
            )
        ),
        andA(
            difficulty("hell"),
            d4_left_water_area(),
            has("flippers"),
            has("boots")
        )
    )
end

function d4_boss_kill()
    return andA(
        d4_before_boss(),
        has("nightmare_key4"),
        d4_can_beat_boss()
    )
end

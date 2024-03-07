-- utils

function d4_access()
    return all(
        can_access("Outside D4"),
        can_access(tal_tal_heights),
        has("angler_key")
    )
end

function d4_right_of_entrance()
    return any(
        all(
            has("shield1"),
            attack_hookshot_powder()
        ),
        all(
            d4_after_double_lock_0_keys(),
            has("small_key4", 2, 5)
        )
    )
end

function d4_rightside_crossroads()
    return any(
        all(
            has("feather"),
            any(
                has("boots"),
                difficulty("hard")
            )
        ),
        all(
            difficulty("hell"),
            has("boots"),
            any(
                has("hookshot"),
                has("small_key4", 2, 5)
            )
        )
    )
end

function d4_after_double_lock_0_keys()
    return any(
        all(
            difficulty("hard"),
            has("feather")
        ),
        all(
            difficulty("hell"),
            has("boots")
        )
    )
end

function d4_after_double_lock_2_keys()
    return all(
        d4_right_of_entrance(),
        has("small_key4", 2),
        any(
            has("feather"),
            has("flippers")
        )
    )
end

function d4_after_double_lock()
    return any(
        d4_after_double_lock_0_keys(),
        d4_after_double_lock_2_keys()
    )
end

function d4_north_crossroads_0_keys()
    return any(
        all(
            difficulty("hard"),
            has("feather")
        ),
        all(
            difficulty("hell"),
            has("boots"),
            has("hookshot")
        )
    )
end

function d4_north_crossroads_2_keys()
    return all(
        d4_after_double_lock_2_keys(),
        has("feather"),
        has("boots")
    )
end

function d4_north_crossroads()
    return any(
        d4_north_crossroads_0_keys(),
        d4_north_crossroads_2_keys()
    )
end

function d4_before_miniboss_1_keys()
    return all(
        d4_north_crossroads_0_keys(),
        has("small_key4", 1, 3)
    )
end

function d4_before_miniboss_3_keys()
    return all(
        d4_north_crossroads_2_keys(),
        has("small_key4", 3)
    )
end

function d4_before_miniboss()
    return any(
        d4_before_miniboss_1_keys(),
        d4_before_miniboss_3_keys()
    )
end

function d4_left_water_area_1_keys()
    return any(
        all(
            d4_before_miniboss_1_keys(),
            any(
                has("feather"),
                has("flippers")
            )
        ),
        all(
            d4_terrace_zols_chest_1_keys(),
            attack_hookshot_powder()
        )
    )
end

function d4_left_water_area_2_keys()
    return all(
        d4_terrace_zols_chest_2_keys(),
        attack_hookshot_powder()
    )
end

function d4_left_water_area_3_keys()
    return any(
        all(
            d4_before_miniboss_3_keys(),
            any(
                has("feather"),
                has("flippers")
            )
        ),
        all(
            d4_terrace_zols_chest_3_keys(),
            attack_hookshot_powder()
        )
    )
end

function d4_left_water_area_4_keys()
    return all(
        d4_terrace_zols_chest_4_keys(),
        attack_hookshot_powder()
    )
end

function d4_left_water_area()
    return any(
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
    return all(
        d4_before_miniboss_1_keys(),
        has("small_key4", 2, 5),
        d4_can_beat_miniboss()
    )
end

function d4_post_miniboss_4_keys()
    return all(
        d4_before_miniboss_3_keys(),
        has("small_key4", 4, 5),
        d4_can_beat_miniboss()
    )
end

function d4_terrace_zols_chest_1_keys()
    return all(
        d4_before_miniboss_1_keys(),
        any(
            has("flippers"),
            all(
                difficulty("glitched"),
                has("feather")
            )
        )
    )
end

function d4_terrace_zols_chest_2_keys()
    return all(
        d4_post_miniboss_2_keys(),
        any(
            has("bracelet1"),
            difficulty("hard")
        )
    )
end

function d4_terrace_zols_chest_3_keys()
    return all(
        d4_before_miniboss_3_keys(),
        any(
            has("flippers"),
            all(
                difficulty("glitched"),
                has("feather")
            )
        )
    )
end

function d4_terrace_zols_chest_4_keys()
    return all(
        d4_post_miniboss_4_keys(),
        any(
            has("bracelet1"),
            difficulty("hard")
        )
    )
end

function d4_terrace_zols_chest()
    return any(
        d4_terrace_zols_chest_1_keys(),
        d4_terrace_zols_chest_2_keys(),
        d4_terrace_zols_chest_3_keys(),
        d4_terrace_zols_chest_4_keys()
    )
end

function d4_before_boss_base_2_keys()
    return all(
        d4_before_miniboss_1_keys(),
        has("small_key4", 2, 5)
    )
end

function d4_before_boss_base_4_keys()
    return all(
        d4_before_miniboss_3_keys(),
        has("small_key4", 4, 5)
    )
end

function d4_before_boss()
    return any(
        all(
            any(
                d4_before_boss_base_2_keys(),
                d4_before_boss_base_4_keys()
            ),
            attack_hookshot(),
            has("flippers")
        ),
        all(
            difficulty("hard"),
            d4_left_water_area(),
            has("feather")
        ),
        all(
            difficulty("hell"),
            d4_left_water_area(),
            has("boots")
        )
    )
end

function d4_can_beat_boss()
    return all(
        has("flippers"),
        any(
            has("sword1"),
            has("rod"),
            has("bow"),
            all(has("bomb"), difficulty("hard"))
        )
    )
end

-- locations

function d4_two_spiked_beetle_zol_chest()
    return d4_right_of_entrance()
end

function d4_crystal_chest()
    return all(
        d4_right_of_entrance(),
        has("shield1"),
        has("sword1")
    )
end

function d4_lower_bomb_locked_watery_chest() -- pushable_block_chest
    return all(
        d4_rightside_crossroads(),
        any(
            has("bomb"),
            all(
                difficulty("glitched"),
                has("flippers")
            ),
            all(
                difficulty("hell"),
                has("boots")
            ),
            all(
                difficulty("hell"),
                has("feather")
            )
        )
    )
end

function d4_upper_bomb_locked_watery_chest() -- puddle_crack_block_chest
    return all(
        d4_rightside_crossroads(),
        any(
            has("bomb"),
            has("flippers"),
            all(
                difficulty("hard"),
                has("feather")
            )
        )
    )
end

function d4_flipper_locked_before_boots_pit_chest() -- dungeon4_puddle_before_crossroads
    return all(
        d4_after_double_lock(),
        any(
            has("flippers"),
            all(
                difficulty("hard"),
                has("feather")
            ),
            all(
                difficulty("hell"),
                has("boots"),
                has("hookshot")
            )
        )
    )
end

function d4_pit_key() -- sidescroller_key
    return any(
        all(
            d4_before_miniboss(),
            attack_hookshot_powder(),
            has("flippers")
        ),
        all(
            difficulty("hard"),
            d4_before_miniboss(),
            has("feather"),
            has("boomerang")
        ),
        all(
            difficulty("hard"),
            d4_before_miniboss(),
            has("bracelet1"),
            has("flippers")
        ),
        all(
            difficulty("glitched"),
            d4_before_miniboss(),
            has("feather"),
            any(
                attack_hookshot_powder(),
                has("bracelet1")
            )
        )
    )
end

function d4_flipper_locked_after_boots_pit_chest() -- center_puddle_chest
    return all(
        d4_before_miniboss(),
        any(
            has("flippers"),
            all(
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
    return any(
        all(
            d4_left_water_area(),
            has("feather"),
            any(
                difficulty("hard"),
                has("flippers"),
                has("boots")
            )
        ),
        all(
            difficulty("hell"),
            d4_left_water_area(),
            has("flippers"),
            has("boots")
        )
    )
end

function d4_boss_kill()
    return all(
        d4_before_boss(),
        has("nightmare_key4"),
        d4_can_beat_boss()
    )
end

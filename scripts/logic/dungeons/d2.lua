-- utils

function d2_keys_for_dead_ends()
    return has("small_key2", 1, 5)
end

function d2_post_torches()
    return fire()
end

function d2_post_switch()
    return all(d2_post_torches(), attack_hookshot())
end

function d2_post_holes()
    return all(d2_post_switch(), any(
        has("feather"),
        all(has("boots"), difficulty("hell")),
        all(has("hookshot"), difficulty("hell"))
    ))
end

function d2_post_first_key()
    return all(
        d2_post_holes(), has("small_key2", 1, 3)
    )
end

function d2_post_miniboss()
    return all(
        d2_post_first_key(),
        attack_hookshot(),
        any(
            has("feather"),
            all(
                has("boots"),
                difficulty("hell")
            )
        )
    )
end

function d2_switch_corridor()
    return all(
        d2_post_miniboss(),
        any(
            has("bracelet1"),
            all(has("feather"), difficulty("glitched"))
        )
    )
end

function d2_pre_stairs()
    return all(
        d2_switch_corridor(),
        has("small_key2", 2, 5),
        any(
            has("bracelet1"),
            all(
                has("hookshot"),
                attack_pols_voice(),
                difficulty("hell")
            )
        )
    )
end

function d2_post_stairs()
    return all(
        d2_pre_stairs(),
        any(
            has("bracelet1"),
            all(has("bomb"), difficulty("hell")),
            all(has("boots"), has("feather"), difficulty("hell"))
        )
    )
end

function d2_boss_access()
    return all(
        d2_post_stairs(),
        has("nightmare_key2"),
        any(has("feather"),
            all(has("boots"), has("hookshot"), difficulty("hell"))
        )
    )
end

function d2_boss_kill()
    return all(
        d2_boss_access(),
        has("bracelet1"),
        any(has("sword1"), has("rod"))
    )
end

-- locations

function d2_hardhat_beetle_pit_chest()
    return all(
        d2_keys_for_dead_ends(),
        attack_hookshot_powder(),
        any(has("feather"), has("powder"))
    )
end

function d2_mask_mimic_chest()
    return all(
        d2_keys_for_dead_ends(),
        any(rear_attack(), rear_attack_range())
    )
end

function d2_two_stalfos_key()
    return all(d2_post_torches(), attack_skeleton())
end

function d2_mask_mimic_key()
    return any(
        all(d2_post_torches(), rear_attack()),
        all(d2_post_holes(), rear_attack_range())
    )
end

function d2_boo_buddies_room_chest()
    return all(
        d2_post_miniboss(),
        has("small_key2", 2, 5),
        any(
            has("bow"),
            fire(),
            all(has("sword1"), difficulty("glitched"))
        ))
end

function d2_enemy_order_room_chest()
    return all(
        d2_switch_corridor(),
        attack_hookshot_powder(),
        any(has("bracelet1"), attack_pols_voice())
    )
end

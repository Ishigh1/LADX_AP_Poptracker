-- utils

function d2_keys_for_dead_ends()
    return has("small_key2", 1, 5)
end

function d2_post_torches()
    return fire()
end

function d2_post_switch()
    return andA(d2_post_torches(), attack_hookshot())
end

function d2_post_holes()
    return andA(d2_post_switch(), orA(
        has("feather"),
        andA(has("boots"), difficulty("hell")),
        andA(has("hookshot"), difficulty("hell"))
    ))
end

function d2_post_first_key()
    return andA(
        d2_post_holes(), has("small_key2", 1, 3)
    )
end

function d2_post_miniboss()
    return andA(
        d2_post_first_key(),
        attack_hookshot(),
        orA(
            has("feather"),
            andA(
                has("boots"),
                difficulty("hell")
            )
        )
    )
end

function d2_switch_corridor()
    return andA(
        d2_post_miniboss(),
        orA(
            has("bracelet1"),
            andA(has("feather"), difficulty("glitched"))
        )
    )
end

function d2_pre_stairs()
    return andA(
        d2_switch_corridor(),
        has("small_key2", 2, 5),
        orA(
            has("bracelet1"),
            andA(
                has("hookshot"),
                attack_pols_voice(),
                difficulty("hell")
            )
        )
    )
end

function d2_post_stairs()
    return andA(
        d2_pre_stairs(),
        orA(
            has("bracelet1"),
            andA(has("bomb"), difficulty("hell")),
            andA(has("boots"), has("feather"), difficulty("hell"))
        )
    )
end

function d2_boss_access()
    return andA(
        d2_post_stairs(),
        has("nightmare_key2"),
        orA(has("feather"),
            andA(has("boots"), has("hookshot"), difficulty("hell"))
        )
    )
end

function d2_boss_kill()
    return andA(
        d2_boss_access(),
        has("bracelet1"),
        orA(has("sword1"), has("rod"))
    )
end

-- locations

function d2_hardhat_beetle_pit_chest()
    return andA(
        d2_keys_for_dead_ends(),
        attack_hookshot_powder(),
        orA(has("feather"), has("powder"))
    )
end

function d2_mask_mimic_chest()
    return andA(
        d2_keys_for_dead_ends(),
        orA(rear_attack(), rear_attack_range())
    )
end

function d2_two_stalfos_key()
    return andA(d2_post_torches(), attack_skeleton())
end

function d2_mask_mimic_key()
    return orA(
        andA(d2_post_torches(), rear_attack()),
        andA(d2_post_holes(), rear_attack_range())
    )
end

function d2_boo_buddies_room_chest()
    return andA(
        d2_post_miniboss(),
        has("small_key2", 2, 5),
        orA(
            has("bow"),
            fire(),
            andA(has("sword1"), difficulty("glitched"))
        ))
end

function d2_enemy_order_room_chest()
    return andA(
        d2_switch_corridor(),
        attack_hookshot_powder(),
        orA(has("bracelet1"), attack_pols_voice())
    )
end

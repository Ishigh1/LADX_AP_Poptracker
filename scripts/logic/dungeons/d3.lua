-- utils

function d3_access()
    return all(
        can_access("Ukuku Prairie/Outside D3"),
        has("slime_key")
    )
end

function d3_area2()
    return A(has("bracelet1"))
end

function d3_area3()
    return all(
        d3_area2(),
        any(
            attack_hookshot_powder(),
            has("boots")
        )
    )
end

function d3_dead_ends()
    return all(
        d3_area3(),
        has("small_key3", 1, 8)
    )
end

function d3_area_right()
    return all(
        d3_area3(),
        has("small_key3", 1, 4)
    )
end

function d3_can_beat_miniboss()
    return has("bomb")
end

function d3_pre_boss()
    return all(
        d3_area_right(),
        has("small_key3", 5, 8),
        any(
            all(
                attack_hookshot_no_boomerang(),
                has("feather"),
                has("boots")
            ),
            all(
                difficulty("hell"),
                attack_hookshot_no_boomerang(),
                has("feather"),
                has("bracelet1")
            ),
            all(
                difficulty("hell"),
                attack_hookshot_no_boomerang(),
                has("boots"),
                medicine()
            )
        )
    )
end

function d3_can_beat_boss()
    return all(
        has("sword1"),
        has("boots")
    )
end

function d3_boss_kill()
    return all(
        d3_pre_boss(),
        has("nightmare_key3"),
        d3_can_beat_boss()
    )
end

-- locations

function d3_vacuum_mouth_chest()
    return any(
        has("boots"),
        all(has("hookshot"), difficulty("hard"))
    )
end

function d3_two_bombite_sword_stalfos_zol_chest()
    return all(
        d3_area2(),
        attack_hookshot_powder()
    )
end

function d3_four_zol_chest()
    return d3_area2()
end

function d3_two_stalfos_zol_chest()
    return any(
        all(
            d3_area2(),
            has("boots"),
            attack_skeleton()
        ),
        all(
            difficulty("glitched"),
            d3_area3(),
            has("hookshot")
        ),
        all(
            difficulty("hell"),
            d3_dead_ends(),
            has("feather"),
            any(
                has("sword1"),
                rear_attack_range()
            )
        )
    )
end

function d3_north_key_room_key()
    return all(
        d3_dead_ends(),
        any(
            attack_skeleton(),
            all(has("bracelet1"), difficulty("hard"))
        )
    )
end

function d3_sword_stalfos_keese_switch_chest()
    return any(
        all(
            d3_dead_ends(),
            attack_hookshot()
        ),
        all(
            difficulty("glitched"),
            d3_area2(),
            attack_hookshot_powder(),
            has("feather")
        ),
        all(
            difficulty("hell"),
            d3_area2(),
            has("boots"),
            rear_attack_range()
        )
    )
end

function d3_zol_switch_chest()
    return any(
        all(
            d3_dead_ends(),
            attack_hookshot()
        ),
        all(
            difficulty("glitched"),
            d3_area3(),
            has("feather"),
            any(has("boots"), has("hookshot"))
        ),
        all(
            difficulty("hell"),
            d3_area3(),
            has("boots"),
            rear_attack_range()
        )
    )
end

function d3_west_key_room_key()
    return all(
        d3_dead_ends(),
        any(
            attack_hookshot(),
            all(has("shield1"), difficulty("hell"))
        )
    )
end

function d3_south_key_room_key()
    return all(
        d3_dead_ends(),
        any(
            attack_hookshot(),
            all(has("bracelet1"), difficulty("hard")),
            all(has("shield1"), difficulty("hell"))
        )
    )
end

function d3_after_stairs_key()
    return all(
        d3_area_right(),
        attack_hookshot_powder()
    )
end

function d3_tile_arrow_ledge_chest()
    return all(
        d3_area_right(),
        any(
            all(
                has("bomb"),
                has("feather"),
                any(has("boots"), difficulty("glitched"))
            ),
            all(
                difficulty("hell"),
                has("feather"),
                has("shield1")
            ),
            all(
                difficulty("hell"),
                has("bomb"),
                has("rod"),
                has("sword1")
            )
        )
    )
end

function d3_boots_chest()
    return any(
        all(
            d3_area_right(),
            attack_hookshot_powder(),
            d3_can_beat_miniboss()
        ),
        all(
            difficulty("glitched"),
            d3_area_right(),
            has("feather"),
            has("small_key3", 3, 6)
        )
    )
end

function d3_three_zol_stalfos_chest()
    return all(
        d3_area_right(),
        any(
            has("sword1"),
            has("bomb"),
            all(
                has("shield1"),
                attack_hookshot_powder()
            )
        )
    )
end

function d3_three_bombite_key()
    return any(
        all(
            d3_three_zol_stalfos_chest(),
            has("bomb")
        ),
        all(
            difficulty("hard"),
            d3_area_right(),
            has("boomerang")
        ),
        all(
            difficulty("hell"),
            can_access("Key Cavern/Three Zol, Stalfos Chest"),
            any(
                rear_attack_range(),
                all(
                    any(has("feather"), has("boots")),
                    any(has("sword1"), has("powder"))
                )
            )
        )
    )
end

function d3_two_zol_two_pairodd_key()
    return all(
        d3_area_right(),
        attack_hookshot_no_boomerang()
    )
end

function d3_two_zol_stalfos_ledge_chest()
    return all(
        d3_area_right(),
        attack_skeleton()
    )
end

function d3_nightmare_door_key()
    return d3_pre_boss()
end

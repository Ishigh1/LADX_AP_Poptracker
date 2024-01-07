-- utils

function d3_access()
    return andA(
        can_access("Ukuku Prairie/Outside D3"),
        has("slime_key")
    )
end

function d3_area2()
    return A(has("bracelet1"))
end

function d3_area3()
    return andA(
        d3_area2(),
        orA(
            attack_hookshot_powder(),
            has("boots")
        )
    )
end

function d3_dead_ends()
    return andA(
        d3_area3(),
        has("small_key3", 1, 8)
    )
end

function d3_area_right()
    return andA(
        d3_area3(),
        has("small_key3", 1, 4)
    )
end

function d3_can_beat_miniboss()
    return has("bomb")
end

function d3_pre_boss()
    return andA(
        d3_area_right(),
        has("small_key3", 5, 8),
        orA(
            andA(
                attack_hookshot_no_boomerang(),
                has("feather"),
                has("boots")
            ),
            andA(
                difficulty("hell"),
                attack_hookshot_no_boomerang(),
                has("feather"),
                has("bracelet1")
            ),
            andA(
                difficulty("hell"),
                attack_hookshot_no_boomerang(),
                has("boots"),
                medicine()
            )
        )
    )
end

function d3_can_beat_boss()
    return andA(
        has("sword1"),
        has("boots")
    )
end

function d3_boss_kill()
    return andA(
        d3_pre_boss(),
        has("nightmare_key3"),
        d3_can_beat_boss()
    )
end

-- locations

function d3_vacuum_mouth_chest()
    return orA(
        has("boots"),
        andA(has("hookshot"), difficulty("hard"))
    )
end

function d3_two_bombite_sword_stalfos_zol_chest()
    return andA(
        d3_area2(),
        attack_hookshot_powder()
    )
end

function d3_four_zol_chest()
    return d3_area2()
end

function d3_two_stalfos_zol_chest()
    return orA(
        andA(
            d3_area2(),
            has("boots"),
            attack_skeleton()
        ),
        andA(
            difficulty("glitched"),
            d3_area3(),
            has("hookshot")
        ),
        andA(
            difficulty("hell"),
            d3_dead_ends(),
            has("feather"),
            orA(
                has("sword1"),
                rear_attack_range()
            )
        )
    )
end

function d3_north_key_room_key()
    return andA(
        d3_dead_ends(),
        orA(
            attack_skeleton(),
            andA(has("bracelet1"), difficulty("hard"))
        )
    )
end

function d3_sword_stalfos_keese_switch_chest()
    return orA(
        andA(
            d3_dead_ends(),
            attack_hookshot()
        ),
        andA(
            difficulty("glitched"),
            d3_area2(),
            attack_hookshot_powder(),
            has("feather")
        ),
        andA(
            difficulty("hell"),
            d3_area2(),
            has("boots"),
            rear_attack_range()
        )
    )
end

function d3_zol_switch_chest()
    return orA(
        andA(
            d3_dead_ends(),
            attack_hookshot()
        ),
        andA(
            difficulty("glitched"),
            d3_area3(),
            has("feather"),
            orA(has("boots"), has("hookshot"))
        ),
        andA(
            difficulty("hell"),
            d3_area3(),
            has("boots"),
            rear_attack_range()
        )
    )
end

function d3_west_key_room_key()
    return andA(
        d3_dead_ends(),
        orA(
            attack_hookshot(),
            andA(has("shield1"), difficulty("hell"))
        )
    )
end

function d3_south_key_room_key()
    return andA(
        d3_dead_ends(),
        orA(
            attack_hookshot(),
            andA(has("bracelet1"), difficulty("hard")),
            andA(has("shield1"), difficulty("hell"))
        )
    )
end

function d3_after_stairs_key()
    return andA(
        d3_area_right(),
        attack_hookshot_powder()
    )
end

function d3_tile_arrow_ledge_chest()
    return andA(
        d3_area_right(),
        orA(
            andA(
                has("bomb"),
                has("feather"),
                orA(has("boots"), difficulty("glitched"))
            ),
            andA(
                difficulty("hell"),
                has("feather"),
                has("shield1")
            ),
            andA(
                difficulty("hell"),
                has("bomb"),
                has("rod"),
                has("sword1")
            )
        )
    )
end

function d3_boots_chest()
    return orA(
        andA(
            d3_area_right(),
            attack_hookshot_powder(),
            d3_can_beat_miniboss()
        ),
        andA(
            difficulty("glitched"),
            d3_area_right(),
            has("feather"),
            has("small_key3", 3, 6)
        )
    )
end

function d3_three_zol_stalfos_chest()
    return andA(
        d3_area_right(),
        orA(
            has("sword1"),
            has("bomb"),
            andA(
                has("shield1"),
                attack_hookshot_powder()
            )
        )
    )
end

function d3_three_bombite_key()
    return orA(
        andA(
            d3_three_zol_stalfos_chest(),
            has("bomb")
        ),
        andA(
            difficulty("hard"),
            d3_area_right(),
            has("boomerang")
        ),
        andA(
            difficulty("hell"),
            can_access("Key Cavern/Three Zol, Stalfos Chest"),
            orA(
                rear_attack_range(),
                andA(
                    orA(has("feather"), has("boots")),
                    orA(has("sword1"), has("powder"))
                )
            )
        )
    )
end

function d3_two_zol_two_pairodd_key()
    return andA(
        d3_area_right(),
        attack_hookshot_no_boomerang()
    )
end

function d3_two_zol_stalfos_ledge_chest()
    return andA(
        d3_area_right(),
        attack_skeleton()
    )
end

function d3_nightmare_door_key()
    return d3_pre_boss()
end

function d7_topright_pillar_area(key_used)
    return orA(
        has("small_key7", 1 + key_used),
        andA(
            difficulty("glitched"),
            has("feather"),
            has("sword1")
        ),
        andA(
            difficulty("hell"),
            orA(
                has("feather"),
                andA(
                    has("boots"),
                    orA(
                        has("bow"),
                        has("rod")
                    )
                )
            )
        )
    )
end

function d7_bottomleftF2_area(key_used)
    return orA(
        andA(
            can_access(d7_topright_pillar_area, key_used),
            attack_hookshot()
        ),
        andA(
            difficulty("glitched"),
            can_access(d7_kirby_ledge_chest, key_used),
            has("boots"),
            has("feather")
        )
    )
end

function d7_topleftF2_area(key_used)
    return andA(
        can_access(d7_topright_pillar_area, key_used),
        has("feather")
    )
end

function d7_can_beat_miniboss()
    return A(attack_hookshot_no_bomb())
end

function d7_final_pillar()
    return orA(
        andA(
            can_access(d7_three_of_a_kind_pit_chest),
            has("bracelet1")
        ),
        andA(
            difficulty("glitched"),
            can_access(d7_bottomleftF2_area),
            has("bomb")
        )
    )
end

function d7_beamos_horseheads_area()
    return orA(
        andA(
            can_access(d7_final_pillar),
            has("nightmare_key7")
        ),
        can_access(d7_pre_boss)
    )
end

function d7_pre_boss()
    return orA(
        andA(
            can_access(d7_beamos_horseheads_area),
            has("hookshot")
        ),
        andA(
            difficulty("glitched"),
            can_access(d7_final_pillar),
            has("feather")
        ),
        andA(
            difficulty("hell"),
            can_access(d7_final_pillar),
            has("boots"),
            orA(
                has("bow"),
                has("rod")
            )
        )
    )
end

function d7_can_beat_boss()
    return orA(
        andA(
            orA(
                has("rod"),
                has("sword1"),
                has("hookshot")
            ),
            orA(
                has("shield2"),
                andA(
                    orA(
                        difficulty("hard"),
                        AccessibilityLevel.SequenceBreak
                    ),
                    has("shield1")
                )
            )
        ),
        andA(
            difficulty("hard"),
            orA(
                has("rod"),
                andA(
                    has("bomb"),
                    has("bow"),
                    has("sword2")
                )
            )
        ),
        andA(
            difficulty("glitched"),
            orA(
                has("bomb"),
                has("bow"),
                has("hookshot")
            )
        )
    )
end

function d7_boss_kill()
    return andA(
        d7_pre_boss(),
        d7_can_beat_boss()
    )
end

-- locations
function d7_entrance_key() -- first_key / 0x210
    return A(attack_hookshot_powder())
end

function d7_horse_head_bubble_chest() -- topright_pillar / 0x212
    return andA(
        can_access(d7_topright_pillar_area),
        has("bracelet1")
    )
end

function d7_beamos_ledge_chest() -- toprightF1_chest / 0x204
    return orA(
        andA(
            can_access(d7_bottomleftF2_area),
            attack_hookshot()
        ),
        andA(
            difficulty("glitched"),
            can_access(d7_topright_pillar_area),
            has("feather")
        ),
        andA(
            difficulty("hell"),
            can_access(d7_topright_pillar_area),
            has("boots"),
            orA(
                has("bow"),
                has("rod")
            )
        )
    )
end

function d7_switch_wrapped_chest() -- 0x209
    return can_access(d7_topright_pillar_area)
end

function d7_three_of_a_kind_no_pit_chest() -- three_of_a_kind_north / 0x211
    return andA(
        can_access(d7_topright_pillar_area),
        orA(
            attack_hookshot(),
            andA(
                has("feather"),
                has("shield1")
            )
        )
    )
end

function d7_hinox_key() -- 0x21B
    return andA(
        can_access(d7_kirby_ledge_chest),
        attack_hookshot()
    )
end

function d7_kirby_ledge_chest(key_used) -- topleftF1_chest / 0x201
    return orA(
        can_access(d7_bottomleftF2_area, key_used),
        can_access(d7_topleftF2_area, key_used)
    )
end

function d7_three_of_a_kind_pit_chest() -- final_pillar_area / 0x21C
    return andA(
        can_access(d7_bottomleftF2_area),
        orA(
            andA(
                has("bomb"),
                has("hookshot")
            ),
            andA(
                difficulty("glitched"),
                orA(
                    attack_hookshot(),
                    has("bracelet1"),
                    andA(
                        has("feather"),
                        has("shield1")
                    )
                )
            )
        )
    )
end

function d7_nightmare_key_after_grim_creeper_chest() -- nightmare_key / 0x224
    return andA(
        can_access(d7_bottomleftF2_area),
        d7_can_beat_miniboss()
    )
end

function d7_mirror_shield_chest() -- mirror_shield_chest / 0x21A
    return orA(
        andA(
            can_access(d7_bottomleftF2_area),
            attack_hookshot()
        ),
        andA(
            can_access(d7_bottomleftF2_area, 1),
            has("small_key7", 1, 3)
        )
    )
end

function d7_conveyor_beamos_chest() -- beamos_horseheads / 0x220
    return andA(
        can_access(d7_beamos_horseheads_area),
        has("bracelet1")
    )
end

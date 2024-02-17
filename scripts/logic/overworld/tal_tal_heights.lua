-- helpers

function tal_tal_can_beat_moblin_boss()
    return has("sword1")
end

-- locations

function outside_windfish_egg()
    return andA(
        has("bracelet1"),
        orA(
            can_access(goponga_swamp),
            can_access("Koholint Prairie"),
            can_access(tal_tal_heights)
        )
    )
end

function tal_tal_heights()
    return orA(
        andA(
            can_access("Martha's Bay Water"),
            has("flippers")
        ),
        andA(
            can_access("Outside Knalet Castle"),
            orA(
                has("rooster"),
                andA(has("feather"), difficulty("glitched"))
            )
        ),
        andA(
            can_access(outside_windfish_egg),
            has("bracelet1")
        ),
        andA(
            can_access("Tal Tal Waters"),
            has("flippers")
        ),
        andA(
            can_access("Outside Raft"),
            orA(
                has("hookshot"),
                andA(has("feather"), difficulty("glitched"))
            )
        ),
        andA(
            can_access(obstacle_cave_entrance_exterior),
            has("bracelet1")
        )
    )
end

function moblin_cave()
    return andA(
        can_access("Koholint Prairie"),
        attack_hookshot_powder(),
        tal_tal_can_beat_moblin_boss()
    )
end

function damp_cave_heart_piece() -- heartpiece_swim_cave / 0x1F2
    return andA(
        has("flippers"),
        orA(
            can_access("Tal Tal Waters"),
            can_access("Water Cave Hole"),
            can_access(d7_platau)
        )
    )
end

function manbos_mambo()
    return andA(
        has("manbos_mambo"),
        can_access(tal_tal_heights)
    )
end

function papahl() -- hibiscus_item
    return andA(
        has("trade_pineapple"),
        lower_right_taltal()
    )
end

function tal_tal_waters()
    return andA(
        has("flippers"),
        orA(
            can_access("Outside D4"),
            can_access(tal_tal_heights),
            can_access("Damp Cave Heart Piece"),
            can_access("Outside Raft"),
            can_access(lower_right_taltal)
        )
    )
end

function outside_d4()
    return orA(
        andA(
            has("flippers"),
            can_access("Tal Tal Waters")
        ),
        andA(
            difficulty("hell"),
            has("feather"),
            can_access(tal_tal_heights)
        ),
        andA(
            can_access("Manbo's Mambo"),
            has("flippers")
        )
    )
end

function outside_raft()
    return andA(
        can_access(tal_tal_heights),
        orA(
            has("hookshot"),
            andA(
                difficulty("hell"),
                has("feather"),
                has("boots")
            )
        )
    )
end

function outside_manbos_mambo()
    return andA(
        can_access("Outside D4"),
        has("flippers")
    )
end

function manbos_mambo()
    return andA(
        can_access("Outside Manbo's Mambo"),
        has("ocarina"),
        has("flippers")
    )
end

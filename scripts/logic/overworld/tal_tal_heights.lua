-- helpers

function tal_tal_can_beat_moblin_boss()
    return has("sword1")
end

-- locations

function outside_windfish_egg()
    return andA(
        has("bracelet1"),
        orA(
            can_access("Goponga Swamp"),
            can_access("Koholint Prairie"),
            can_access("Tal Tal Heights")
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
            can_access("Outside Windfish Egg"),
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

function damp_cave_heart_piece()
    return andA(
        has("flippers"),
        orA(
            can_access("Tal Tal Waters"),
            can_access("Water Cave Hole"),
            can_access("D7 Plateau")
        )
    )
end

function manbos_mambo()
    return andA(has("manbos_mambo"), can_access("Tal Tal Heights"))
end

function papahl()
    return AccessibilityLevel.None
end

function tal_tal_waters()
    return andA(
        has("flippers"),
        orA(
            can_access("Outside D4"),
            can_access("Tal Tal Heights"),
            can_access("Damp Cave Heart Piece"),
            can_access("Outside Raft")
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
            can_access("Tal Tal Heights")
        ),
        andA(
            can_access("Manbo's Mambo"),
            has("flippers")
        )
    )
end

function outside_raft()
    return andA(
        can_access("Tal Tal Heights"),
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

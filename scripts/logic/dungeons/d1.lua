-- utils

function d1_post_key()
    return has("small_key1", 1, 3)
end

function d1_boss_kill()
    return all(
        d1_post_key(),
        has("nightmare_key1"),
        has("sword1"),
        any(
            difficulty("glitched"),
            has("feather")
        )
    )
end

-- locations

function d1_two_stalfos_two_keese_chest()
    return any(
        all(
            attack_hookshot_powder(),
            any(
                attack_skeleton(),
                has("shield1"),
                difficulty("hard")
            )
        )
    )
end

function d1_feather_chest()
    return all(
        d1_post_key(),
        has("shield1"),
        any(
            difficulty("hell"),
            has("sword1")
        )
    )
end

function d1_three_of_a_kind()
    return all(
        d1_post_key(),
        has("shield1"),
        attack_hookshot()
    )
end

function d1_nightmare_key_chest()
    return any(
        all(d1_post_key(), has("feather")),
        all(has("feather"), difficulty("glitched")),
        all(d1_post_key(), difficulty("hell")),
        all(d1_post_key(), has("shield1"), difficulty("hard"), AccessibilityLevel.SequenceBreak) -- Going over the hole with a shield is fairly doable
    )
end

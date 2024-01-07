-- utils

function d1_post_key()
    return has("small_key1", 1, 3)
end

function d1_boss_kill()
    return andA(
        d1_post_key(),
        has("nightmare_key1"),
        has("sword1"),
        orA(
            difficulty("glitched"),
            has("feather")
        )
    )
end

-- locations

function d1_feather_chest()
    return andA(
        d1_post_key(),
        has("shield1"),
        orA(
            difficulty("hell"),
            has("sword1")
        )
    )
end

function d1_three_of_a_kind()
    return andA(
        d1_post_key(),
        has("shield1"),
        attack_hookshot()
    )
end

function d1_nightmare_key_chest()
    return orA(
        andA(has("feather"), difficulty("glitched")),
        andA(d1_post_key(), difficulty("hell")),
        andA(d1_post_key(), has("feather"))
    )
end

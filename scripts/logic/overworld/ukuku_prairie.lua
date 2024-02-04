function ukuku_prairie()
    return andA(
            has("bracelet1"),
            can_access(mabe_village)
    )
end

function boots_n_bomb_cave()
    return andA(has("boots"), can_access("Ukuku Prairie/Boots 'n' Bomb Cave Entrance"))
end

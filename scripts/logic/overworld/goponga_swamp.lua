function goponga_swamp()
    return orA(
        can_access(mysterious_woods_north),
        andA(
            can_access(outside_windfish_egg),
            has("bracelet1")
        )
    )
end

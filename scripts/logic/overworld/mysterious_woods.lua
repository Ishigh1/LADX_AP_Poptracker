function mysterious_woods_north()
    return orA(
        andA(
            can_access(mysterious_woods_south),
            orA(
                has("powder"),
                jump()
            )
        ),
        andA(
            can_access("Toadstool"),
            jump()
        ),
        can_access(goponga_swamp)
    )
end

function mysterious_woods_south()
    return orA(
        can_access(mysterious_woods_north),
        andA(
            can_access(mabe_village),
            bush()
        )
    )
end

function marthas_bay_left()
    return orA(
        can_access("Ukuku Prairie"),
        andA(
            can_access("Martha's Bay Outside Ghost House"),
            orA(
                has("rooster"),
                andA(
                    has("feather"),
                    orA(
                        has("boots"),
                        difficulty("glitched")
                    )))),
        andA(
            can_access("Mad Batter Connector (Martha's Bay)"),
            bush(),
            orA(
                has("feather"),
                has("rooster")
            )
        ))
end

function island_bush_of_destiny()
    return andA(
        bush(),
        has("flippers"),
        has("rooster"),
        orA(has("feather"), difficulty("glitched")),
        orA(has("boots"), difficulty("hell"))
    )
end

function mad_batter_martha_connector_top_left()
    return orA(
        andA(
            can_access("Mad Batter Connector (Martha's Bay)/Bottom Right"),
            has("flippers")
        ),
        andA(
            can_access("Outside Mad Batter (Martha's Bay)")
        )
    )
end


function mad_batter_martha_connector_bottom_right()
    return orA(
        andA(
            can_access("Mad Batter Connector (Martha's Bay)/Top Left"),
            has("flippers")
        ),
        andA(
            can_access("Martha's Bay Left"),
            orA(
                has("feather"),
                has("rooster")
            ),
            orA(
                has("sword1"),
                has("rod"),
                has("boomerang")
            )
        )
    )
end

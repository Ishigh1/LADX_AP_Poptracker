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

function mathas_bay_water() --bay_water
    return andA(
        has("flippers"),
        orA(
            can_access("Ukuku Prairie"),
            can_access("Martha's Bay Left"),
            can_access("Tal Tal Waters"),
            can_access("Southern Face Shrine/D6 Entrance"),
            can_access("Southern Face Shrine/Armos Island")
        )
    )
end

function marthas_bay_right()
    return can_access("Animal Village")
end

function peninsula_dig() --0x0DA
    return A(has("shovel"))
end

function fisher() -- fisher_under_bridge
    return andA(
        orA(
            has("trade_fishing_hook"),
            andA(
                difficulty("glitched"),
                has("bomb")
            )
        ),
        orA(
            has("feather"),
            difficulty("hard")
        ),
        has("flippers")
    )
end

function mermaid() --0x0C9
    return andA(
        has("flippers"),
        has("trade_necklace")
    )
end

function mermaid_statue() -- mermaid_statue
    return andA(
        has("trade_scale"),
        orA(
            has("hookshot"),
            andA(
                difficulty("hell"),
                has("feather")
            )
        )
    )
end

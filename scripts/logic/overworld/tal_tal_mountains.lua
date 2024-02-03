-- obstacle_cave

function obstacle_cave_entrance_exterior() -- obstacle_cave_entrance (entrance) / "Tal Tal Mountains/Obstacle Cave/Entrance Exterior"
    return orA(
        andA(
            can_access("Tal Tal Heights"),
            orA(
                has("bracelet1"),
                andA(
                    difficulty("glitched"),
                    has("hookshot")
                )
            )
        ),
        can_access("Tal Tal Mountains/Obstacle Cave/Entrance Interior")
    )
end

function obstacle_cave_entrance_interior() -- obstacle_cave_entrance / "Tal Tal Mountains/Obstacle Cave/Entrance Interior"
    return orA(
        can_access("Tal Tal Mountains/Obstacle Cave/Entrance Exterior"),
        andA(
            can_access("Tal Tal Mountains/Obstacle Cave/Middle Interior"),
            orA(
                has("sword1"),
                has("feather"),
                andA(
                    difficulty("hell"),
                    has("hookshot")
                ),
                andA(
                    difficulty("hell"),
                    has("rooster"),
                    has("boots")
                )
            )
        )
    )
end

function obstacle_cave_middle_interior() -- obstacle_cave_inside / "Tal Tal Mountains/Obstacle Cave/Middle Interior"
    return orA(
        andA(
            can_access("Tal Tal Mountains/Obstacle Cave/Entrance Interior"),
            orA(
                has("sword1"),
                andA(
                    difficulty("hell"),
                    has("hookshot")
                ),
                andA(
                    difficulty("hell"),
                    has("feather"),
                    has("boots"),
                    orA(
                        has("sword1"),
                        has("rod"),
                        has("bow")
                    )
                ),
                andA(
                    difficulty("hell"),
                    has("boots"),
                    has("rooster")
                )
            )
        ),
        can_access("Tal Tal Mountains/Obstacle Cave/Access Tunnel Exterior"),
        andA(
            can_access("Tal Tal Mountains/Obstacle Cave/Exit Interior"),
            orA(
                has("boots"),
                has("rooster")
            )
        )
    )
end

function access_tunnel_interior() -- obstacle_cave_inside_chest / "Tal Tal Mountains/Obstacle Cave/Access Tunnel Interior"
    return orA(
        andA(
            can_access("Tal Tal Mountains/Obstacle Cave/Middle Interior"),
            orA(
                has("hookshot"),
                has("rooster"),
                andA(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        ),
        can_access("Tal Tal Mountains/Obstacle Cave/Access Tunnel Exterior")
    )
end

function obstacle_cave_middle_exterior() -- obstacle_cave_outside_chest / "Tal Tal Mountains/Obstacle Cave/Access Tunnel Exterior"
    return orA(
        can_access("Tal Tal Mountains/Obstacle Cave/Middle Interior"),
        can_access("Tal Tal Mountains/Papahl Cave/Entrance Exterior")
    )
end

function obstacle_cave_middle_interior() -- obstacle_cave_exit / "Tal Tal Mountains/Obstacle Cave/Exit Interior"
    return orA(
        can_access("Tal Tal Mountains/Obstacle Cave/Exit Exterior"),
        andA(
            can_access("Tal Tal Mountains/Obstacle Cave/Middle Interior"),
            orA(
                has("boots"),
                has("rooster"),
                andA(
                    difficulty("glitched"),
                    has("feather")
                )
            )
        )
    )
end

function obstacle_cave_middle_exterior() -- "Tal Tal Mountains/Obstacle Cave/Exit Exterior"
    return orA(
        can_access("Tal Tal Mountains/Obstacle Cave/Exit Interior"),
        lower_right_taltal()
    )
end

-- overworld
function lower_right_taltal()
    return orA(
        can_access("Tal Tal Mountains/Obstacle Cave/Exit Exterior"),
        can_access("Tal Tal Mountains/Papahl Cave/Entrance Exterior"),
        can_access("Tal Tal Mountains/Papahl Cave/Exit Exterior")
    )
end

-- papahl cave

function papahl_cave_entrance_exterior() -- "Tal Tal Mountains/Papahl Cave/Entrance Exterior"
    return orA(
        lower_right_taltal(),
        can_access("Tal Tal Mountains/Papahl Cave/Entrance Interior")
    )
end

function papahl_cave_entrance_interior() -- "Tal Tal Mountains/Papahl Cave/Entrance Interior"
    return orA(
        can_access("Tal Tal Mountains/Papahl Cave/Entrance Exterior"),
        can_access("Tal Tal Mountains/Papahl Cave/Paphl Cave")
    )
end

function paphl_cave() -- papahl_cave / "Tal Tal Mountains/Papahl Cave/Paphl Cave"
    return orA(
        can_access("Tal Tal Mountains/Papahl Cave/Entrance Interior"),
        can_access("Tal Tal Mountains/Papahl Cave/Exit Interior")
    )
end

function papahl_cave_exit_interior() -- "Tal Tal Mountains/Papahl Cave/Exit Interior"
    return orA(
        can_access("Tal Tal Mountains/Papahl Cave/Exit Exterior"),
        can_access("Tal Tal Mountains/Papahl Cave/Paphl Cave")
    )
end

function papahl_cave_exit_exterior() -- papahl / "Tal Tal Mountains/Papahl Cave/Exit Exterior"
    return orA(
        can_access("Tal Tal Mountains/Papahl Cave/Exit Interior")
    )
end

-- not implemented

function bridge_rock()
    -- Implement access rules if needed
    return true
end

function outside_five_chest_game()
    -- Implement access rules if needed
    return true
end

function outside_mad_batter()
    -- Implement access rules if needed
    return true
end

function mad_batter()
    -- Implement access rules if needed
    return true
end

function access_tunnel_bombable_heart_piece()
    -- Implement access rules if needed
    return true
end

function bird_key_cave()
    -- Implement access rules if needed
    return true
end

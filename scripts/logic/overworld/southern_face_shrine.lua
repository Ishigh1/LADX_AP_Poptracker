function armos_island()
    return orA(
        andA(
            can_access("Martha's Bay Water"),
            has("flippers")
        ),
        can_access("Southern Face Shrine/Face Shrine Connector/Right")
    )
end

function d6_entrance()
    return can_access("Southern Face Shrine/Face Shrine Connector/Left")
end

function d6_entry()
    return A(has("face_key"))
end

function face_shrine_connector_left()
    return orA(
        can_access("Southern Face Shrine/D6 Entrance"),
        can_access("Southern Face Shrine/Face Shrine Connector/Right")
    )
end

function face_shrine_connector_right()
    return orA(
        can_access("Southern Face Shrine/Armos Island"),
        can_access("Southern Face Shrine/Face Shrine Connector/Left")
    )
end

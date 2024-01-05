function free_weapon()
    return has("sword1") or has("rod") or has("hookshot") or has("boomerang")
end

function bush()
    return has("sword1") or has("powder") or has("rod") or has("bracelet1") or has("boomerang")
end

function attack()
    return has("sword1") or has("bomb") or has("bow") or has("rod") or has("boomerang")
end

function attack_hookshot()
    return has("hookshot") or attack()
end

function attack_hookshot_powder()
    return has("powder") or attack_hookshot()
end

function attack_hookshot_no_bomb()
    return has("sword1") or has("bow") or has("rod") or has("boomerang") or has("hookshot")
end

function attack_hookshot_no_boomerang()
    return has("hookshot") or attack()
end

function attack_skeleton()
    return has("sword1") or has("bomb") or has("bow") or has("boomerang") or has("hookshot")
end

function attack_pols_voice()
    return has("bow") or has("bomb") or has("rod") or (has("ocarina") and has("song1"))
end

function rear_attack()
    return has("sword1") or has("bomb")
end

function rear_attack_range()
    return has("rod") or has("bow")
end

function fire()
    return has("powder") or has("rod")
end

function push_hardhat()
    return has("shield1") or has("sword1") or has("hookshot") or has("boomerang")
end

function rupee_farm_ool()
    return bush() or attack()
end

function rupee_farm()
    return free_weapon() and can_access("@Trendy Game", AccessibilityLevel.Normal) or can_access("@Raft", AccessibilityLevel.Normal)
end

function jump()
    return has("feather") or has("rooster")
end
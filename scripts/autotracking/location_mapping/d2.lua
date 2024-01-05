local dungeon_name = "@Bottle Grotto/"
local dead_ends = dungeon_name .. "Dead Ends/"
local post_torches = dungeon_name .. "Post Torches/"
local post_switch = post_torches .. "Post Switch/"
local post_holes = post_switch .. "Post Holes/"
local post_first_key = post_holes .. "Post First Key/"
local post_miniboss = post_first_key .. "Post Miniboss/"
local switch_corridor = post_miniboss .. "Switch Corridor/"
local post_boss = switch_corridor .. "Pre Stairs/Post Stairs/Boss Access/"

return
{
    [10000310] = dungeon_name .. "Entrance Chest/",
    [10000302] = dead_ends .. "Hardhat Beetle Pit Chest/",
    [10000311] = dead_ends .. "Mask-Mimic Chest/",
    [10000306] = post_torches .. "Two Stalfos Key/",
    -- [10001307] = post_torches .. "Switch Owl",
    [10000312] = post_switch .. "First Switch Locked Chest/",
    [10000313] = post_holes .. "Button Spawn Chest/",
    [10000308] = post_torches .. "Mask-Mimic Key/",
    -- [10001303] = post_first_key .. "Before First Staircase Owl",
    [10000294] = post_miniboss .. "Vacuum Mouth Chest/",
    [10000289] = post_miniboss .. "Outside Boo Buddies Room Chest/",
    -- [10001297] = "After Hinox Owl",
    [10000288] = post_miniboss .. "Boo Buddies Room Chest/",
    [10000290] = switch_corridor .. "Second Switch Locked Chest/",
    [10000295] = switch_corridor .. "Enemy Order Room Chest/Pols Voice, Keese then Stalfos",
    [10000299] = post_boss .. "Genie Heart Container",
    [10000298] = post_boss .. "Conch Horn",
}

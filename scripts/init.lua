ENABLE_DEBUG_LOG = true

require("scripts/utils")

--Items
Tracker:AddItems("items/key_items.jsonc")
Tracker:AddItems("items/currency.jsonc")
Tracker:AddItems("items/dungeon.jsonc")
Tracker:AddItems("items/keys.jsonc")
Tracker:AddItems("items/options.jsonc")
Tracker:AddItems("items/trade.jsonc")

--Maps
Tracker:AddMaps("maps/maps.jsonc")

-- Logic
require("scripts/logic/init")

-- Locations
--- Overworld
Tracker:AddLocations("locations/overworld/mabe_village.lua.jsonc")
Tracker:AddLocations("locations/overworld/toronbo_shores.jsonc")
Tracker:AddLocations("locations/overworld/mysterious_woods.jsonc")
Tracker:AddLocations("locations/overworld/goponga_swamp.jsonc")
Tracker:AddLocations("locations/overworld/ukuku_prairie.jsonc")
Tracker:AddLocations("locations/overworld/martha's_bay.jsonc")
Tracker:AddLocations("locations/overworld/tal_tal_heights.jsonc")
Tracker:AddLocations("locations/overworld/southern_face_shrine.jsonc")
Tracker:AddLocations("locations/overworld/tal_tal_mountains.jsonc")
--- Dungeon
Tracker:AddLocations("locations/dungeons/d1-tail_cave.jsonc")
Tracker:AddLocations("locations/dungeons/d2-bottle_grotto.jsonc")
Tracker:AddLocations("locations/dungeons/d3-key_cavern.jsonc")
Tracker:AddLocations("locations/dungeons/d4-angler's_tunnel.jsonc")
Tracker:AddLocations("locations/dungeons/d5-catfish's_maw.jsonc")
Tracker:AddLocations("locations/dungeons/d6-face_shrine.jsonc")
Tracker:AddLocations("locations/dungeons/d7-eagle's_tower.jsonc")
Tracker:AddLocations("locations/dungeons/d8-turtle_rock.jsonc")

--Layout
Tracker:AddLayouts("layouts/overworld_maps.jsonc")
Tracker:AddLayouts("layouts/maps.jsonc")
Tracker:AddLayouts("layouts/items.jsonc")
Tracker:AddLayouts("layouts/items_vertical.jsonc")
Tracker:AddLayouts("layouts/tracker.jsonc")
Tracker:AddLayouts("layouts/brodcast.jsonc")

-- Autotracking
require("scripts/autotracking/init")

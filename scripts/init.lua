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
Tracker:AddLocations("locations/overworld/mabe_village.jsonc")
Tracker:AddLocations("locations/overworld/toronbo_shores.jsonc")
Tracker:AddLocations("locations/overworld/mysterious_woods.jsonc")
Tracker:AddLocations("locations/overworld/goponga_swamp.jsonc")
Tracker:AddLocations("locations/overworld/ukuku_prairie.jsonc")
Tracker:AddLocations("locations/overworld/martha's_bay.jsonc")
Tracker:AddLocations("locations/overworld/tal_tal_heights.jsonc")
--- Dungeon
Tracker:AddLocations("locations/dungeons/d1-tail_cave.jsonc")
Tracker:AddLocations("locations/dungeons/d2-bottle_grotto.jsonc")
Tracker:AddLocations("locations/dungeons/d3-key_cavern.jsonc")
Tracker:AddLocations("locations/dungeons/d4-angler's_tunnel.jsonc")
Tracker:AddLocations("locations/dungeons/d5-catfish's_maw.jsonc")

--Layout
Tracker:AddLayouts("layouts/maps.jsonc")
Tracker:AddLayouts("layouts/items.jsonc")
Tracker:AddLayouts("layouts/items_vertical.jsonc")
Tracker:AddLayouts("layouts/tracker.jsonc")
Tracker:AddLayouts("layouts/brodcast.jsonc")

-- Autotracking
require("scripts/autotracking/init")

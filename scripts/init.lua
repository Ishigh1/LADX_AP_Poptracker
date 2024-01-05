ENABLE_DEBUG_LOG = true

require("scripts/utils.lua")

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
require("scripts/logic/logic.lua")

-- Locations
--- Overworld
Tracker:AddLocations("locations/overworld/mabe_village.jsonc")
Tracker:AddLocations("locations/overworld/toronbo_shores.jsonc")
Tracker:AddLocations("locations/overworld/mysterious_woods.jsonc")
Tracker:AddLocations("locations/overworld/goponga_swamp.jsonc")
Tracker:AddLocations("locations/overworld/ukuku_prairie.jsonc")
Tracker:AddLocations("locations/overworld/martha's_bay.jsonc")
--- Dungeon
Tracker:AddLocations("locations/dungeons/d1-tail_cave.jsonc")
Tracker:AddLocations("locations/dungeons/d2-bottle_grotto.jsonc")

--Layout
Tracker:AddLayouts("layouts/maps.jsonc")
Tracker:AddLayouts("layouts/items.jsonc")
Tracker:AddLayouts("layouts/items_vertical.jsonc")
Tracker:AddLayouts("layouts/tracker.jsonc")
Tracker:AddLayouts("layouts/brodcast.jsonc")

-- Autotracking
require("scripts/autotracking/init.lua")
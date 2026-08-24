-- postinit/strings.lua
-- Auto-fills missing STRINGS.RECIPE_DESC.<KEY>_A entries from game strings.
-- Runs AFTER main/strings.lua (which hardcodes English defaults via ToolUtil.MergeTable)
-- so any entry already provided is kept; only missing entries are filled.
--
-- Source priority (first non-nil wins):
--   1. STRINGS.CHARACTERS.WILSON.DESCRIBE.<KEY>  -- parent mod's WILSON inspect text
--   2. STRINGS.NAMES.<KEY>                          -- vanilla DST display name fallback

GLOBAL.setfenv(1, GLOBAL)

local rebalance_recipes = require("rebalance_recipes")

STRINGS.RECIPE_DESC = STRINGS.RECIPE_DESC or {}

for prefab, _ in pairs(rebalance_recipes) do
    local upper = string.upper(prefab)
    local key = upper .. "_A"

    if not STRINGS.RECIPE_DESC[key] then
        local desc

        prefab = upper:gsub("_INV$", ""):gsub("_LAND$", "")

        local WILSON = STRINGS.CHARACTERS.WILSON
        local DESCRIBE = STRINGS.CHARACTERS.GENERIC.DESCRIBE[prefab]
                        or (WILSON and WILSON.DESCRIBE and WILSON.DESCRIBE[prefab])
                        or STRINGS.NAMES[prefab] or prefab

        if type(DESCRIBE) == "table" then
            local k, v = next(DESCRIBE)
            desc = DESCRIBE.GENERIC or tostring(v)
        else
            desc = tostring(DESCRIBE)
        end

        STRINGS.RECIPE_DESC[key] = desc
    end
end
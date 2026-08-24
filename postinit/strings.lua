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

    -- Skip if main/strings.lua already provided an English default.
    if not STRINGS.RECIPE_DESC[key] then
        local desc

        -- 1. Try WILSON.DESCRIBE.<KEY> (parent mod's per-character inspect text)
        if STRINGS.CHARACTERS.GENERIC.DESCRIBE[upper] then
            desc = STRINGS.CHARACTERS.GENERIC.DESCRIBE[upper]
        elseif STRINGS.CHARACTERS and STRINGS.CHARACTERS.WILSON
            and STRINGS.CHARACTERS.WILSON.DESCRIBE and STRINGS.CHARACTERS.WILSON.DESCRIBE[upper]
        then
            desc = STRINGS.CHARACTERS.WILSON.DESCRIBE[upper]
        -- 2. Fall back to NAMES.<KEY> (vanilla DST display name)
        elseif STRINGS.NAMES and STRINGS.NAMES[upper] then
            desc = STRINGS.NAMES[upper]
        end

        if desc then
            STRINGS.RECIPE_DESC[key] = desc
        end
    end
end
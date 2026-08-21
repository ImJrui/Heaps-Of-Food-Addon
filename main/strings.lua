-- main/strings.lua
-- Mirrors Better-Wanda's pattern: import strings/common.lua then deep-merge
-- its RECIPE_DESC table into the global STRINGS table.

local MODROOT = MODROOT
local PLENV = env
GLOBAL.setfenv(1, GLOBAL)

local languages = {
    zh   = "chinese_s",
    zhr  = "chinese_s",
    ch   = "chinese_s",
    chs  = "chinese_s",
    sc   = "chinese_s",
    zht  = "chinese_s",
    tc   = "chinese_s",
    cht  = "chinese_s",
}

local function import(module_name)
    module_name = module_name .. ".lua"
    local result = kleiloadlua(MODROOT .. "strings/" .. module_name)

    if result == nil then
        error("Strings file not found: " .. module_name)
    elseif type(result) == "string" then
        error("Error loading strings/" .. module_name .. "!\n" .. result)
    else
        setfenv(result, PLENV)
        return result()
    end
end

-- Load and merge the RECIPE_DESC table.
ToolUtil.MergeTable(STRINGS, import("common"), true)

-- Optional PO translation file for the current locale.
local desiredlang = LOC.GetLocaleCode()
if desiredlang and languages[desiredlang] then
    PLENV.LoadPOFile("scripts/languages/heapsoffoodaddon_" .. languages[desiredlang] .. ".po", desiredlang)
    TranslateStringTable(STRINGS)
end

local GetModConfigData = GetModConfigData

local PLENV = env
GLOBAL.setfenv(1, GLOBAL)

local function GetCfg(config, default)
    local value = GetModConfigData(config)
    if value ~= nil then
        return value
    end
    return default
end

CONFIG = {
    BREW_TIME_MULTIPLIER = GetCfg("CONFIG_BREW_TIME_MULTIPLIER", 1),
}


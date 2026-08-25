local lang = locale
local function en_zh(String)  -- use this fn can be automatically translated according to the language in the table
	String.zhr = String.zh
	String.zht = String.zht or String.zh
	return String[lang] or String.en
end

--The name of the mod displayed in the 'mods' screen.
name = en_zh({en = "Heap Of Foods Addon", zh = "HOP补丁"})

--A version number so you can ask people if they are running an old version of your mod.
version = "v1.0.7"

--A description of the mod.
description = "version "..version

--Who wrote this awesome mod?
author = "TUTU"

--This lets other players know if your mod is out of date. This typically needs to be updated every time there's a new game update.
api_version = 10

dst_compatible = true

--This lets clients know if they need to get the mod from the Steam Workshop to join the game
all_clients_require_mod = true

--This determines whether it causes a server to be marked as modded (and shows in the mod list)
client_only_mod = false

--This lets people search for servers with this mod by these tags
server_filter_tags = {}


priority = -20  --模组优先级0-10 mod 加载的顺序   0最后载入  覆盖大值

configuration_options={ --模组变量配置
	{
		name = "CONFIG_BREW_TIME_MULTIPLIER",
		hover = en_zh({
			en = "Sets the brewing time as a multiplier of the original. Values below 1 shorten the time (faster brewing); 1 is default; values above 1 would lengthen it (slower).",
			zh = "设置酿造时间为原始时间的倍数。小于 1 的值会缩短时间（酿造更快）；1 为默认值；大于 1 的值会延长时间（更慢）。"
		}),
		label = en_zh({en = "Brew Time Multiplier", zh = "酿造时间倍数"}),
		options = {
			{description = "1", data = 1},
			{description = "0.9", data = .9},
			{description = "0.8", data = .8},
			{description = "0.7", data = .7},
			{description = "0.6", data = .6},
			{description = "0.5", data = .5},
			{description = "0.4", data = .4},
			{description = "0.3", data = .3},
			{description = "0.2", data = .2},
			{description = "0.1", data = .1},
			{description = "0.05", data = .05},
		},
		default = .05,
	},
}

mod_dependencies = {
    {	
       	--only have a workshop dependency
        workshop = "workshop-2334209327",
    },
}

icon_atlas = "ModiconHOF.xml"
icon = "ModiconHOF.tex"

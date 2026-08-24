local lang = locale
local function translate(String)  -- use this fn can be automatically translated according to the language in the table
	String.zhr = String.zh
	String.zht = String.zht or String.zh
	return String[lang] or String.en
end

--The name of the mod displayed in the 'mods' screen.
name = translate({en = "Heap Of Foods Addon", zh = "HOP补丁"})

--A version number so you can ask people if they are running an old version of your mod.
version = "v1.0.6"

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

}

mod_dependencies = {
    {	
       	--only have a workshop dependency
        workshop = "workshop-2334209327",
    },
}

icon_atlas = "ModiconHOF.xml"
icon = "ModiconHOF.tex"

local AddPrefabPostInit = AddPrefabPostInit

GLOBAL.setfenv(1, GLOBAL)

local function fn(inst)
    if not TheWorld.ismastersim then
		return inst
	end
    if inst.components.brewer then
        inst.components.brewer.brewtimemult = CONFIG.BREW_TIME_MULTIPLIER
    end
end

AddPrefabPostInit("kyno_woodenkeg", fn)
AddPrefabPostInit("kyno_preservesjar", fn)
local AddPrefabPostInit = AddPrefabPostInit

GLOBAL.setfenv(1, GLOBAL)

local rebalance_recipes = require("rebalance_recipes")

local ADD_TO_WARES_ALWAYS = {}

for good, data in pairs(rebalance_recipes) do
    local ings = data.ingredients
    local min = 0
    local max = 0
    if ings.kyno_pigcoin3 then
        min = 5
        max = 10
    elseif ings.kyno_pigcoin2 then
        min = 5
        max = 15
    elseif ings.kyno_pigcoin1 then
        min = 10
        max = 20
    end
    ADD_TO_WARES_ALWAYS[good] = {recipe = "rebalance_deciduoustrader_"..good, min = min, max = max --[[, limit = 20]] }
end

AddPrefabPostInit("kyno_deciduousforest_seller", function(inst)
    if not TheWorld.ismastersim then
		return inst
	end

    for prefab, waredata in pairs(ADD_TO_WARES_ALWAYS) do
        if inst.WARES and inst.WARES.ALWAYS and inst.WARES.ALWAYS[1] then
            if not inst.WARES.ALWAYS[1][prefab] then
                inst.WARES.ALWAYS[1][prefab] = waredata
                print("Added "..prefab.." to kyno_deciduousforest_seller")
            end
			if not waredata.limit then
                inst.FORGETABLE_RECIPES = inst.FORGETABLE_RECIPES or {}
				inst.FORGETABLE_RECIPES[waredata.recipe] = true
			end
        end
    end
end)

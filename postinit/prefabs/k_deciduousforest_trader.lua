local AddPrefabPostInit = AddPrefabPostInit

GLOBAL.setfenv(1, GLOBAL)

local rebalance_recipes = require("rebalance_recipes")

local ADD_TO_WARES_ALWAYS = {}

for good, data in pairs(rebalance_recipes) do
    local ings = data.ingredients
    local min, max, limit = 1, 1, nil

    if ings.kyno_pigcoin3 then
        min = 1
        max = 10
    elseif ings.kyno_pigcoin2 then
        min = 5
        max = 15
    elseif ings.kyno_pigcoin1 then
        min = 10
        max = 20
    end

    min = data.min or min
    max = data.max or max
    limit = data.limit or limit

    ADD_TO_WARES_ALWAYS[good] = {recipe = "rebalance_deciduoustrader_"..good, min = min, max = max , limit = limit }
end

AddPrefabPostInit("kyno_deciduousforest_seller", function(inst)
    if not TheWorld.ismastersim then
		return inst
	end

    local wares = inst.WARES and inst.WARES.ALWAYS and inst.WARES.ALWAYS[1]
    if not wares then
        return
    end

    for prefab, waredata in pairs(ADD_TO_WARES_ALWAYS) do
        if not wares[prefab] then
            wares[prefab] = waredata
            print("Added "..prefab.." to kyno_deciduousforest_seller")
        end
        if not waredata.limit then
            inst.FORGETABLE_RECIPES = inst.FORGETABLE_RECIPES or {}
            inst.FORGETABLE_RECIPES[waredata.recipe] = true
        end
    end
end)

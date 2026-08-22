local AddPrefabPostInit = AddPrefabPostInit

GLOBAL.setfenv(1, GLOBAL)

local rebalance_recipes = require("rebalance_recipes")

local ADD_TO_WARES_ALWAYS = {}

for good, _ in ipairs(rebalance_recipes) do
    ADD_TO_WARES_ALWAYS[good] = {recipe = "rebalance_deciduoustrader_"..good, min = 10, max = 20 --[[, limit = 20]] }
end

AddPrefabPostInit("kyno_deciduousforest_seller", function(inst)
    if not TheWorld.ismastersim then
		return inst
	end

    for prefab, waredata in pairs(ADD_TO_WARES_ALWAYS) do
        if inst.WARES and inst.WARES.ALWAYS and inst.WARES.ALWAYS[1] then
            if not inst.WARES.ALWAYS[1][prefab] then
                inst.WARES.ALWAYS[1][prefab] = waredata
            end
			if not waredata.limit then
				inst.FORGETABLE_RECIPES[waredata.recipe] = true
			end
        end
    end
end)

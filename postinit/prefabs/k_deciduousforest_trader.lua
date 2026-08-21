local AddPrefabPostInit = AddPrefabPostInit

GLOBAL.setfenv(1, GLOBAL)

local ITEMS = {

}

local ADD_TO_WARES_ALWAYS = {
    -- REDME.md price table — cheap tier (W<=5 or G=1): resets each refresh.
    ["firenettles"]                       = { recipe = "rebalance_deciduoustrader_firenettles",                       min = 10, max = 20, limit = 20 },
    ["kyno_icenettles"]                   = { recipe = "rebalance_deciduoustrader_kyno_icenettles",                   min = 10, max = 20, limit = 20 },
    ["kyno_twiggynuts"]                   = { recipe = "rebalance_deciduoustrader_kyno_twiggynuts",                   min = 10, max = 20, limit = 20 },
    ["drumstick"]                         = { recipe = "rebalance_deciduoustrader_drumstick",                         min = 10, max = 20, limit = 20 },
    ["succulent_picked"]                  = { recipe = "rebalance_deciduoustrader_succulent_picked",                  min = 10, max = 20, limit = 20 },
    ["kyno_worm_bone"]                    = { recipe = "rebalance_deciduoustrader_kyno_worm_bone",                    min = 10, max = 20, limit = 20 },
    ["kyno_shark_fin"]                    = { recipe = "rebalance_deciduoustrader_kyno_shark_fin",                    min = 10, max = 20, limit = 20 },
    ["oceanfish_midnight_carp_inv"]       = { recipe = "rebalance_deciduoustrader_oceanfish_midnight_carp_inv",       min = 10, max = 20, limit = 20 },
    ["kyno_moon_froglegs"]                = { recipe = "rebalance_deciduoustrader_kyno_moon_froglegs",                min = 10, max = 20, limit = 20 },
    ["kyno_salmonfish"]                   = { recipe = "rebalance_deciduoustrader_kyno_salmonfish",                   min = 10, max = 20, limit = 20 },
    ["butter"]                            = { recipe = "rebalance_deciduoustrader_butter",                            min = 10, max = 20, limit = 20 },
    ["kyno_poison_froglegs"]              = { recipe = "rebalance_deciduoustrader_kyno_poison_froglegs",              min = 10, max = 20, limit = 20 },
    ["kyno_crabmeat"]                     = { recipe = "rebalance_deciduoustrader_kyno_crabmeat",                     min = 10, max = 20, limit = 20 },
    ["kyno_piko"]                         = { recipe = "rebalance_deciduoustrader_kyno_piko",                         min = 10, max = 20, limit = 20 },
    ["kyno_beanbugs"]                     = { recipe = "rebalance_deciduoustrader_kyno_beanbugs",                     min = 10, max = 20, limit = 20 },
    ["kyno_limpets"]                      = { recipe = "rebalance_deciduoustrader_kyno_limpets",                      min = 10, max = 20, limit = 20 },
    ["mandrake"]                          = { recipe = "rebalance_deciduoustrader_mandrake",                          min = 10, max = 20, limit = 20 },
    ["kyno_crabkingmeat"]                 = { recipe = "rebalance_deciduoustrader_kyno_crabkingmeat",                 min = 10, max = 20, limit = 20 },
}


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

local AddPrefabPostInit = AddPrefabPostInit

GLOBAL.setfenv(1, GLOBAL)

local GOODS = {
    "firenettles",
    "kyno_icenettles",
    "kyno_twiggynuts",
    "drumstick",
    "succulent_picked",
    "kyno_worm_bone",
    "kyno_shark_fin",
    "oceanfish_midnight_carp_inv",
    "kyno_moon_froglegs",
    "kyno_salmonfish",
    "kyno_sap",
    "foliage", -- 修正
    "butter",
    "kyno_poison_froglegs",
    "kyno_crabmeat",
    "goatmilk", -- 修正
    "kyno_piko",
    "kyno_piko_orange",
    "kyno_beanbugs",
    "kyno_limpets",
    "mandrake",
    "kyno_crabkingmeat",
    "kyno_swordfish_dead", -- 修正
    "kyno_swordfish_blue",
    "wobster_monkeyisland_land", -- 修正
}

local ADD_TO_WARES_ALWAYS = {}

for _, good in ipairs(GOODS) do
    ADD_TO_WARES_ALWAYS[good] = {recipe = "rebalance_deciduoustrader_"..good, min = 10, max = 20, limit = 20 }
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

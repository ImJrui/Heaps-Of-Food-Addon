-- postinit/recipes.lua
-- Registers Partitio barter recipes for the items listed in README.md.
-- Each entry's key is the product prefab name; the loop generates the matching
-- AddRecipe2 call with `rebalance_deciduoustrader_<prefab>` as the recipe name.
-- Companion file postinit/prefabs/k_deciduousforest_trader.lua must also list
-- the same prefabs in its GOODS table so the craftingstation LearnItem()s them.

GLOBAL.setmetatable(env, {__index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end })

local rebalance_recipes = {
    firenettles                  = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_icenettles              = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_twiggynuts              = {ingredients = {kyno_pigcoin1 = 2}},
    drumstick                    = {ingredients = {kyno_pigcoin1 = 2}},
    succulent_picked             = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_worm_bone               = {ingredients = {kyno_pigcoin1 = 5}},
    kyno_shark_fin               = {ingredients = {kyno_pigcoin2 = 1}},
    oceanfish_midnight_carp_inv  = {ingredients = {kyno_pigcoin2 = 1}},
    kyno_moon_froglegs           = {ingredients = {kyno_pigcoin2 = 1}},
    kyno_salmonfish              = {ingredients = {kyno_pigcoin2 = 1}},
    kyno_sap                     = {ingredients = {kyno_pigcoin1 = 1}},
    fern                         = {ingredients = {kyno_pigcoin1 = 1}},
    butter                       = {ingredients = {kyno_pigcoin1 = 10}},
    kyno_poison_froglegs         = {ingredients = {kyno_pigcoin1 = 20}},
    kyno_crabmeat                = {ingredients = {kyno_pigcoin1 = 20}},
    voltgoatmilk                 = {ingredients = {kyno_pigcoin1 = 20}},
    kyno_piko                    = {ingredients = {kyno_pigcoin1 = 50}},
    kyno_piko_orange             = {ingredients = {kyno_pigcoin1 = 50}},
    kyno_beanbugs                = {ingredients = {kyno_pigcoin1 = 30}},
    kyno_limpets                 = {ingredients = {kyno_pigcoin1 = 50}},
    mandrake                     = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_crabkingmeat            = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_swordfish               = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_swordfish_blue          = {ingredients = {kyno_pigcoin3 = 1}},
    wobster_monkeyisland         = {ingredients = {kyno_pigcoin3 = 1}},
}

for recipe, data in pairs(rebalance_recipes) do
    local ingres = {}
    for ing, num in pairs(data.ingredients) do
        table.insert(ingres, Ingredient(ing, num))
    end
    AddRecipe2("rebalance_deciduoustrader_"..recipe, ingres, TECH.LOST,
        {
            limitedamount     = true,
            nounlock          = true,
            no_deconstruction = true,
            hint_msg          = "NEEDSDECIDUOUSSHOP",
            actionstr         = "DECIDUOUSSHOP",
            description       = recipe.."_a",
            sg_state          = "give",
            product           = recipe,
        },
        {"CRAFTING_STATION"}
    )
end

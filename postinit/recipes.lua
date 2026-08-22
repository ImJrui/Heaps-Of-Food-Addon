-- postinit/recipes.lua
-- Registers Partitio barter recipes for the items listed in README.md.
-- Each entry's key is the product prefab name; the loop generates the matching
-- AddRecipe2 call with `rebalance_deciduoustrader_<prefab>` as the recipe name.
-- Companion file postinit/prefabs/k_deciduousforest_trader.lua must also list
-- the same prefabs in its GOODS table so the craftingstation LearnItem()s them.

GLOBAL.setmetatable(env, {__index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end })

local rebalance_recipes = {
    -- 25 original items (line 6-30 of README.md)
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
    foliage                      = {ingredients = {kyno_pigcoin1 = 1}},
    butter                       = {ingredients = {kyno_pigcoin1 = 5}},
    kyno_poison_froglegs         = {ingredients = {kyno_pigcoin1 = 5}},
    kyno_crabmeat                = {ingredients = {kyno_pigcoin1 = 5}},
    goatmilk                     = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_piko                    = {ingredients = {kyno_pigcoin1 = 5}},
    kyno_piko_orange             = {ingredients = {kyno_pigcoin1 = 5}},
    kyno_beanbugs                = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_limpets                 = {ingredients = {kyno_pigcoin1 = 5}},
    mandrake                     = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_crabkingmeat            = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_swordfish_dead          = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_swordfish_blue          = {ingredients = {kyno_pigcoin3 = 1}},
    wobster_monkeyisland_land    = {ingredients = {kyno_pigcoin3 = 1}},

    -- 32 new items (line 32-63 of README.md)
    kyno_cavetuber_blooming      = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_taroroot                = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_lotus_flower            = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_waterycress             = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_chicken2                = {ingredients = {kyno_pigcoin1 = 5}},
    kyno_chicken_egg             = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_tealeaf                 = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_brainrock_coral         = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_mussel                  = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_fennel                  = {ingredients = {kyno_pigcoin1 = 2}},
    ice                          = {ingredients = {kyno_pigcoin1 = 1}},
    honey                        = {ingredients = {kyno_pigcoin1 = 1}},
    berries                      = {ingredients = {kyno_pigcoin1 = 1}},
    butterfly                    = {ingredients = {kyno_pigcoin1 = 1}},
    pondeel                      = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_grouper                 = {ingredients = {kyno_pigcoin1 = 2}},
    jellybean                    = {ingredients = {kyno_pigcoin3 = 1}},
    lavae_egg                    = {ingredients = {kyno_pigcoin3 = 1}},
    bearger_fur                  = {ingredients = {kyno_pigcoin3 = 1}},
    deerclops_eyeball            = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_kokonut                 = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_pineapple               = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_humanmeat               = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_jellyfish_dead          = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_jellyfish_rainbow       = {ingredients = {kyno_pigcoin1 = 2}},
    ancientfruit_nightvision     = {ingredients = {kyno_pigcoin1 = 5}},
    kyno_syrup                   = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_sugarfly                = {ingredients = {kyno_pigcoin1 = 1}},
    moonbutterfly                = {ingredients = {kyno_pigcoin1 = 1}},
    fig                          = {ingredients = {kyno_pigcoin1 = 2}},
    chocolate_black              = {ingredients = {kyno_pigcoin1 = 2}},
    chocolate_white              = {ingredients = {kyno_pigcoin1 = 3}},
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
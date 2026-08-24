-- scripts/rebalance_recipes.lua
-- Single source of truth for all Partitio barter prices.
-- Keyed by product prefab name. Each entry specifies the coin ingredients.
--
-- Consumed by postinit/recipes.lua via require("rebalance_recipes").
-- Companion file postinit/prefabs/k_deciduousforest_trader.lua must also list
-- the same prefabs in its GOODS table so the craftingstation LearnItem()s them.

local REBALANCE_RECIPES = {
    -- =============================================================
    -- Original 24 items (README.md line 6-30, minus wobster_monkeyisland_land
    -- which is duplicated in new2 section and now lives there)
    -- =============================================================

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

    -- =============================================================
    -- 30 new items (README.md line 32-63, kyno_kokonut and ancientfruit_nightvision
    -- moved to new2 section because they have updated prefabs)
    -- =============================================================
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
    royal_jelly                  = {ingredients = {kyno_pigcoin3 = 1}},
    lavae_egg                    = {ingredients = {kyno_pigcoin3 = 1}},
    bearger_fur                  = {ingredients = {kyno_pigcoin3 = 1}},
    deerclops_eyeball            = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_pineapple               = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_humanmeat               = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_jellyfish_dead          = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_jellyfish_rainbow       = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_syrup                   = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_sugarfly                = {ingredients = {kyno_pigcoin1 = 1}},
    moonbutterfly                = {ingredients = {kyno_pigcoin1 = 1}},
    fig                          = {ingredients = {kyno_pigcoin1 = 2}},
    chocolate_black              = {ingredients = {kyno_pigcoin1 = 2}},
    chocolate_white              = {ingredients = {kyno_pigcoin1 = 3}},

    -- =============================================================
    -- 33 new2 items (README.md line 66-99, latest source of truth)
    -- wobster_monkeyisland_land is here (was in original section)
    -- kyno_kokonut and ancientfruit_nightvision are here (updated prefabs)
    -- =============================================================
    wobster_monkeyisland_land    = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_banana                  = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_kokonut                 = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_coffeebeans             = {ingredients = {kyno_pigcoin1 = 1}},
    wormlight                    = {ingredients = {kyno_pigcoin1 = 1}},
    ancientfruit_nightvision     = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_spotspice_leaf          = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_wheat                   = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_milk_beefalo            = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_milk_koalefant          = {ingredients = {kyno_pigcoin1 = 1}},
    cheese_yellow                = {ingredients = {kyno_pigcoin1 = 2}},
    cheese_white                 = {ingredients = {kyno_pigcoin1 = 2}},
    cheese_koalefant             = {ingredients = {kyno_pigcoin1 = 2}},
    cutlichen                    = {ingredients = {kyno_pigcoin1 = 1}},
    smallmeat                    = {ingredients = {kyno_pigcoin1 = 1}},
    meat                         = {ingredients = {kyno_pigcoin1 = 1}},
    monstermeat                  = {ingredients = {kyno_pigcoin1 = 1}},
    plantmeat                    = {ingredients = {kyno_pigcoin1 = 1}},
    froglegs                     = {ingredients = {kyno_pigcoin1 = 1}},
    trunk_summer                 = {ingredients = {kyno_pigcoin1 = 2}},
    trunk_winter                 = {ingredients = {kyno_pigcoin1 = 2}},
    bird_egg                     = {ingredients = {kyno_pigcoin1 = 1}},
    oceanfish_small_8_inv        = {ingredients = {kyno_pigcoin3 = 1}},
    oceanfish_medium_8_inv       = {ingredients = {kyno_pigcoin3 = 1}},
    kyno_oil                     = {ingredients = {kyno_pigcoin1 = 2}},
    kyno_aloe                    = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_radish                  = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_rice                    = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_sweetpotato             = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_turnip                  = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_parznip                 = {ingredients = {kyno_pigcoin1 = 1}},
    kyno_cucumber                = {ingredients = {kyno_pigcoin1 = 1}},
    littlebread                  = {ingredients = {kyno_pigcoin1 = 2}},
    berries_juicy                = {ingredients = {kyno_pigcoin1 = 1}},
}

return REBALANCE_RECIPES
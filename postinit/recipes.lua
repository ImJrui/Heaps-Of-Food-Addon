-- postinit/recipes.lua
-- Registers Partitio barter recipes for the items listed in REDME.md.
-- Pattern follows the parent mod's main/misc/hof_recipes_deciduous.lua
-- (limitedamount + TECH.LOST + actionstr "DECIDUOUSSHOP" + hint_msg "NEEDSDECIDUOUSSHOP"
--  + crafting filter "CRAFTING_STATION").
-- These recipes alone are insufficient — k_deciduousforest_trader.lua must also
-- add matching rows to ADD_TO_WARES_ALWAYS so the craftingstation LearnItem()s them.

GLOBAL.setmetatable(env, {__index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end })

-- ============================================================================
-- Cheap tier (W<=5, G=1):  min=2, max=5, no limit (resets each refresh)
-- ============================================================================

AddRecipe2("rebalance_deciduoustrader_firenettles",
    {Ingredient("kyno_pigcoin1", 2)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "firenettles_a",
        sg_state          = "give",
        product           = "firenettles",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_icenettles",
    {Ingredient("kyno_pigcoin1", 2)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_icenettles_a",
        sg_state          = "give",
        product           = "kyno_icenettles",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_twiggynuts",
    {Ingredient("kyno_pigcoin1", 2)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_twiggynuts_a",
        sg_state          = "give",
        product           = "kyno_twiggynuts",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_drumstick",
    {Ingredient("kyno_pigcoin1", 2)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "drumstick_a",
        sg_state          = "give",
        product           = "drumstick",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_succulent_picked",
    {Ingredient("kyno_pigcoin1", 1)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "succulent_picked_a",
        sg_state          = "give",
        product           = "succulent_picked",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_worm_bone",
    {Ingredient("kyno_pigcoin1", 5)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_worm_bone_a",
        sg_state          = "give",
        product           = "kyno_worm_bone",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_shark_fin",
    {Ingredient("kyno_pigcoin2", 1)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_shark_fin_a",
        sg_state          = "give",
        product           = "kyno_shark_fin",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_oceanfish_midnight_carp_inv",
    {Ingredient("kyno_pigcoin2", 1)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "oceanfish_midnight_carp_inv_a",
        sg_state          = "give",
        product           = "oceanfish_midnight_carp_inv",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_moon_froglegs",
    {Ingredient("kyno_pigcoin2", 1)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_moon_froglegs_a",
        sg_state          = "give",
        product           = "kyno_moon_froglegs",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_salmonfish",
    {Ingredient("kyno_pigcoin2", 1)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_salmonfish_a",
        sg_state          = "give",
        product           = "kyno_salmonfish",
    },
    {"CRAFTING_STATION"}
)

-- ============================================================================
-- Medium tier (W 10-20):  min=3, max=8, no limit
-- ============================================================================

AddRecipe2("rebalance_deciduoustrader_butter",
    {Ingredient("kyno_pigcoin1", 10)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "butter_a",
        sg_state          = "give",
        product           = "butter",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_poison_froglegs",
    {Ingredient("kyno_pigcoin1", 20)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_poison_froglegs_a",
        sg_state          = "give",
        product           = "kyno_poison_froglegs",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_crabmeat",
    {Ingredient("kyno_pigcoin1", 20)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_crabmeat_a",
        sg_state          = "give",
        product           = "kyno_crabmeat",
    },
    {"CRAFTING_STATION"}
)

-- ============================================================================
-- High tier (W 30-50 or B=1):  min=1, max=3, no limit (resets each refresh)
-- Mandrake and Crab King meat: limit=1 (capped at 1 ever available — rare drops)
-- ============================================================================

AddRecipe2("rebalance_deciduoustrader_kyno_piko",
    {Ingredient("kyno_pigcoin1", 50)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_piko_a",
        sg_state          = "give",
        product           = "kyno_piko",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_beanbugs",
    {Ingredient("kyno_pigcoin1", 30)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_beanbugs_a",
        sg_state          = "give",
        product           = "kyno_beanbugs",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_limpets",
    {Ingredient("kyno_pigcoin1", 50)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_limpets_a",
        sg_state          = "give",
        product           = "kyno_limpets",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_mandrake",
    {Ingredient("kyno_pigcoin3", 1)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "mandrake_a",
        sg_state          = "give",
        product           = "mandrake",
    },
    {"CRAFTING_STATION"}
)

AddRecipe2("rebalance_deciduoustrader_kyno_crabkingmeat",
    {Ingredient("kyno_pigcoin3", 1)}, TECH.LOST,
    {
        limitedamount     = true,
        nounlock          = true,
        no_deconstruction = true,
        hint_msg          = "NEEDSDECIDUOUSSHOP",
        actionstr         = "DECIDUOUSSHOP",
        description       = "kyno_crabkingmeat_a",
        sg_state          = "give",
        product           = "kyno_crabkingmeat",
    },
    {"CRAFTING_STATION"}
)

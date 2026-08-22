-- postinit/recipes.lua
-- Registers Partitio barter recipes for the items listed in README.md.
-- Each entry's key is the product prefab name; the loop generates the matching
-- AddRecipe2 call with `rebalance_deciduoustrader_<prefab>` as the recipe name.
-- Companion file postinit/prefabs/k_deciduousforest_trader.lua must also list
-- the same prefabs in its GOODS table so the craftingstation LearnItem()s them.

GLOBAL.setmetatable(env, {__index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end })

local rebalance_recipes = require("rebalance_recipes")

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
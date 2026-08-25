-- modmain.lua
-- All files must be imported explicitly — there is no auto-loading for
-- postinit/ or any other directory.

modimport("main/constants")

-- Utility helpers (MergeTable, IsArray).
modimport("main/toolutil")

-- Populates STRINGS.RECIPE_DESC from STRINGS.CHARACTERS.GENERIC.DESCRIBE
-- at AddSimPostInit time (after parent mod's kyno_* DESCRIBE entries land).
modimport("main/strings")

-- Auto-fills missing STRINGS.RECIPE_DESC.<KEY>_A from WILSON.DESCRIBE / NAMES.
modimport("postinit/strings")

-- Registers Partitio barter recipes (18 AddRecipe2 calls).
modimport("postinit/recipes")

-- Hooks kyno_deciduousforest_seller via AddPrefabPostInit to register
-- WARES rows matching the recipes above (required for LearnItem to fire).
modimport("postinit/prefabs/k_deciduousforest_trader")
modimport("postinit/prefabs/brewerable")

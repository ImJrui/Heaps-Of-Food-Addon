-- strings/common.lua
-- RECIPE_DESC entries for the addon's Partitio barter recipes.
-- Each key matches the `description` field on an AddRecipe2 in postinit/recipes.lua
-- (uppercased, e.g. "firenettles_a" -> STRINGS.RECIPE_DESC.FIRENETTLES_A).
--
-- Values are short item descriptions shown when hovering the recipe in the
-- crafting menu. The parent mod's STRINGS.CHARACTERS.GENERIC.DESCRIBE.* entries
-- for kyno_* prefabs are empty, so we provide explicit English text here.
-- Localized translations live in scripts/languages/*.po.

GLOBAL.setfenv(1, GLOBAL)

return {
    RECIPE_DESC = {
        FIRENETTLES_A                   = "Fire Nettles",
        KYNO_ICENETTLES_A               = "Frosty Nettles",
        KYNO_TWIGGYNUTS_A               = "Twiggy Nuts",
        DRUMSTICK_A                     = "Drumstick",
        SUCCULENT_PICKED_A              = "Succulent",
        KYNO_WORM_BONE_A                = "Worm Bone",
        KYNO_SHARK_FIN_A                = "Shark Fin",
        OCEANFISH_MIDNIGHT_CARP_INV_A   = "Midnight Carp",
        KYNO_MOON_FROGLEGS_A            = "Moon Frog Legs",
        KYNO_SALMONFISH_A               = "Salmon Fish",
        BUTTER_A                        = "Butter",
        KYNO_POISON_FROGLEGS_A          = "Poison Frog Legs",
        KYNO_CRABMEAT_A                 = "Crab Meat",
        KYNO_PIKO_A                     = "Piko",
        KYNO_BEANBUGS_A                 = "Bean Bugs",
        KYNO_LIMPETS_A                  = "Limpets",
        MANDRAKE_A                      = "Mandrake",
        KYNO_CRABKINGMEAT_A             = "Crab King Meat",
    },
}

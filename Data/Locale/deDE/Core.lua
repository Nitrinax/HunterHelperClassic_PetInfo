if GetLocale() == "deDE" then

    _HHC.Modules.PetInfo.Locale.Core = {

        --addon
        ["MODULE_LOADED"] = "geladen",
        ["MODULE_DISABLED_ONLY_FOR_HUNTER_CLASS"] = "Module deaktiviert, da dieses Module nur für Jäger bestimmt ist.", --Module disabled because this addon is only for hunter

        --localized hunter class name
        ["LOCALIZED_HUNTER_CLASS_NAME"] = "Jäger",

        ["END_TAG"] = ""

    };

    _HHC.Modules.PetInfo.Locale.Experiencepoints = {

        ["NO_PET_SOMMONED"] = "kein Tier gerufen",
        ["PLAYER_LEVEL_REACHED"] = "Spielerlevel erreicht",
        ["MAX_LEVEL_REACHED"] = "Maximallevel erreicht",

        ["END_TAG"] = ""

    };

    _HHC.Modules.PetInfo.Locale.Happiness = {

        ["YOUR_PET_IS"] = "dein Begleiter ist",
        ["PET_UNHAPPY"] = "unglücklich",
        ["PET_NEUTRAL"] = "neutral",
        ["PET_HAPPY"] = "glücklich",

        ["END_TAG"] = ""

    };

    _HHC.Modules.PetInfo.Locale.Trainingpoints = {

        ["ALL_TRAININGPOINTS_SPEND"] = "alle TP vergeben",
        ["UNSPEND_TRAININGPOINTS"] = "unvergebene TP",

        ["END_TAG"] = ""

    };

end
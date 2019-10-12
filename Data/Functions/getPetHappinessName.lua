function _HHC.Modules.PetInfo.Functions:getPetHappinessName(happiness)

    local happinessName = "";

    if happiness == 1 then
        happinessName = _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Happiness,
                            "PET_UNHAPPY",
                            "unhappy");
    elseif happiness == 2 then
        happinessName = _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Happiness,
                            "PET_NEUTRAL",
                            "neutral");
    elseif happiness == 3 then
        happinessName = _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Happiness,
                            "PET_HAPPY",
                            "happy");
    end

    return happinessName;

end
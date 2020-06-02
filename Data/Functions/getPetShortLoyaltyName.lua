function _HHC.Modules.PetInfo.Functions:getPetShortLoyaltyName()

    local petShortLoyaltyName = "";

    local petShortLoyaltyNamePos = string.find(_HHC.Data.CurrentPetLoyalty, ")");
    --print(petShortLoyaltyNamePos);

    petShortLoyaltyName =  _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Loyalty,
        "LOYALTY_LEVEL",
        "loyalty level")
        .. " "
        .. string.sub( _HHC.Data.CurrentPetLoyalty, petShortLoyaltyNamePos + 2);
    --print(petShortLoyaltyName);

    return petShortLoyaltyName;

end
function _HHC.Functions:updatePetHappiness()

    local happiness, damagePercentage, petLoyaltyRate = GetPetHappiness();

    _HHC.Data.CurrentPetHappinness = happiness;
    --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetHappinness, true));

    _HHC.Data.CurrentPetDamagePercentages = damagePercentage;
    --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetHappinness, true));

    _HHC.Data.CurrentPetLoyaltyRate = petLoyaltyRate;
    --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetLoyalty, true));

end
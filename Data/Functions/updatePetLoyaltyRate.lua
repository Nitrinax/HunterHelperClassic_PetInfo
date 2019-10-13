function _HHC.Modules.PetInfo.Functions:updatePetLoyaltyRate()

    local happiness, damagePercentage, petLoyaltyRate = GetPetHappiness();

    _HHC.Data.CurrentPetLoyaltyRate = petLoyaltyRate;
    --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetLoyalty, true));

end
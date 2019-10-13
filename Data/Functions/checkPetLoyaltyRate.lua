function _HHC.Modules.PetInfo.Functions:checkPetLoyaltyRate()

    local currentetLoyaltyRate = _HHC.Data.CurrentPetLoyaltyRate;

    _HHC.Modules.PetInfo.Functions:updatePetLoyaltyRate();

    if currentetLoyaltyRate < _HHC.Data.CurrentPetLoyaltyRate then

        --ntrnx_debug(_LibCF:colored_print("orange", "PetLoyaltyRate " .. _HHC.Data.CurrentPetLoyaltyRate, true));

    elseif currentetLoyaltyRate > _HHC.Data.CurrentPetLoyaltyRate then

        --ntrnx_debug(_LibCF:colored_print("orange", "PetLoyaltyRate " .. _HHC.Data.CurrentPetLoyaltyRate, true))

    end

end
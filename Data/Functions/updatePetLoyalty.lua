
function _HHC.Modules.PetInfo.Functions:updatePetLoyalty()

    local petLoyalty = GetPetLoyalty();

    _HHC.Data.CurrentPetLoyalty = petLoyalty;
    --print(petLoyalty);

end

function _HHC.Modules.PetInfo.Functions:checkPetLoyaltyRate()

    local currentetLoyaltyRate = _HHC.Data.CurrentPetLoyaltyRate;

    _HHC.Modules.PetInfo.Functions:updatePetLoyaltyRate();

    if currentetLoyaltyRate < _HHC.Data.CurrentPetLoyaltyRate then

        ntrnx_debug(_LibCF:colored_print("orange", "PetLoyaltyRate " .. _HHC.Data.CurrentPetLoyaltyRate, true));

    elseif currentetLoyaltyRate > _HHC.Data.CurrentPetLoyaltyRate then

        ntrnx_debug(_LibCF:colored_print("orange", "PetLoyaltyRate " .. _HHC.Data.CurrentPetLoyaltyRate, true))

    end

end

function _HHC.Modules.PetInfo.Functions:updatePetLoyaltyRate()

    local happiness, damagePercentage, petLoyaltyRate = GetPetHappiness();

    _HHC.Data.CurrentPetLoyaltyRate = petLoyaltyRate;
    --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetLoyalty, true));

end


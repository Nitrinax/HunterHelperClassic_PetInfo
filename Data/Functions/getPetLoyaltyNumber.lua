function _HHC.Modules.PetInfo.Functions:getPetLoyaltyNumber()

    local petLoyaltyNumber = 0;

    if string.find(_HHC.Data.CurrentPetLoyalty, "6") then
        petLoyaltyNumber = 6;
    elseif string.find(_HHC.Data.CurrentPetLoyalty, "5") then
        petLoyaltyNumber = 5;
    elseif string.find(_HHC.Data.CurrentPetLoyalty, "4") then
        petLoyaltyNumber = 4;
    elseif string.find(_HHC.Data.CurrentPetLoyalty, "3") then
        petLoyaltyNumber = 3;
    elseif string.find(_HHC.Data.CurrentPetLoyalty, "2") then
        petLoyaltyNumber = 6;
    elseif string.find(_HHC.Data.CurrentPetLoyalty, "1") then
        petLoyaltyNumber = 6;
    end

    return petLoyaltyNumber;

end
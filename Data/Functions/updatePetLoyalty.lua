
function _HHC.Modules.PetInfo.Functions:updatePetLoyalty()

    local petLoyalty = GetPetLoyalty();

    _HHC.Data.CurrentPetLoyalty = petLoyalty;
    --print(petLoyalty);

end
function _HHC.Modules.PetInfo.Functions:setupPetName()

    if _HHC.Functions:checkIfPetSummoned() == true then

        local unitName = GetUnitName("pet", false);

        --pet text
        _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Name.text, unitName);

    else

        --pet text
        _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Name.text, "");

    end

end
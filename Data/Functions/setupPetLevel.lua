function _HHC.Modules.PetInfo.Functions:setupPetLevel()

    if _HHC.Functions:checkIfPetSummoned() == true then

        _HHC.Modules.PetInfo.Functions:updatePetLevel();

        --pet level
        _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Level.text, "Level " .. _HHC.Data.CurrentPetLevel);

    else

        --pet level
        _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Level.text, "");

    end

end
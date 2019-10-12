function _HHC.Modules.PetInfo.Functions:setupPetExperiencepoints()

    --reset pet experience value
    _HHC.Modules.PetInfo.Element.Frames.Experiencepoints:SetValue(0);

    --reset pet experience text
    _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Experiencepoints.text, "");

    if _HHC.Functions:checkIfPetSummoned() == true then

        if _HHC.Functions:checkPetSameLevelAsPlayer() == false then

            _HHC.Modules.PetInfo.Functions:updatePetExperiencepoints();

        else

            if _HHC.Functions:checkUnitMaxLevel("pet") == false then

                _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Experiencepoints.text, 
                    _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Experiencepoints,
                    "PLAYER_LEVEL_REACHED",
                    "player level reached")
                );

            else

                _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Experiencepoints.text, 
                    _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Experiencepoints,
                    "MAX_LEVEL_REACHED",
                    "max level reached")
                );

            end

        end

    else

        _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Experiencepoints.text,
            _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Experiencepoints,
            "NO_PET_SOMMONED",
            "no pet summoned")
        );

    end

end
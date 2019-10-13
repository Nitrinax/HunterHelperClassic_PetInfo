function _HHC.Modules.PetInfo.Functions:setupPetName()

    if _HHC.Functions:checkIfPetSummoned() == true then

        local unitName = GetUnitName("pet", false);

        --pet name
        _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Name.text, unitName);

    else

        if _HHC.Modules.PetInfo.HideBarsWhenNoPetSummoned == false then

            --pet name
            _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Name.text, "");

        else

            if _HHC.Functions:checkIfPlayerInVehicle() == 0 then

                --show message no pet spawned
                _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Name.text,
                    _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Experiencepoints,
                    "NO_PET_SOMMONED",
                    "no pet summoned")
                );

            elseif _HHC.Functions:checkIfPlayerInVehicle() == 1 then

                --show message in flight
                _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Name.text,
                    _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Experiencepoints,
                    "PLAYER_IN_FLIGHT",
                    "player in flight")
                );

            -- code for future api extension
            -- elseif _HHC.Functions:checkIfPlayerInVehicle() == 2 then

            --     --show message in vehicle
            --     _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Name.text,
            --         _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Experiencepoints,
            --         "PLAYER_IN_VEHICLE",
            --         "player in vehicle")
            --     );

            end

        end

    end

end
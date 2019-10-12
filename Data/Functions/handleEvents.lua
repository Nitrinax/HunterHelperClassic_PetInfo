function _HHC.Modules.PetInfo.Functions:handleEvents(frame)

    frame:SetScript("OnEvent", function(self, event, ...)

        --ntrnx_debug(_LibCF:colored_print("orange", event, true));

        -- check event PLAYER_LEVEL_UP
        if event == "PLAYER_LEVEL_UP" then

            --ntrnx_debug(_LibCF:colored_print("orange", event, true));

        -- check event PLAYER_XP_UPDATE
        --elseif event == "PLAYER_XP_UPDATE" then

            --ntrnx_debug(_LibCF:colored_print("orange", event, true));
        
        -- check event PET_BAR_UPDATE
        elseif event == "PET_BAR_UPDATE" then

            --ntrnx_debug(_LibCF:colored_print("orange", event, true));

            if _HHC.Modules.PetInfo.Element.List["NAME"] == true then
                _HHC.Modules.PetInfo.Functions:setupPetName();
            end            
            if _HHC.Modules.PetInfo.Element.List["LEVEL"] == true then
                _HHC.Modules.PetInfo.Functions:updatePetLevel();
                _HHC.Modules.PetInfo.Functions:setupPetLevel();
            end
            if _HHC.Modules.PetInfo.Element.List["EXPERIENCEPOINTS"] == true then
                _HHC.Modules.PetInfo.Functions:setupPetExperiencepoints();
            end
            if _HHC.Modules.PetInfo.Element.List["HAPPINESS"] == true then
                _HHC.Modules.PetInfo.Functions:setupPetHappiness();
            end
            if _HHC.Modules.PetInfo.Element.List["LOYALTY"] == true then
                _HHC.Modules.PetInfo.Functions:setupPetLoyalty();
            end
            if _HHC.Modules.PetInfo.Element.List["TRAININGPOINTS"] == true then
                _HHC.Modules.PetInfo.Functions:setupPetTrainingpoints();
            end

        -- check event UNIT_HAPPINESS
        elseif event == "UNIT_HAPPINESS" then

            --ntrnx_debug(_LibCF:colored_print("orange", event, true));

            if _HHC.Modules.PetInfo.Element.List["HAPPINESS"] == true then
                _HHC.Modules.PetInfo.Functions:setupPetHappiness();
            end

            _HHC.Modules.PetInfo.Functions:checkPetLoyaltyRate();

        -- check event UNIT_LEVEL
        elseif event == "UNIT_LEVEL" then

            ntrnx_debug(_LibCF:colored_print("orange", event, true));

        -- check event UNIT_PET
        elseif event == "UNIT_PET" then

            --ntrnx_debug(_LibCF:colored_print("orange", event, true));

        -- check event UNIT_PET_EXPERIENCE
        elseif (event == "PLAYER_XP_UPDATE") or (event == "UNIT_PET_EXPERIENCE") then

            if _HHC.Modules.PetInfo.Element.List["EXPERIENCEPOINTS"] == true then
                _HHC.Modules.PetInfo.Functions:setupPetExperiencepoints();
            end

        -- check event UNIT_PET_TRAINING_POINTS
        elseif event == "UNIT_PET_TRAINING_POINTS" then

            ntrnx_debug(_LibCF:colored_print("orange", event, true));

            if _HHC.Modules.PetInfo.Element.List["TRAININGPOINTS"] == true then
                _HHC.Modules.PetInfo.Functions:setupPetTrainingpoints();
            end

        else

            ntrnx_debug(_HHC.Functions:colored_print("yellow", event .. " not handled"))

        end

    end);

end
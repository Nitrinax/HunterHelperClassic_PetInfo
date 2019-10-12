function _HHC.Modules.PetInfo.Functions:addElements(targetFrame)

    --elements loader
    -- for key, value in _LibCF:sorted_pairs(_HHC.Modules.PetInfo.Element.List) do

    --     _LibCF:colored_print("yellow", "_HHC.Modules.PetInfo.Element.List[\"" .. key .. "\"] = " .. tostring(value));

    -- end

    if _HHC.Modules.PetInfo.Element.List["NAME"] == true then

        _HHC.Modules.PetInfo.Element.Frames.Name = _HHC.Modules.PetInfo.Element.Functions:createNameElement(targetFrame);

        _HHC.Modules.PetInfo.Functions:setupPetName();

        _HHC.Modules.PetInfo.Element.Frames.Name:SetHeight(_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_NAME_ELEMENT_HEIGHT"]);

        --add pet name element height
        _HHC.Modules.PetInfo.Element.Height = _HHC.Modules.PetInfo.Element.Height
            + _HHC.Modules.PetInfo.Element.Frames.Name:GetHeight()
            + _HHC.Frames["DEFAULT_ELEMENT_FRAME_SPACE"];

    end

    if _HHC.Modules.PetInfo.Element.List["LEVEL"] == true then

        _HHC.Modules.PetInfo.Element.Frames.Level = _HHC.Modules.PetInfo.Element.Functions:createLevelElement(_HHC.Modules.PetInfo.Frames.Core);

        _HHC.Modules.PetInfo.Functions:setupPetLevel();

        _HHC.Modules.PetInfo.Element.Frames.Level:SetHeight(_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_HEIGHT"]);

        --add pet level element height
        if _HHC.Modules.PetInfo.Element.List["NAME"] == false then

            _LibWidgets:setPoint(_HHC.Modules.PetInfo.Element.Frames.Level.text,
                _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_TEXT_POS"],
                _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_TEXT_RIGHT_OFFSET"],
                _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_NAME_ELEMENT_TEXT_TOP_OFFSET"] - _HHC.Modules.PetInfo.Element.Height
            );

            _HHC.Modules.PetInfo.Element.Height = _HHC.Modules.PetInfo.Element.Height
                + _HHC.Modules.PetInfo.Element.Frames.Level:GetHeight()
                + _HHC.Frames["DEFAULT_ELEMENT_FRAME_SPACE"];

        end

    end

    if _HHC.Modules.PetInfo.Element.List["EXPERIENCEPOINTS"] == true then

        _HHC.Modules.PetInfo.Element.Frames.Experiencepoints = _HHC.Modules.PetInfo.Element.Functions:createExperiencepointsElement(_HHC.Modules.PetInfo.Frames.Core);

        _HHC.Modules.PetInfo.Functions:setupPetExperiencepoints();

        _HHC.Modules.PetInfo.Element.Frames.Experiencepoints:SetHeight(_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_HEIGHT"]);

        _HHC.Modules.PetInfo.Element.Height = _HHC.Modules.PetInfo.Element.Height
            + _HHC.Modules.PetInfo.Element.Frames.Experiencepoints:GetHeight()
            + _HHC.Frames["DEFAULT_ELEMENT_FRAME_SPACE"];

    end

    if _HHC.Modules.PetInfo.Element.List["HAPPINESS"] == true then

        _HHC.Modules.PetInfo.Element.Frames.Happiness = _HHC.Modules.PetInfo.Element.Functions:createHappinessElement(_HHC.Modules.PetInfo.Frames.Core);

        _HHC.Modules.PetInfo.Functions:setupPetHappiness();

        _HHC.Modules.PetInfo.Element.Frames.Happiness:SetHeight(_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_HEIGHT"]);

        _HHC.Modules.PetInfo.Element.Height = _HHC.Modules.PetInfo.Element.Height
            + _HHC.Modules.PetInfo.Element.Frames.Happiness:GetHeight()
            + _HHC.Frames["DEFAULT_ELEMENT_FRAME_SPACE"];

    end

    if _HHC.Modules.PetInfo.Element.List["LOYALTY"] == true then

        _HHC.Modules.PetInfo.Element.Frames.Loyalty = _HHC.Modules.PetInfo.Element.Functions:createLoyaltyElement(_HHC.Modules.PetInfo.Frames.Core);

        _HHC.Modules.PetInfo.Functions:setupPetLoyalty();

        _HHC.Modules.PetInfo.Element.Frames.Loyalty:SetHeight(_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_HEIGHT"]);

        _HHC.Modules.PetInfo.Element.Height = _HHC.Modules.PetInfo.Element.Height
            + _HHC.Modules.PetInfo.Element.Frames.Loyalty:GetHeight()
            + _HHC.Frames["DEFAULT_ELEMENT_FRAME_SPACE"];

    end

    if _HHC.Modules.PetInfo.Element.List["TRAININGPOINTS"] == true then

        _HHC.Modules.PetInfo.Element.Frames.Trainingpoints = _HHC.Modules.PetInfo.Element.Functions:createTrainingPointsElement(_HHC.Modules.PetInfo.Frames.Core);

        _HHC.Modules.PetInfo.Functions:setupPetTrainingpoints();

        _HHC.Modules.PetInfo.Element.Frames.Trainingpoints:SetHeight(_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_HEIGHT"]);

        _HHC.Modules.PetInfo.Element.Height = _HHC.Modules.PetInfo.Element.Height
            + _HHC.Modules.PetInfo.Element.Frames.Trainingpoints:GetHeight()
            + _HHC.Frames["DEFAULT_ELEMENT_FRAME_SPACE"];

    end

    if _HHC.Modules.PetInfo.Element.List["FOOD"] == true then
    end

    if _HHC.Modules.PetInfo.Element.List["FAMILTY"] == true then
    end

    if _HHC.Modules.PetInfo.Element.List["ROLE"] == true then
    end
    
    targetFrame:SetHeight(_HHC.Modules.PetInfo.Element.Height
        + _HHC.Frames["DEFAULT_ELEMENT_FRAME_SPACE"]
        + _HHC.Frames["DEFAULT_MODULE_FRAME_SPACE"]);   

end
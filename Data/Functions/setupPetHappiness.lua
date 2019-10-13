function _HHC.Modules.PetInfo.Functions:setupPetHappiness()

    -- Pet happy 19x20 Happy (Green big smiley face) : Your pet is perfectly happy with you and the world. In this state, your pet will do 125% of its normal damage to the mob during a fight.
    -- Pet neutral 19x20 Content (Yellow smiley face) : Your pet is contented but not really happy. It's worth feeding your pet at this stage to get it back to the Happy state above. Your pet will deal 100% of its damage at this stage.
    -- Pet unhappy 19x20 Unhappy (Red frowning face) : Your pet is unhappy and will only do 75% damage during fights.

    --reset pet happiness value
    _HHC.Modules.PetInfo.Element.Frames.Happiness:SetValue(0);

    --reset pet happiness text
    _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Happiness.text, "");

    if _HHC.Functions:checkIfPetSummoned() == true then

        _HHC.Modules.PetInfo.Element.Frames.Happiness:Show();

        _HHC.Functions:updatePetHappiness();

        --pet happiness
        _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Happiness.text, 
            _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Happiness,
                "YOUR_PET_IS",
                "your pet is")
                .. " "
                .. _HHC.Modules.PetInfo.Functions:getPetHappinessName(_HHC.Data.CurrentPetHappinness)
            );

        _HHC.Modules.PetInfo.Element.Frames.Happiness:SetMinMaxValues(0, 3);
        _HHC.Modules.PetInfo.Element.Frames.Happiness:SetValue(_HHC.Data.CurrentPetHappinness);

    else

        if _HHC.Modules.PetInfo.HideBarsWhenNoPetSummoned == false then

            --pet happiness
            _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Happiness.text, "");

        else

            _HHC.Modules.PetInfo.Element.Frames.Happiness:Hide();

        end

    end

end
function _HHC.Modules.PetInfo.Functions:setupPetTrainingpoints()

    --reset pet trainingpoints value
    _HHC.Modules.PetInfo.Element.Frames.Trainingpoints:SetValue(0);

    --reset pet trainingpoints text
    _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Trainingpoints.text, "");

    if _HHC.Functions:checkIfPetSummoned() == true then

        _HHC.Modules.PetInfo.Element.Frames.Trainingpoints:Show();

        _HHC.Functions:updatePetTrainingPoints();

        local unspendPoints = _HHC.Data.CurrentPetTotalPoints - _HHC.Data.CurrentPetPointsSpend;

        --training points text
        if unspendPoints == 0 then

            _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Trainingpoints.text,
                _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Trainingpoints,
                    "ALL_TRAININGPOINTS_SPEND",
                    "all trainingpoints spend")
                );

        else

            _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Trainingpoints.text,
                    unspendPoints
                    .. " "
                    .. _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Trainingpoints,
                    "UNSPEND_TRAININGPOINTS",
                    "unspend trainingpoints")
                );


            

        end

        _HHC.Modules.PetInfo.Element.Frames.Trainingpoints:SetMinMaxValues(0, _HHC.Data.CurrentPetTotalPoints);
        _HHC.Modules.PetInfo.Element.Frames.Trainingpoints:SetValue(_HHC.Data.CurrentPetPointsSpend);

    else

        if _HHC.Modules.PetInfo.HideBarsWhenNoPetSummoned == false then

            --pet training points
            _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Trainingpoints.text, "");

        else

            _HHC.Modules.PetInfo.Element.Frames.Trainingpoints:Hide();

        end

    end

end
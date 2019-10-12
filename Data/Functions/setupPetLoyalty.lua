function _HHC.Modules.PetInfo.Functions:setupPetLoyalty()

    -- Rebellious (Rank 1)
    --     During this stage, your pet's happiness fluctuated a great deal. If the pet or yourself were constantly dying, or if you dismissed the pet too often, he could begin to become very hard to handle and might have left you. 
    -- Unruly (Rank 2)
    --     You had begun to show the pet who the Alpha is but you still hadn't totally convinced him. You needed to keep feeding and treating the pet well. 
    -- Submissive (Rank 3)
    --     You won the pet over to some degree and it was ready to work harder at becoming your faithful companion. Feeding became a little less strenuous at this point, requiring less food to keep the pet happy. 
    -- Dependable (Rank 4)
    --     That's it, you were the boss unless you messed up by letting the food bowl stay empty too long. The pet had fully accepted you as its master and things were good. Your pet required less food to remain happy. 
    -- Faithful (Rank 5)
    --     It would have been extremely hard at this point to run the pet off except by a concerted plan of neglect and abuse. 
    -- Best Friend (Rank 6)
    --     Ahhh, isn't he cute? Your pet was now a furry rug at your feet when you settle down in front of the fireplace with a glass of wine and a good book. At this loyalty level your pet required the least food to remain happy. 

    --reset pet happiness value
    _HHC.Modules.PetInfo.Element.Frames.Loyalty:SetValue(0);

    --reset pet happiness text
    _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Loyalty.text, "");

    if _HHC.Functions:checkIfPetSummoned() == true then

        _HHC.Modules.PetInfo.Functions:updatePetLoyalty();

        --pet text
        _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Loyalty.text,
            _HHC.Data.CurrentPetLoyalty);

        local petLoyaltyNumber = _HHC.Modules.PetInfo.Functions:getPetLoyaltyNumber();

        _HHC.Modules.PetInfo.Element.Frames.Loyalty:SetMinMaxValues(0, 6);
        _HHC.Modules.PetInfo.Element.Frames.Loyalty:SetValue(petLoyaltyNumber);

    end

end
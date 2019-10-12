function _HHC.Modules.PetInfo.Functions:updatePetExperiencepoints()

    --pet experience
    local currXP, nextXP = GetPetExperience();

    _HHC.Modules.PetInfo.Element.Frames.Experiencepoints:SetMinMaxValues(0, nextXP);
    _HHC.Modules.PetInfo.Element.Frames.Experiencepoints:SetValue(currXP);

    _LibWidgets:setText(_HHC.Modules.PetInfo.Element.Frames.Experiencepoints.text, currXP .. " / " .. nextXP .. " XP");

end
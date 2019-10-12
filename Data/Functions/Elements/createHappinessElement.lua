function _HHC.Modules.PetInfo.Element.Functions:createHappinessElement(targetFrame)

    targetFrame.happiness = _LibWidgets:createStatusBar("StatusBar",
        targetFrame, 
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_WIDTH"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_HEIGHT"],
        true,
        false
    );

    _LibWidgets:setPoint(targetFrame.happiness,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TOP_OFFSET"] - _HHC.Modules.PetInfo.Element.Height
    );

    targetFrame.happiness:SetStatusBarTexture(_HHC.Modules.PetInfo.Element.Textures["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TEXTURE"]);
    targetFrame.happiness:SetStatusBarColor(0, 1, 0);
    targetFrame.happiness:SetMinMaxValues(0, 0);
    targetFrame.happiness:SetValue(0);
    
    targetFrame.happiness.bg = targetFrame.happiness:CreateTexture(nil, "BACKGROUND");
    targetFrame.happiness.bg:SetTexture(_HHC.Modules.PetInfo.Element.Textures["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_BACKGROUND_TEXTURE"]);
    targetFrame.happiness.bg:SetAllPoints();
    targetFrame.happiness.bg:SetVertexColor(1, 0, 0);

    targetFrame.happiness.text = _LibWidgets:createFontString(targetFrame.happiness,
        OVERLAY,
        nil,
        nil
    );

    _HHC.Functions:setupTargetFont(targetFrame.happiness.text,

        _HHC.Modules.PetInfo.UseDefaultFont,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_FONT"],

        _HHC.Modules.PetInfo.UseDefaultFontSize,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_SIZE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_FONT_SIZE"],

        _HHC.Modules.PetInfo.UseDefaultFontStyle,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_STYLE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_FONT_STYLE"],

        _HHC.Modules.PetInfo.UseDefaultFontColor,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_A"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_FONT_COLOR_A"]

    );

    _LibWidgets:setPoint(targetFrame.happiness.text,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TEXT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TEXT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TEXT_TOP_OFFSET"]
    );

    return targetFrame.happiness;

end
function _HHC.Modules.PetInfo.Element.Functions:createLoyaltyElement(targetFrame)

    targetFrame.loyalty = _LibWidgets:createStatusBar("StatusBar",
        targetFrame, 
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_WIDTH"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_HEIGHT"],
        true,
        false
    );

    _LibWidgets:setPoint(targetFrame.loyalty,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TOP_OFFSET"] - _HHC.Modules.PetInfo.Element.Height
    );

    targetFrame.loyalty:SetStatusBarTexture(_HHC.Modules.PetInfo.Element.Textures["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TEXTURE"]);
    targetFrame.loyalty:SetStatusBarColor(0, 1, 0);
    targetFrame.loyalty:SetMinMaxValues(0, 0);
    targetFrame.loyalty:SetValue(0);
    
    targetFrame.loyalty.bg = targetFrame.loyalty:CreateTexture(nil, "BACKGROUND");
    targetFrame.loyalty.bg:SetTexture(_HHC.Modules.PetInfo.Element.Textures["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_BACKGROUND_TEXTURE"]);
    targetFrame.loyalty.bg:SetAllPoints();
    targetFrame.loyalty.bg:SetVertexColor(1, 0, 0);

    targetFrame.loyalty.text = _LibWidgets:createFontString(targetFrame.loyalty,
        OVERLAY,
        nil,
        nil
    );

    _HHC.Functions:setupTargetFont(targetFrame.loyalty.text,

        _HHC.Modules.PetInfo.UseDefaultFont,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_FONT"],

        _HHC.Modules.PetInfo.UseDefaultFontSize,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_SIZE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_FONT_SIZE"],

        _HHC.Modules.PetInfo.UseDefaultFontStyle,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_STYLE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_FONT_STYLE"],

        _HHC.Modules.PetInfo.UseDefaultFontColor,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_A"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_FONT_COLOR_A"]

    );

    _LibWidgets:setPoint(targetFrame.loyalty.text,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TEXT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TEXT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TEXT_TOP_OFFSET"]
    );

    return targetFrame.loyalty;

end
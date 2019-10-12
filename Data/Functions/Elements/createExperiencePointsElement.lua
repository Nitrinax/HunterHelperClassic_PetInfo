function _HHC.Modules.PetInfo.Element.Functions:createExperiencepointsElement(targetFrame)

    targetFrame.xpbar = _LibWidgets:createStatusBar("StatusBar",
        targetFrame, 
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_WIDTH"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_HEIGHT"],
        true,
        false
    );

    _LibWidgets:setPoint(targetFrame.xpbar,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TOP_OFFSET"] - _HHC.Modules.PetInfo.Element.Height
    );

    targetFrame.xpbar:SetStatusBarTexture(_HHC.Modules.PetInfo.Element.Textures["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TEXTURE"]);
    targetFrame.xpbar:SetStatusBarColor(0, 1, 0);
    targetFrame.xpbar:SetMinMaxValues(0, 0);
    targetFrame.xpbar:SetValue(0);
    
    targetFrame.xpbar.bg = targetFrame.xpbar:CreateTexture(nil, "BACKGROUND");
    targetFrame.xpbar.bg:SetTexture(_HHC.Modules.PetInfo.Element.Textures["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_BACKGROUND_TEXTURE"]);
    targetFrame.xpbar.bg:SetAllPoints();
    targetFrame.xpbar.bg:SetVertexColor(1, 0, 0);

    targetFrame.xpbar.text = _LibWidgets:createFontString(targetFrame.xpbar,
        OVERLAY,
        nil,
        nil
    );

    _HHC.Functions:setupTargetFont(targetFrame.xpbar.text,

        _HHC.Modules.PetInfo.UseDefaultFont,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_FONT"],

        _HHC.Modules.PetInfo.UseDefaultFontSize,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_SIZE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_FONT_SIZE"],

        _HHC.Modules.PetInfo.UseDefaultFontStyle,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_STYLE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_FONT_STYLE"],

        _HHC.Modules.PetInfo.UseDefaultFontColor,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_A"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_FONT_COLOR_A"]

    );

    _LibWidgets:setPoint(targetFrame.xpbar.text,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TEXT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TEXT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TEXT_TOP_OFFSET"]
    );

    return targetFrame.xpbar;

end
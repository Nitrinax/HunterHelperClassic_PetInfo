function _HHC.Modules.PetInfo.Element.Functions:createTrainingPointsElement(targetFrame)

    targetFrame.trainingpoints = _LibWidgets:createStatusBar("StatusBar",
        targetFrame, 
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_WIDTH"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_HEIGHT"],
        true,
        false
    );

    _LibWidgets:setPoint(targetFrame.trainingpoints,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TOP_OFFSET"] - _HHC.Modules.PetInfo.Element.Height
    );

    targetFrame.trainingpoints:SetStatusBarTexture(_HHC.Modules.PetInfo.Element.Textures["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TEXTURE"]);
    targetFrame.trainingpoints:SetStatusBarColor(0, 1, 0);
    targetFrame.trainingpoints:SetMinMaxValues(0, 0);
    targetFrame.trainingpoints:SetValue(0);
    
    targetFrame.trainingpoints.bg = targetFrame.trainingpoints:CreateTexture(nil, "BACKGROUND");
    targetFrame.trainingpoints.bg:SetTexture(_HHC.Modules.PetInfo.Element.Textures["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_BACKGROUND_TEXTURE"]);
    targetFrame.trainingpoints.bg:SetAllPoints();
    targetFrame.trainingpoints.bg:SetVertexColor(1, 0, 0);

    targetFrame.trainingpoints.text = _LibWidgets:createFontString(targetFrame.trainingpoints,
        OVERLAY,
        nil,
        nil
    );

    _HHC.Functions:setupTargetFont(targetFrame.trainingpoints.text,

        _HHC.Modules.PetInfo.UseDefaultFont,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_FONT"],

        _HHC.Modules.PetInfo.UseDefaultFontSize,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_SIZE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_FONT_SIZE"],

        _HHC.Modules.PetInfo.UseDefaultFontStyle,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_STYLE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_FONT_STYLE"],

        _HHC.Modules.PetInfo.UseDefaultFontColor,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_A"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_FONT_COLOR_A"]

    );

    _LibWidgets:setPoint(targetFrame.trainingpoints.text,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TEXT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TEXT_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TEXT_TOP_OFFSET"]
    );

    return targetFrame.trainingpoints;

end
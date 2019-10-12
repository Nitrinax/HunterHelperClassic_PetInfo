function _HHC.Modules.PetInfo.Element.Functions:createLevelElement(targetFrame)

    --name/level frame
    targetFrame.level = _LibWidgets:createFrame("Frame",
        targetFrame,
        _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_WIDTH"],
        _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_HEIGHT"],
        false
    );

    --pet level fontstring
    targetFrame.level.text = _LibWidgets:createFontString(targetFrame,
        nil,
        nil,
        nil
    );

    _HHC.Functions:setupTargetFont(targetFrame.level.text,

        _HHC.Modules.PetInfo.UseDefaultFont,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_FONT"],

        _HHC.Modules.PetInfo.UseDefaultFontSize,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_SIZE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_FONT_SIZE"],

        _HHC.Modules.PetInfo.UseDefaultFontStyle,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_STYLE"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_FONT_STYLE"],

        _HHC.Modules.PetInfo.UseDefaultFontColor,
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_ELEMENT_FONT_COLOR_A"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_FONT_COLOR_R"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_FONT_COLOR_G"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_FONT_COLOR_B"],
        _HHC.Modules.PetInfo.Element.Fonts["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_FONT_COLOR_A"]

    );

    --pet level fontstring anchors
    _LibWidgets:setPoint(targetFrame.level.text,
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_TEXT_POS"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_TEXT_RIGHT_OFFSET"],
        _HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_TEXT_TOP_OFFSET"] - _HHC.Modules.PetInfo.Element.Height
    );

    return targetFrame.level;

end
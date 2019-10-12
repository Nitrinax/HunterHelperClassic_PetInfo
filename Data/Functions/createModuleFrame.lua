function _HHC.Modules.PetInfo.Functions:createModuleFrame(targetFrame)

    --pet frame
    targetFrame.pet = _LibWidgets:createFrame("Frame",
    targetFrame,
        _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_WIDTH"],
        _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_HEIGHT"],
        false
    );

    --anchors
    _LibWidgets:setPoint(targetFrame.pet,
        _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_POS"],
        _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_LEFT_OFFSET"],
        _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_TOP_OFFSET"]
    );

    --backdrop
    _LibWidgets:setBackdrop(targetFrame.pet,
        nil, --_HHC.Modules.PetInfo.Textures["DEFAULT_PETINFO_FRAME_BGFILE_TEXTURE"],
        nil, --_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_TILE"],
        nil, --_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_TILESIZE"],
        "", --_HHC.Modules.PetInfo.Textures["DEFAULT_PETINFO_FRAME_EDGEFILE_TEXTURE"],
        0, --_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_EDGESIZE"],
        0, --_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_INSET_LEFT"],
        0, --_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_INSET_TOP"],
        0, --_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_INSET_RIGHT"],
        0 --_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_INSET_BOTTOM"]
    );

    _LibWidgets:setBackdropColor(targetFrame.pet,
        _HHC.Modules.PetInfo.Colors["DEFAULT_PETINFO_FRAME_BACKDROP_COLOR"]
    );

    -- _LibWidgets:setBackdropBorderColor(targetFrame.pet,
    --     _HHC.Modules.PetInfo.Colors["DEFAULT_PETINFO_FRAME_BACKDROP_BORDER_COLOR"]
    -- );

    --alpha
    _LibWidgets:setAlpha(targetFrame.pet,
        _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_ALPHA"]
    );

    
    _HHC.Modules.PetInfo.Functions:registerEvents(targetFrame.pet);
    _HHC.Modules.PetInfo.Functions:handleEvents(targetFrame.pet);

    return targetFrame.pet;

end
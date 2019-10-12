--### check for hunter class
if _HHC.Functions:checkForHunterClass() == false then

    --show error messages if class != hunter
    _LibCF:colored_print("red",
        _HHC.Modules.PetInfo.Data.Title
        .. ": "
        .. _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Core, 
        "MODULE_DISABLED_ONLY_FOR_HUNTER_CLASS",
        "Module disabled because this module is only for hunter")
    );

    --self disabling
    DisableAddOn(_HHC.Modules.PetInfo.Data.ModuleName);

else

    if not _HHC.Options["SILENCE_MODULES"] or
        _HHC.Options["SILENCE_MODULES"] == nil or
        _HHC.Options["SILENCE_MODULES"] == false then

        --show loading message
        print(_LibCF:colored_print( "yellow",
            _HHC.Modules.PetInfo.Data.LongVersionString , true)
            .. " "
            .. _LibLocale:GetCatalogStr(_HHC.Modules.PetInfo.Locale.Core,
            "MODULE_LOADED",
            "loaded")
        );

    end

    --create module frame
    _HHC.Modules.PetInfo.Frames.Core = _HHC.Modules.PetInfo.Functions:createModuleFrame(_HHC.Frames.Main);
    
    --add module elements
    _HHC.Modules.PetInfo.Functions:addElements(_HHC.Modules.PetInfo.Frames.Core);

    --add module height to addon main frame height
    _HHC.Modules.Height = _HHC.Modules.Height + _HHC.Modules.PetInfo.Frames.Core:GetHeight();

end
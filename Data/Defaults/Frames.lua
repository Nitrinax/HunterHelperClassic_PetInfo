--### petinfo core

--petinfo frame
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_PARENT"] = UIParent;

_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_WIDTH"] = _HHC.Frames["DEFAULT_FRAME_WIDTH"]
    - _HHC.Frames["DEFAULT_FRAME_BACKDROP_INSET_LEFT"] 
    - _HHC.Frames["DEFAULT_FRAME_BACKDROP_INSET_RIGHT"];

_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_HEIGHT"] = 200;
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_POS"] = "TOPLEFT";
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_LEFT_OFFSET"] = _HHC.Frames["DEFAULT_FRAME_BACKDROP_INSET_LEFT"];
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_TOP_OFFSET"] = - _HHC.Modules.Height;
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_ALPHA"] = 0.75;

--petinfo frame backdrop
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_TILE"] = false;
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_TILESIZE"] = 32;
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_EDGESIZE"] = 8;
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_INSET_LEFT"] = 0;
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_INSET_TOP"] = 0;
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_INSET_RIGHT"] = 0;
_HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_BACKDROP_INSET_BOTTOM"] = 0;

--### petinfo elements

--name element frame
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_NAME_ELEMENT_WIDTH"] = _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_WIDTH"] - 60;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_NAME_ELEMENT_HEIGHT"] = 18;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_NAME_ELEMENT_TEXT_POS"] = "TOPLEFT";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_NAME_ELEMENT_TEXT_LEFT_OFFSET"] = 6;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_NAME_ELEMENT_TEXT_TOP_OFFSET"] = -4;

--level element frame
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_WIDTH"] = 60;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_HEIGHT"] = 18;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_TEXT_POS"] = "TOPRIGHT";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_TEXT_RIGHT_OFFSET"] = -4;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LEVEL_ELEMENT_TEXT_TOP_OFFSET"] = 16;

--experiencepoints element frame
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_WIDTH"] = _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_WIDTH"] - 12;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_HEIGHT"] = 24;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_POS"] = "TOPLEFT";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_LEFT_OFFSET"] = 6;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TOP_OFFSET"] = 0;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TEXT_POS"] = "CENTER";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TEXT_LEFT_OFFSET"] = 0;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_EXPERIENCEPOINTS_ELEMENT_TEXT_TOP_OFFSET"] = 0;

--happiness element frame
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_WIDTH"] = _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_WIDTH"] - 12;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_HEIGHT"] = 24;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_POS"] = "TOPLEFT";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_LEFT_OFFSET"] = 6;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TOP_OFFSET"] = 0;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TEXT_POS"] = "CENTER";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TEXT_LEFT_OFFSET"] = 0;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_HAPPINESS_ELEMENT_TEXT_TOP_OFFSET"] = 0;

--loyalty element frame
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_WIDTH"] = _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_WIDTH"] - 12;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_HEIGHT"] = 24;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_POS"] = "TOPLEFT";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_LEFT_OFFSET"] = 6;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TOP_OFFSET"] = 0;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TEXT_POS"] = "CENTER";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TEXT_LEFT_OFFSET"] = 0;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_LOYALTY_ELEMENT_TEXT_TOP_OFFSET"] = 0;

--trainingspoints element frame
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_WIDTH"] = _HHC.Modules.PetInfo.Frames["DEFAULT_PETINFO_FRAME_WIDTH"] - 12;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_HEIGHT"] = 24;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_POS"] = "TOPLEFT";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_LEFT_OFFSET"] = 6;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TOP_OFFSET"] = 0;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TEXT_POS"] = "CENTER";
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TEXT_LEFT_OFFSET"] = 0;
_HHC.Modules.PetInfo.Element.Frames["DEFAULT_PETINFO_FRAME_TRAININGPOINTS_ELEMENT_TEXT_TOP_OFFSET"] = 0;
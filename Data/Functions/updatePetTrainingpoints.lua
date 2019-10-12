function _HHC.Functions:updatePetTrainingPoints()

    local totalPoints, pointsSpent = GetPetTrainingPoints();

    _HHC.Data.CurrentPetTotalPoints = totalPoints;
    --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetTrainingsPoints, true));

    _HHC.Data.CurrentPetPointsSpend = pointsSpent;
    --ntrnx_debug(_LibCF:colored_print("yellow", "Petlevel : " .. _HHC.Data.CurrentPetPointsSpend, true));

end
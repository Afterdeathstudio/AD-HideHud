--      _     __ _            ____             _   _     
--     / \   / _| |_ ___ _ __|  _ \  ___  __ _| |_| |__  
--    / _ \ | |_| __/ _ \ '__| | | |/ _ \/ _` | __| '_ \ 
--   / ___ \|  _| ||  __/ |  | |_| |  __/ (_| | |_| | | |
--  /_/   \_\_|  \__\___|_|  |____/ \___|\__,_|\__|_| |_|
-- https://discord.gg/5D3wdy4dQH ┃ https://github.com/Afterdeathstudio ┃ https://afterdeath.gitbook.io/afterdeath-studios/

local function hideHudComponents()
    if Config.HideHealth then
        HideHudComponentThisFrame(1)
        HideHudComponentThisFrame(2)
    end

    if Config.HideArmour then
        HideHudComponentThisFrame(3)
    end

    if Config.HideCash then
        HideHudComponentThisFrame(4)
        HideHudComponentThisFrame(5)
    end

    if Config.HideWeaponAmmo then
        HideHudComponentThisFrame(6)
    end

    if Config.HideCrosshair then
        HideHudComponentThisFrame(14)
    end

    if Config.HideAreaName then
        HideHudComponentThisFrame(7)
    end

    if Config.HideStreetName then
        HideHudComponentThisFrame(8)
    end

    if Config.HideVehicleName then
        HideHudComponentThisFrame(9)
    end

    if Config.HideCinematic then
        HideHudComponentThisFrame(15)
        HideHudComponentThisFrame(16)
    end
end

CreateThread(function()
    while true do
        Wait(0)
        hideHudComponents()
    end
end)

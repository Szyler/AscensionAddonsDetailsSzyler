
--Immersion enables players that isn't in your group to show on the damage meter window


local Details = _G.Details
local C_Timer = _G.C_Timer
local C_Map = _G.C_Map
local ceil = math.ceil
local addonName, Details222 = ...

-- immersion namespace
Details.Immersion = {}

-- ASCENSION
-- @andrew
-- This is disabled by unregistering the event
-- its fixable but would require a small amount of work that is pointless at the movement
-- since ascension has no fights / activities that would use this
local immersionFrame = _G.CreateFrame("frame", "DetailsImmersionFrame", _G.UIParent)
--immersionFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
immersionFrame.DevelopmentDebug = false

--check if can enabled the immersion stuff
function immersionFrame.CheckIfCanEnableImmersion()
    return false
end

--check events
immersionFrame:SetScript("OnEvent", function(_, event, ...)
    if (event == "ZONE_CHANGED_NEW_AREA") then
        C_Timer.After(3, immersionFrame.CheckIfCanEnableImmersion)
    end
end)

--store the GUID of the npc or player and point to the coords there the icon is
local iconPath1 = [[Interface\AddOns\Details\images\special_bar_icons]]
Details.Immersion.IconDatabase = {
    -- ["167826"] = {file = iconPath1, iconId = 1, interest = true, class = "MAGE"}, --lady jaina proudmoore
    -- ["167827"] = {file = iconPath1, iconId = 2, interest = true, class = "SHAMAN"}, --Thrall

    -- ["157432"] = {file = iconPath1, iconId = 3, interest = true, class = "WARRIOR"}, --bloodletter phantoriax, a npc inside torghast
    -- ["166148"] = {file = iconPath1, iconId = 4, interest = true, class = "WARRIOR"}, --sawn, a npc inside torghast
    -- ["171996"] = {file = iconPath1, iconId = 5, interest = true, class = "WARRIOR"}, --kythekios, a npc inside torghast
    -- ["172007"] = {file = iconPath1, iconId = 6, interest = true, class = "WARRIOR"}, --thelia, a npc inside torghast
    -- ["172024"] = {file = iconPath1, iconId = 7, interest = true, class = "WARRIOR"}, --telethakas, a npc inside torghast
    -- ["157406"] = {file = iconPath1, iconId = 8, interest = true, class = "WARRIOR"}, --renavyth, a npc inside torghast
    -- ["166151"] = {file = iconPath1, iconId = 9, interest = true, class = "WARRIOR"}, --moriaz the red, a npc inside torghast
}

local customIconsDB = Details.Immersion.IconDatabase

function Details.Immersion.GetIcon(aID)
    local hasCustomIcon = customIconsDB[aID]
    if (hasCustomIcon) then
        local iconId = hasCustomIcon.iconId
        local iconSizeNormalized = 0.03125
        local line = ceil(iconId / 32)
        local x = (iconId - ((line-1) * 32)) / 32
        local L = x - iconSizeNormalized
        local R = x
        local T = iconSizeNormalized * (line-1)
        local B = iconSizeNormalized * line

        return {hasCustomIcon.file, {L, R, T, B}}
    end
end

function Details.Immersion.IsNpcInteresting(aID)
    local npcImmersion = customIconsDB[aID]
    if (npcImmersion and npcImmersion.interest) then
        return true, npcImmersion.class
    end
end

--install data for raiding tiers

local C_Timer = _G.C_Timer
local DetailsFramework = _G.DetailsFramework
local tinsert = tinsert
local addonName, Details222 = ...

function Details.InstallRaidInfo()
    if true then return end -- this needs data for ascension probably
	do
		local INSTANCE_EJID = 1200
		local INSTANCE_MAPID = 2522
		local HDIMAGESPATH = [[Details\images\raid]]
		local HDFILEPREFIX = 'VaultoftheIncarnatesRaid'
		local EJ_LOREBG = 'UI-EJ-LOREBG-VaultoftheIncarnates'

		local ENCOUNTER_ID_CL = {
			[2587] = 1, --Eranog
			[2639] = 2, --Terros
			[2590] = 3, --The Primal Council
			[2592] = 4, --Sennarth, the Cold Breath
			[2635] = 5, --Dathea, Ascended
			[2605] = 6, --Kurog Grimtotem
			[2614] = 7, --Broodkeeper Diurna
			[2607] = 8, --Raszageth the Storm-Eater
			2587, 2639, 2590, 2592, 2635, 2605, 2614, 2607,
		}

		local ENCOUNTER_ID_EJ = {
			[2480] = 1, --Eranog
			[2500] = 2, --Terros
			[2486] = 3, --The Primal Council
			[2482] = 4, --Sennarth, the Cold Breath
			[2502] = 5, --Dathea, Ascended
			[2491] = 6, --Kurog Grimtotem
			[2493] = 7, --Broodkeeper Diurna
			[2499] = 8, --Raszageth the Storm-Eater
			2480, 2500, 2486, 2482, 2502, 2491, 2493, 2499,
		}

		local BOSSNAMES = {
			"Eranog", --1
			"Terros", --2
			"The Primal Council", --3
			"Sennarth, the Cold Breath", --4
			"Dathea, Ascended", --5
			"Kurog Grimtotem", --6
			"Broodkeeper Diurna", --7
			"Raszageth the Storm-Eater", --8
		}

		local ENCOUNTERS = {
			{boss = "Eranog", portrait = 4757695},
			{boss = "Terros", portrait = 4757701},
			{boss = "The Primal Council", portrait = 4757702},
			{boss = "Sennarth, the Cold Breath", portrait = 4757699},
			{boss = "Dathea, Ascended", portrait = 4757694},
			{boss = "Kurog Grimtotem", portrait = 4757696},
			{boss = "Broodkeeper Diurna", portrait = 4757693},
			{boss = "Raszageth the Storm-Eater", portrait = 4757698},
		}

		--load encounter journal
		DetailsFramework.EncounterJournal.EJ_SelectInstance(INSTANCE_EJID)
		local InstanceName = DetailsFramework.EncounterJournal.EJ_GetInstanceInfo(INSTANCE_EJID)

		Details:InstallEncounter({
			id = INSTANCE_MAPID, --map id
			ej_id = INSTANCE_EJID, --encounter journal id
			name = InstanceName,
			icons = "Interface\\AddOns\\" .. HDIMAGESPATH .. "\\" .. HDFILEPREFIX .. "_BossFaces",
			icon = "Interface\\AddOns\\" .. HDIMAGESPATH .. "\\" .. HDFILEPREFIX .. "_Icon256x128",
			is_raid = true,
			backgroundEJ = "Interface\\EncounterJournal\\" .. EJ_LOREBG,
			encounter_ids = ENCOUNTER_ID_EJ,
			encounter_ids2 = ENCOUNTER_ID_CL,
			boss_names = BOSSNAMES,
			encounters = ENCOUNTERS,
			boss_ids = {
				--npc ids
			},
		})

	end

	do
		--data for Sanctum of Domination (Shadowlands tier 1)
		local INSTANCE_EJID = 1193
		local INSTANCE_MAPID = 2450
		local HDIMAGESPATH = [[Details\images\raid]]
		local HDFILEPREFIX = 'SanctumofDominationRaid'
		local EJ_LOREBG = 'UI-EJ-LOREBG-SanctumofDomination'

		local ENCOUNTER_ID_CL = {
			[2423] = 1, --The Tarragrue
			[2433] = 2, --The Eye of the Jailer
			[2429] = 3, --The Nine
			[2432] = 4, --Remnant of Ner'zhul
			[2434] = 5, --Soulrender Dormazain
			[2430] = 6, --Painsmith Raznal
			[2436] = 7, --Guardian of the First Ones
			[2431] = 8, --Fatescribe Roh-Kalo
			[2422] = 9, --Kel'Thuzad
			[2435] = 10, --Sylvanas Windrunner
			2423, 2433, 2429, 2432, 2434, 2430, 2436, 2431, 2422, 2435,
		}

		local ENCOUNTER_ID_EJ = {
			[2435] = 1, --The Tarragrue
			[2442] = 2, --The Eye of the Jailer
			[2439] = 3, --The Nine
			[2444] = 4, --Remnant of Ner'zhul
			[2445] = 5, --Soulrender Dormazain
			[2443] = 6, --Painsmith Raznal
			[2446] = 7, --Guardian of the First Ones
			[2447] = 8, --Fatescribe Roh-Kalo
			[2440] = 9, --Kel'Thuzad
			[2441] = 10, --Sylvanas Windrunner
			2435, 2442, 2439, 2444, 2445, 2443, 2446, 2447, 2440, 2441,
		}

		--load encounter journal
		DetailsFramework.EncounterJournal.EJ_SelectInstance(INSTANCE_EJID)
		local InstanceName = DetailsFramework.EncounterJournal.EJ_GetInstanceInfo(INSTANCE_EJID)

		local BOSSNAMES = {
			"The Tarragrue", --1
			"The Eye of the Jailer", --2
			"The Nine", --3
			"Remnant of Ner'zhul", --4
			"Soulrender Dormazain", --5
			"Painsmith Raznal", --6
			"Guardian of the First Ones", --7
			"Fatescribe Roh-Kalo", --8
			"Kel'Thuzad", --9
			"Sylvanas Windrunner", --10
		}

		local ENCOUNTERS = {
			{boss = "The Tarragrue", portrait = 4071444},
			{boss = "The Eye of the Jailer", portrait = 4071426},
			{boss = "The Nine", portrait = 4071445},
			{boss = "Remnant of Ner'zhul", portrait = 4071439},
			{boss = "Soulrender Dormazain", portrait = 4071442},
			{boss = "Painsmith Raznal", portrait = 4079051},
			{boss = "Guardian of the First Ones", portrait = 4071428},
			{boss = "Fatescribe Roh-Kalo", portrait = 4071427},
			{boss = "Kel'Thuzad", portrait = 4071435},
			{boss = "Sylvanas Windrunner", portrait = 4071443},
		}

		Details:InstallEncounter ({
			id = INSTANCE_MAPID, --map id
			ej_id = INSTANCE_EJID, --encounter journal id
			name = InstanceName,
			icons = "Interface\\AddOns\\" .. HDIMAGESPATH .. "\\" .. HDFILEPREFIX .. "_BossFaces",
			icon = "Interface\\AddOns\\" .. HDIMAGESPATH .. "\\" .. HDFILEPREFIX .. "_Icon256x128",
			is_raid = true,
			backgroundEJ = "Interface\\EncounterJournal\\" .. EJ_LOREBG,
			encounter_ids = ENCOUNTER_ID_EJ,
			encounter_ids2 = ENCOUNTER_ID_CL,
			boss_names = BOSSNAMES,
			encounters = ENCOUNTERS,
			boss_ids = {
				--npc ids
			},
		})
	end

	do
		--data for Castle Nathria (Shadowlands tier 1)
		--F:\World of Warcraft\_retail_\BlizzardInterfaceArt\Interface\GLUES\LOADINGSCREENS\Expansion07\Main\LOADINGSCREEN_NzothRAID
		local INSTANCE_EJID = 1190
		local INSTANCE_MAPID = 2296
		local HDIMAGESPATH = [[Details\images\raid]]
		local HDFILEPREFIX = "CastleNathriaRaid"
		local EJ_LOREBG = "UI-EJ-LOREBG-CastleNathria"

		local PORTRAIT_LIST = {
			3752190, --Shriekwing - Shriekwing
			3753151, --Huntsman Altimor - Huntsman Altimor
			3753157, --Kael'thas Sunstrider - Sun King's Salvation
			3752156, --Artificer Xy'Mox - Artificer Xy'mox
			3752174, --Hungering Destroyer - Hungering Destroyer
			3752178, --Lady Inerva Darkvein - Lady Inerva Darkvein
			3753159, --Castellan Niklaus - The Council of Blood
			3752191, --Sludgefist - Sludgefist
			3753156, --General Kaal - Stone Legion Generals
			3752159, --Sire Denathrius - Sire Denathrius
		}

		local ENCOUNTER_ID_CL = {
			2398, 2418, 2402, 2405, 2383, 2406, 2412, 2399, 2417, 2407,
			[2398] = 1,	--Shriekwing
			[2418] = 2, 	--Huntsman Altimor
			[2402] = 3,	--Kael'thas
			[2405] = 4,	--Artificer Xy'mox
			[2383] = 5, 	--Hungering Destroyer
			[2406] = 6,	--Lady Inerva Darkvein
			[2412] = 7,	--The Council of Blood
			[2399] = 8,	--Sludgefist
			[2417] = 9,	--Stone Legion Generals
			[2407] = 10,	--Sire Denathrius
		}

		local ENCOUNTER_ID_EJ = {
			2393, 2429, 2422, 2418, 2428, 2420, 2426, 2394, 2425, 2424,
			[2393] = 1, --Shriekwing
			[2429] = 2, --Huntsman Altimor
			[2422] = 3, --Sun King's Salvation
			[2418] = 4, --Artificer Xy'mox
			[2428] = 5, --Hungering Destroyer
			[2420] = 6, --Lady Inerva Darkvein
			[2426] = 7, --The Council of Blood
			[2394] = 8, --Sludgefist
			[2425] = 9, --Stone Legion Generals
			[2424] = 10, --Sire Denathrius
		}

		--load encounter journal
		DetailsFramework.EncounterJournal.EJ_SelectInstance (INSTANCE_EJID)

		local InstanceName = DetailsFramework.EncounterJournal.EJ_GetInstanceInfo (INSTANCE_EJID)

		--build the boss name list
		local BOSSNAMES = {}
		local ENCOUNTERS = {}

		for i = 1, #PORTRAIT_LIST do
			local bossName = DetailsFramework.EncounterJournal.EJ_GetEncounterInfoByIndex (i, INSTANCE_EJID)
			if (bossName) then
				tinsert(BOSSNAMES, bossName)
				local encounterTable = {
					boss = bossName,
					portrait = PORTRAIT_LIST [i],
				}
				tinsert(ENCOUNTERS, encounterTable)
			else
				break
			end
		end

		Details:InstallEncounter ({
			id = INSTANCE_MAPID, --map id
			ej_id = INSTANCE_EJID, --encounter journal id
			name = InstanceName,
			icons = "Interface\\AddOns\\" .. HDIMAGESPATH .. "\\" .. HDFILEPREFIX .. "_BossFaces",
			icon = "Interface\\AddOns\\" .. HDIMAGESPATH .. "\\" .. HDFILEPREFIX .. "_Icon256x128",
			is_raid = true,
			backgroundEJ = "Interface\\EncounterJournal\\" .. EJ_LOREBG,
			encounter_ids = ENCOUNTER_ID_EJ,
			encounter_ids2 = ENCOUNTER_ID_CL,
			boss_names = BOSSNAMES,
			encounters = ENCOUNTERS,
			boss_ids = {
				--npc ids
			},
		})
	end
end
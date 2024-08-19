

local savefile = 'pretense_PersianGulf_1.6.json'
if lfs then 
	local dir = lfs.writedir()..'Missions/Saves/'
	lfs.mkdir(dir)
	savefile = dir..savefile
	env.info('Pretense - Save file path: '..savefile)
end

initLog = mist.Logger:new('InitLogger',3)

do
	TemplateDB.templates["t052c"] = {
		units = {
			"Type_052C"
		},
		skill = "Good",
		dataCategory = TemplateDB.type.groupNaval	
	}
	
	TemplateDB.templates["t054a"] = {
		units = {
			"Type_054A"
		},
		skill = "Good",
		dataCategory = TemplateDB.type.groupNaval	
	}
	
	TemplateDB.templates["ffg"] = {
		units = {
			"PERRY"
		},
		skill = "Good",
		dataCategory = TemplateDB.type.groupNaval	
	}
	
	
	TemplateDB.templates["infantry-red-1"] = {
		units = {
			"BTR_D",
			"T-90",
			"T-90",
			"Infantry AK ver2",
			"Infantry AK",
			"Infantry AK",
			"Paratrooper RPG-16",
			"Infantry AK ver3",
			"SA-18 Igla manpad"
		},
		skill = "Good",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["infantry-red-2"] = {
		units = {
			"BTR_D",
			"BTR_D",
			"Infantry AK ver2",
			"Infantry AK",
			"Infantry AK",
			"Paratrooper RPG-16",
			"Paratrooper RPG-16",
			"SA-18 Igla manpad",
			"SA-18 Igla manpad"
		},
		skill = "Good",
		dataCategory= TemplateDB.type.group
	}
	
	TemplateDB.templates["infantry-red-3"] = {
		units = {
			"BTR_D",
			"BTR_D",
			"T-90",
			"T-90",
			"Infantry AK ver2",
			"Infantry AK",
			"Infantry AK",
			"Paratrooper RPG-16",
			"Paratrooper RPG-16",
			"Infantry AK ver3"
		},
		skill = "Good",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["infantry-blue-1"] = {
		units = { 
			"M1045 HMMWV TOW",
			"Soldier stinger",
			"Soldier stinger",
			"M-2 Bradley",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"M1043 HMMWV Armament"
		},
		skill = "Good",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["infantry-blue-2"] = {
		units = { 
			"Soldier stinger",
			"M1A2C_SEP_V3",
			"M1A2C_SEP_V3",
			"VAB_Mephisto",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"Soldier M4 GRG"
		},
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["infantry-blue-3"] = {
		units = { 
			"M1A2C_SEP_V3",
			"M-2 Bradley",
			"M-2 Bradley",
			"VAB_Mephisto",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"MaxxPro_MRAP",
			"MaxxPro_MRAP"
		},
		skill = "Good",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["defense-red"] = {
		units = {
			"Infantry AK ver2",
			"Infantry AK",
			"Infantry AK ver3",
			"Paratrooper RPG-16",
			"SA-18 Igla manpad"
		},
		skill = "Good",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["defense-blue"] = {
		units = { 
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"Soldier M4 GRG",
			"Soldier RPG",
			"Soldier stinger",
		},
		skill = "Good",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["sa2"] = {
		units = {
			"SNR_75V",
			"Ural-4320T",
			"Ural-4320T",
			"S_75M_Volhov",
			"S_75M_Volhov",
			"S_75M_Volhov",
			"S_75M_Volhov",
			"S_75M_Volhov",
			"S_75M_Volhov",
			"S_75M_Volhov",
			"RD_75",
			"p-19 s-125 sr"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["sa3"] = {
		units = {
			"p-19 s-125 sr",
			"snr s-125 tr",
			"5p73 s-125 ln",
			"5p73 s-125 ln",
			"Ural-4320T",
			"5p73 s-125 ln",
			"5p73 s-125 ln"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}
	
	TemplateDB.templates["sa6"] = {
		units = {
			"Kub 1S91 str",
			"Kub 2P25 ln",
			"Kub 2P25 ln",
			"Kub 2P25 ln",
			"Kub 2P25 ln",
			"ZSU-23-4 Shilka",
			"Ural-4320T",
			"ZSU-23-4 Shilka",
			"Kub 2P25 ln"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["sa5"] = {
		units = {
			"RLS_19J6",
			"Ural-4320T",
			"Ural-4320T",
			"RPC_5N62V",
			"S-200_Launcher",
			"S-200_Launcher",
			"S-200_Launcher",
			"S-200_Launcher",
			"S-200_Launcher",
			"S-200_Launcher"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["sa10"] = {
		units = {
			"S-300PS 54K6 cp",
			"S-300PS 5P85C ln",
			"S-300PS 5P85C ln",
			"S-300PS 5P85C ln",
			"GAZ-66",
			"GAZ-66",
			"GAZ-66",
			"S-300PS 5P85C ln",
			"S-300PS 5P85C ln",
			"S-300PS 5P85C ln",
			"S-300PS 40B6MD sr",
			"S-300PS 40B6M tr",
			"S-300PS 64H6E sr"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["sa11"] = {
		units = {
			"SA-11 Buk SR 9S18M1",
			"SA-11 Buk LN 9A310M1",
			"SA-11 Buk LN 9A310M1",
			"SA-11 Buk LN 9A310M1",
			"SA-11 Buk LN 9A310M1",
			"SA-11 Buk LN 9A310M1",
			"ZSU-23-4 Shilka",
			"SA-11 Buk SR 9S18M1",
			"GAZ-66",
			"GAZ-66",
			"SA-11 Buk CC 9S470M1"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["nasams"] = {
		units = {
			"NASAMS_Command_Post",
			"NASAMS_Radar_MPQ64F1",
			"HEMTT_C-RAM_Phalanx",
			"M 818",
			"M 818",
			"Roland ADS",
			"Roland ADS",
			"NASAMS_LN_C",
			"NASAMS_LN_C",
			"NASAMS_LN_C",
			"NASAMS_LN_C",
			"NASAMS_Radar_MPQ64F1",
			"NASAMS_Radar_MPQ64F1",
			"NASAMS_Radar_MPQ64F1"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["hawk"] = {
		units = {
			"Hawk ln",
			"Hawk ln",
			"M 818",
			"M 818",
			"Hawk ln",
			"Hawk ln",
			"Hawk ln",
			"Hawk tr",
			"Hawk sr",
			"Hawk pcp"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["patriot"] = {
		units = {
			"Patriot cp",
			"Patriot str",
			"M 818",
			"M 818",
			"Patriot ln",
			"Patriot ln",
			"Patriot ln",
			"Patriot ln",
			"Patriot str",
			"Patriot str",
			"Patriot str",
			"Patriot EPP",
			"Patriot ECS",
			"Patriot AMG"
		},
		maxDist = 300,
		skill = "Good",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["shorad-blue-1"] = {
		units = {
			"Roland ADS",
			"M48 Chaparral",
			"M48 Chaparral",
			"M 818",
			"HEMTT_C-RAM_Phalanx"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["shorad-blue-2"] = {
		units = {
			"M48 Chaparral",
			"M48 Chaparral",
			"M 818",
			"Gepard",
			"Gepard"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["shorad-blue-3"] = {
		units = {
			"Roland ADS",
			"Roland ADS",
			"M 818",
			"HEMTT_C-RAM_Phalanx",
			"HEMTT_C-RAM_Phalanx"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["shorad-red-1"] = {
		units = {
			"Strela-10M3",
			"Strela-10M3",
			"Ural-4320T",
			"2S6 Tunguska"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["shorad-red-2"] = {
		units = {
			"Strela-10M3",
			"Ural-4320T",
			"ZSU-23-4 Shilka",
			"ZSU-23-4 Shilka"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["shorad-red-3"] = {
		units = {
			"Osa 9A33 ln",
			"Osa 9A33 ln",
			"Ural-4320T",
			"2S6 Tunguska"
		},
		maxDist = 300,
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["ewr-red-1"] = {
		units = {
			"Dog Ear radar"
		},
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["ewr-red-2"] = {
		units = {
			"RLS_19J6",
			"1L13 EWR"
		},
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["ewr-red-3"] = {
		units = {
			"RLS_19J6",
			"55G6 EWR"
		},
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}

	TemplateDB.templates["ewr-blue-1"] = {
		units = {
			"FPS-117",
			"FPS-117 ECS",
			"FPS-117 Dome"
		},
		skill = "Excellent",
		dataCategory= TemplateDB.type.group
	}
	
	TemplateDB.templates["ashm"] = {
		units = {
			"Silkworm_SR",
			"hy_launcher",
			"hy_launcher",
			"hy_launcher",
			"hy_launcher",
			"hy_launcher",
			"hy_launcher",
			"hy_launcher",
			"hy_launcher",
			"M 818",
			"M 818",
			"us carrier tech",
			"us carrier tech",
			"us carrier shooter",
			"us carrier shooter"
			},
			skill = "Excellent",
			dataCategory= TemplateDB.type.group
	}
	

end

presets = {
	upgrades = {
		basic = {
			tent = Preset:new({
				display = 'Tent',
				cost = 1500,
				type = 'upgrade',
				template = "new-tent"
			}),
			comPost = Preset:new({
				display = 'Barracks',
				cost = 1500,
				type = 'upgrade',
				template = "barracks"
			}),
			outpost = Preset:new({
				display = 'Outpost',
				cost = 1500,
				type = 'upgrade',
				template = "outpost"
			}),
			watchTwr = Preset:new({
				display = 'Watch Tower',
				cost = 1500,
				type = 'upgrade',
				template = "watch-tower"
			}),
			dispatchBarracks = Preset:new({
				display = 'Barracks',
				cost = 2500,
				type = 'upgrade',
				template = "new-barracks"
			}),
			dockCrane = Preset:new({
				display = 'Dock Crane',
				cost = 3500,
				type = 'upgrade',
				template = "dock-crane",
				spawnMod = 'c'
			}),
			oilRig = Preset:new({
				display = 'Offshore Oil Platform',
				cost = 3500,
				type = 'upgrade',
				template = "offshore-oil",
				spawnMod = 'naval'
			}),
			gasRig = Preset:new({
				display = 'Offshore Gas Platform',
				cost = 3500,
				type = 'upgrade',
				template = "offshore-gas",
				spawnMod = 'naval'
			}),
		},
		attack = {
			ammoCache = Preset:new({
				display = 'Ammo Cache',
				cost = 1500,
				type = 'upgrade',
				template = "ammo-cache"
			}),
			ammoDepot = Preset:new({
				display = 'Ammo Depot',
				cost = 2000,
				type = 'upgrade',
				template = "ammo-depot"
			}),
			smallService = Preset:new({
				display = 'Service Station',
				cost = 2500,
				type = 'upgrade',
				template = "small-garage"
			}),
			bigService = Preset:new({
				display = 'Service Station',
				cost = 3000,
				type = 'upgrade',
				template = "large-garage"
			})
			
		},
		supply = {
			generator = Preset:new({
				display = 'Generator and Fuel Station',
				cost = 1500,
				type = 'upgrade',
				template = "generator"
			}),
			storehouse = Preset:new({
				display = 'Storehouse',
				cost = 2500,
				type = 'upgrade',
				template = "storehouse"
			}),
			shipper = Preset:new({
				display = 'Dock Warehouse',
				cost = 4000,
				type = 'upgrade',
				addedStorage = 10000,
				--income = 100,
				template = "shipment-storehouse"
			}),
			fuelTruck = Preset:new({
				display = 'Fuel Tanker Truck',
				cost = 2500,
				type = 'upgrade',
				template = "fuel-truck"
			}),
			fuelCache = Preset:new({
				display = 'Fuel Cache',
				cost = 1500,
				type = 'upgrade',
				template = "fuel-cache"
			}),
			fuelTank = Preset:new({
				display = 'Fuel Tank',
				cost = 1500,
				type = 'upgrade',
				template = "fuel-tank-big"
			}),
			fuelTankFarp = Preset:new({
				display = 'Fuel Tank',
				cost = 1500,
				type = 'upgrade',
				template = "fuel-tank-small"
			}),
			factory1 = Preset:new({
				display='Factory',
				cost = 2000,
				type ='upgrade',
				income = 100,
				template = "factory-1"
			}),
			factory2 = Preset:new({
				display='Factory',
				cost = 2000,
				type ='upgrade',
				income = 100,
				template = "factory-2"
			}),
			factory3 = Preset:new({
				display='Factory',
				cost = 2000,
				type ='upgrade',
				income = 100,
				template = "new-factory"
			}),
			factoryTank = Preset:new({
				display='Storage Tank',
				cost = 1500,
				type ='upgrade',
				income = 10,
				template = "chem-tank"
			}),
			ammoDepot = Preset:new({
				display = 'Ammo Depot',
				cost = 2000,
				type = 'upgrade',
				income = 40,
				template = "ammo-depot"
			}),
			oilPump = Preset:new({
				display = 'Oil Pump',
				cost = 1500,
				type = 'upgrade',
				income = 20,
				template = "oil-pump"
			}),
			hangar = Preset:new({
				display = 'Hangar',
				cost = 2000,
				type = 'upgrade',
				income = 30,
				template = "hangar"
			}),
			excavator = Preset:new({
				display = 'Excavator',
				cost = 2000,
				type = 'upgrade',
				income = 20,
				template = "excavator"
			}),
			farm1 = Preset:new({
				display = 'Farm House',
				cost = 2000,
				type = 'upgrade',
				income = 40,
				template = "farm-house-1"
			}),
			farm2 = Preset:new({
				display = 'Farm House',
				cost = 2000,
				type = 'upgrade',
				income = 40,
				template = "farm-house-2"
			}),
			refinery1 = Preset:new({
				display='Refinery',
				cost = 2000,
				type ='upgrade',
				income = 100,
				template = "factory-1"
			}),
			powerplant1 = Preset:new({
				display='Power Plant',
				cost = 1500,
				type ='upgrade',
				income = 25,
				template = "factory-1"
			}),
			powerplant2 = Preset:new({
				display='Power Plant',
				cost = 1500,
				type ='upgrade',
				income = 25,
				template = "factory-2"
			}),
			hq = Preset:new({
				display='HQ Building',
				cost = 2000,
				type ='upgrade',
				income = 50,
				template = "military-staff"
			})
		},
		airdef = {
			antenna = Preset:new({
				display='Antenna',
				cost = 1000,
				type ='upgrade',
				--income = 10,
				template = "antenna"
			}),
			comCenter = Preset:new({
				display = 'Command Center',
				cost = 2500,
				type = 'upgrade',
				template = "command-center"
			}),
			hardBunker = Preset:new({
				display = 'Hardened Bunker',
				cost = 2500,
				type = 'upgrade',
				template = "hard-air-bunker"
			})
			
			
		}
	},
	defenses = {
		red = {
			infantry1 = Preset:new({
				display = 'Infantry', 
				cost=2000, 
				type='defense', 
				template='infantry-red-1',
			}),
			infantry2 = Preset:new({
				display = 'Infantry', 
				cost=2000, 
				type='defense', 
				template='infantry-red-2',
			}),
			infantry3 = Preset:new({
				display = 'Infantry', 
				cost=2000, 
				type='defense', 
				template='infantry-red-3',
			}),
			shorad1 = Preset:new({
				display = 'SAM', 
				cost=2500, 
				type='defense', 
				template='shorad-red-1',
			}),
			shorad2 = Preset:new({
				display = 'SAM', 
				cost=2500, 
				type='defense', 
				template='shorad-red-2',
			}),
			shorad3 = Preset:new({
				display = 'SAM', 
				cost=2500, 
				type='defense', 
				template='shorad-red-3',
			}),
			sa2 = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='sa2',
			}),
			sa5 = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='sa5',
			}),
			sa3 = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='sa3',
			}),
			sa6 = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='sa6',
			}),
			sa10 = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='sa10',
			}),
			sa11 = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='sa11',
			}),
			ewr1 = Preset:new({
				display = 'EWR', 
				cost=1000, 
				type='defense', 
				template='ewr-red-1',
			}),
			ewr2 = Preset:new({
				display = 'EWR', 
				cost=2000, 
				type='defense', 
				template='ewr-red-2',
			}),
			t054a = Preset:new({
				display = 'Frigate',
				cost=10000,
				type='defense',
				template='t054a',
				spawnMod='naval'
			}),
			t052c = Preset:new({
				display = 'Destroyer',
				cost=12000,
				type='defense',
				template='t052c',
				spawnMod='naval'
			}),
		},
		blue = {
			infantry1 = Preset:new({
				display = 'Infantry', 
				cost=2000, 
				type='defense', 
				template='infantry-blue-1',
			}),
			infantry2 = Preset:new({
				display = 'Infantry', 
				cost=2000, 
				type='defense', 
				template='infantry-blue-2',
			}),
			infantry3 = Preset:new({
				display = 'Infantry', 
				cost=2000, 
				type='defense', 
				template='infantry-blue-3',
			}),
			shorad1 = Preset:new({
				display = 'SAM', 
				cost=2500, 
				type='defense', 
				template='shorad-blue-1',
			}),
			shorad2 = Preset:new({
				display = 'SAM', 
				cost=2500, 
				type='defense', 
				template='shorad-blue-2',
			}),
			shorad3 = Preset:new({
				display = 'SAM', 
				cost=2500, 
				type='defense', 
				template='shorad-blue-3',
			}),
			hawk = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='hawk',
			}),
			patriot = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='patriot',
			}),
			nasams = Preset:new({
				display = 'SAM', 
				cost=3000, 
				type='defense', 
				template='nasams',
			}),
			ewr1 = Preset:new({
				display = 'EWR', 
				cost=2000, 
				type='defense', 
				template='ewr-blue-1',
			}),
			ffg = Preset:new({
				display = 'Frigate',
				cost=8000,
				type='defense',
				template='ffg',
				spawnMod='naval'
			}),
		}
	},
	missions = {
		supply = {
			convoy = Preset:new({
				display = 'Supply convoy',
				cost = 4000,
				type = 'mission',
				missionType = ZoneCommand.missionTypes.supply_convoy
			}),
			convoyBig = Preset:new({
				display = 'Large supply convoy',
				cost = 6000,
				type = 'mission',
				missionType = ZoneCommand.missionTypes.supply_convoy
			}),
			naval = Preset:new({
				display = 'Naval Supply',
				cost = 10000,
				type = 'mission',
				missionType = ZoneCommand.missionTypes.supply_naval
			}),
			convoy_escorted = Preset:new({
				display = 'Supply convoy',
				cost = 3000,
				type = 'mission',
				missionType = ZoneCommand.missionTypes.supply_convoy
			}),
			helo = Preset:new({
				display = 'Supply helicopter',
				cost = 2500,
				type='mission',
				missionType = ZoneCommand.missionTypes.supply_air
			}),
			transfer = Preset:new({
				display = 'Supply transfer',
				cost = 1000,
				type='mission',
				missionType = ZoneCommand.missionTypes.supply_transfer
			})
		},
		attack = {
			surface = Preset:new({
				display = 'Ground assault',
				cost = 200,
				type = 'mission',
				missionType = ZoneCommand.missionTypes.assault,
			}),
			cas = Preset:new({
				display = 'CAS',
				cost = 400,
				type='mission',
				missionType = ZoneCommand.missionTypes.cas
			}),
			bai = Preset:new({
				display = 'BAI',
				cost = 400,
				type='mission',
				missionType = ZoneCommand.missionTypes.bai
			}),
			strike = Preset:new({
				display = 'Strike',
				cost = 600,
				type='mission',
				missionType = ZoneCommand.missionTypes.strike
			}),
			sead = Preset:new({
				display = 'SEAD',
				cost = 400,
				type='mission',
				missionType = ZoneCommand.missionTypes.sead
			}),
			helo = Preset:new({
				display = 'CAS',
				cost = 200,
				type='mission',
				missionType = ZoneCommand.missionTypes.cas_helo
			})
		},
		patrol={
			aircraft = Preset:new({
				display= "Patrol",
				cost = 600,
				type='mission',
				missionType = ZoneCommand.missionTypes.patrol
			}),
			naval = Preset:new({
				display= "Naval Patrol",
				cost = 800,
				type='mission',
				missionType = ZoneCommand.missionTypes.naval_patrol
			})
		},
		support ={
			awacs = Preset:new({
				display= "AWACS",
				cost = 600,
				type='mission',
				bias='10',
				missionType = ZoneCommand.missionTypes.awacs
			}),
			tanker = Preset:new({
				display= "Tanker",
				cost = 400,
				type='mission',
				bias='5',
				missionType = ZoneCommand.missionTypes.tanker
			})
		}
	},
	special = {
		red = {
			infantry = Preset:new({
				display = 'Infantry', 
				cost=-1, 
				type='defense', 
				template='defense-red',
			}),
		},
		blue = {
			infantry = Preset:new({
				display = 'Infantry', 
				cost=-1, 
				type='defense', 
				template='defense-blue',
			})
		}
	}
}

zones = {}
do
	
	

------------------- START: Liwa AFB ---------DONE-------------------------------------------------------------------------


zones.liwa = ZoneCommand:new("Liwa")
zones.liwa.initialState = { side = 2 }
zones.liwa.airbaseName = 'Liwa AFB'
zones.liwa.maxResource = 50000
zones.liwa.isHeloSpawn = true
zones.liwa.isPlaneSpawn = true
zones.liwa.keepActive = true
zones.liwa:defineUpgrades({
    [1] = {
        presets.upgrades.basic.tent:extend({
            name='liwa-tent-red',
            products = {
                presets.special.red.infantry:extend({name='liwa-defense-red'}),
				presets.defenses.red.infantry1:extend({name='liwa-infantry-red'})
            }
        }),
        presets.upgrades.supply.fuelTank:extend({
            name='liwa-fuel-red',
            products = {
                -- presets.missions.supply.naval:extend({name='liwa-naval-red', 
													  -- navalWP= { ["PuertoWilliams"] =	{ "Ushuaia-sp",
																						  -- "naval-EV42",
																						  -- "naval-EV52",
																						  -- "naval-EV61",
																						  -- "naval-EV71",
																						  -- "naval-EV81",
																						  -- "PuertoWilliams-sp"
																						-- }
																-- }
													-- }),
				-- presets.missions.supply.naval:extend({name='liwa-naval-red-2', 
													  -- navalWP= { ["PuertoWilliams"] =	{ "Ushuaia-sp",
													  									  -- "naval-EV42",
																						  -- "naval-EV52",
																						  -- "naval-EV61",
																						  -- "naval-EV71",
																						  -- "naval-EV81",
																						  -- "PuertoWilliams-sp"
																						-- }
																-- }
													-- }),
                -- presets.missions.supply.naval:extend({name='liwa-naval-red-3', 
													  -- navalWP= { ["PuertoWilliams"] =	{ "Ushuaia-sp",
																						  -- "naval-EV42",
																						  -- "naval-EV52",
																						  -- "naval-EV61",
																						  -- "naval-EV71",
																						  -- "naval-EV81",
																						  -- "PuertoWilliams-sp"
																						-- }
																-- }
													-- })
            }
        }),
        presets.upgrades.airdef.comCenter:extend({
            name='liwa-comcenter-red',
            products = {
                presets.defenses.red.shorad3:extend({name='liwa-sam-red'})--,
				-- presets.missions.patrol.naval:extend({name='liwa-naval-patrol',
													  -- navalWP= { ["patrol"] =			{ "Ushuaia-sp", "naval-EV42", "naval-EV52",
																						  -- "naval-EV61","naval-EV71","naval-EV81","naval-EV71","naval-EV61","naval-EV51","naval-EV41","naval-EV31","naval-EV41","naval-EV51",
																						  -- "naval-EV61","naval-EV71","naval-EV81","naval-EV71","naval-EV61","naval-EV51","naval-EV41","naval-EV31","naval-EV41","naval-EV51",
																						  -- "naval-EV61","naval-EV71","naval-EV81","naval-EV71","naval-EV61","naval-EV51","naval-EV41","naval-EV31","naval-EV41","naval-EV51",
																						  -- "naval-EV61","naval-EV71","naval-EV81","naval-EV71","naval-EV61","naval-EV51","naval-EV41","naval-EV31","naval-EV41","naval-EV51",
																						  -- "naval-EV61","naval-EV71","naval-EV81","naval-EV71","naval-EV61","naval-EV51","naval-EV41","naval-EV31","naval-EV41","naval-EV51"
																						-- }
																-- }
													--})
            }
        })
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='liwa-barracks-blue',
            products = {
                presets.special.blue.infantry:extend({name='liwa-defense-blue'}),
				presets.defenses.blue.infantry1:extend({name='liwa-infantry-blue'}),
				presets.defenses.blue.infantry2:extend({name='liwa-infantry-blue-2'}),
				
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='liwa-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='liwa-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='liwa-supply-blue-2'}),
				presets.missions.supply.helo:extend({name='liwa-supply-blue-3'}),
				presets.missions.supply.convoy:extend({name='liwa-convoy-blue'}),
				presets.missions.support.tanker:extend({name='liwa-tanker-blue-1'}),
				presets.missions.support.tanker:extend({name='liwa-tanker-blue-2'})
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='liwa-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='liwa-sam-blue'}),
				presets.missions.support.awacs:extend({name='liwa-awacs-blue'}),
				presets.defenses.blue.ewr1:extend({name='liwa-ewr-blue'})
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
            name='liwa-bunker-blue-1',
            products = {
                presets.missions.attack.strike:extend({name='liwa-strike-blue-1'}),
				presets.missions.attack.strike:extend({name='liwa-strike-blue-2'}),
				presets.missions.attack.sead:extend({name='liwa-sead-blue'})
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
            name='liwa-bunker-blue-2',
            products = {
                presets.missions.attack.cas:extend({name='liwa-cas-blue'}),
				presets.missions.patrol.aircraft:extend({name='liwa-patrol-blue'})
            }
        })	
    }
})

--------------------- END: Liwa AFP ----------------------------------------------------------------------------------

------------------- START: Alpha -----------DONE-----------------------------------------------------------------------

zones.alpha = ZoneCommand:new("Alpha")
zones.alpha.initialState = { side = 2 }
zones.alpha.maxResource = 50000
zones.alpha.isHeloSpawn = true
zones.alpha.airbaseName = 'alpha-FARP'
zones.alpha:defineUpgrades({
    [1] = {
        presets.upgrades.basic.tent:extend({
            name='alpha-tent-red',
            products = {
                presets.special.red.infantry:extend({name='alpha-defense-red'}),
				presets.defenses.red.infantry1:extend({name='alpha-infantry-red'})
            }
        }),
        presets.upgrades.supply.fuelTank:extend({
            name='alpha-fuel-red',
            products = {
            }
        }),
        presets.upgrades.basic.watchTwr:extend({
            name='alpha-tower-red-1',
            products = {
                presets.defenses.red.shorad3:extend({name='alpha-sam-red'})
            }
        }),
		presets.upgrades.basic.watchTwr:extend({
            name='alpha-tower-red-2',
            products = {
                presets.defenses.red.shorad3:extend({name='alpha-sam-red-2'})
            }
        }),
    },
    [2] = {
        presets.upgrades.basic.tent:extend({
            name='alpha-tent-blue',
            products = {
                presets.special.blue.infantry:extend({name='alpha-defense-blue'}),
				presets.defenses.blue.infantry1:extend({name='alpha-infantry-blue'})
            }
        }),
		presets.upgrades.basic.watchTwr:extend({
            name='alpha-watchTwr-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='alpha-infantry-blue-2'})
            }
        }),
        presets.upgrades.supply.generator:extend({
            name='alpha-fuel-blue',
            products = {
				presets.missions.supply.convoy:extend({name='alpha-convoy-blue'}),
				presets.missions.supply.helo:extend({name='alpha-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='alpha-supply-blue-2'}),
            }
        }),
        presets.upgrades.attack.smallService:extend({
            name='alpha-service-blue',
            products = {
                presets.defenses.blue.shorad3:extend({name='alpha-sam-blue'}),
				presets.missions.attack.surface:extend({name='alpha-assault-blue'})
            }
        })
    }
})

--------------------- END: Alpha ----------------------------------------------------------------------------------

------------------- START: Al Dhafra --------Done--------------------------------------------------------------------------

zones.aldhafra = ZoneCommand:new("AlDhafra")
zones.aldhafra.initialState = { side = 1 }
zones.aldhafra.airbaseName = 'Al Dhafra AFB'
zones.aldhafra.maxResource = 50000
zones.aldhafra.keepActive = true
--zones.aldhafra.isHeloSpawn = true
--zones.aldhafra.isPlaneSpawn = true
zones.aldhafra:defineUpgrades({
    [1] = {
        presets.upgrades.basic.comPost:extend({
            name='aldhafra-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='aldhafra-defense-red'}),
				presets.defenses.red.infantry2:extend({name='aldhafra-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='aldhafra-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.fuelTank:extend({
            name='aldhafra-store-red',
            products = {
				presets.defenses.red.infantry3:extend({name='aldhafra-infantry-red-1'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='aldhafra-antenna-red',
            products = {
                presets.defenses.red.sa6:extend({name='aldhafra-sam-red'}),
				presets.defenses.red.shorad2:extend({name='aldhafra-shorad-red'}),
            }
        }),
		presets.upgrades.airdef.comCenter:extend({
			name='aldhafra-bunker-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='aldhafra-patrol-red-1'}),
				presets.missions.attack.cas:extend({name='aldhafra-cas-red-1'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='aldhafra-bunker-red-2',
			products = {
				presets.missions.patrol.aircraft:extend({name='aldhafra-patrol-red-2'}),
				presets.missions.attack.bai:extend({name='aldhafra-cas-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='aldhafra-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='aldhafra-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='aldhafra-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='aldhafra-infantry-blue-2'}),
				presets.defenses.blue.infantry1:extend({name='aldhafra-infantry-blue-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='aldhafra-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='aldhafra-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='aldhafra-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='aldhafra-antenna-blue',
            products = {
                presets.defenses.blue.patriot:extend({name='aldhafra-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='aldhafra-shorad-blue'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='aldhafra-bunker-blue-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='aldhafra-patrol-blue-1'}),
				presets.missions.attack.cas:extend({name='aldhafra-cas-blue-1'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='aldhafra-bunker-blue-2',
			products = {
				presets.missions.patrol.aircraft:extend({name='aldhafra-patrol-blue-2'}),
				presets.missions.attack.bai:extend({name='aldhafra-cas-blue-2'}),
			}
		})
    }
})

--------------------- END: Al Dhafra ----------------------------------------------------------------------------------

------------------- START: Khasab ------------Kinda Done----------------------------------------------------------------------

zones.khasab = ZoneCommand:new("Khasab")
zones.khasab.initialState = { side = 1 }
zones.khasab.airbaseName = 'Khasab'
zones.khasab.maxResource = 100000
zones.khasab.keepActive = true
zones.khasab:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='khasab-barracks-red',
            products = {
				presets.defenses.red.infantry3:extend({name='khasab-infantry-red-1'}),
				presets.defenses.red.infantry2:extend({name='khasab-infantry-red-2'}),
				presets.special.red.infantry:extend({name='khasab-defense-red'})
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='khasab-store-red',
            products = {
				presets.missions.supply.helo:extend({name='khasab-supply-red-1'}),
				presets.missions.supply.helo:extend({name='khasab-supply-red-2'}),
				presets.missions.supply.helo:extend({name='khasab-supply-red-3'}),
				presets.missions.supply.helo:extend({name='khasab-supply-red-4'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='khasab-antenna-red',
            products = {
                presets.defenses.red.sa10:extend({name='khasab-sam-red'}),
				presets.defenses.red.shorad3:extend({name='khasab-shorad-red'})
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='khasab-bunker-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='khasab-patrol-red-1'})
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='khasab-bunker-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='khasab-patrol-red-1'})
			}
		})
    },
    [2] = {
        presets.upgrades.basic.tent:extend({
            name='khasab-tent-blue',
            products = {
                presets.special.blue.infantry:extend({name='khasab-defense-blue'}),
				presets.defenses.blue.infantry1:extend({name='khasab-infantry-blue'})
            }
        }),
        presets.upgrades.supply.fuelTank:extend({
            name='khasab-fuel-blue',
            products = {
				presets.missions.supply.helo:extend({name='khasab-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='khasab-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.comCenter:extend({
            name='khasab-ammo-blue',
            products = {
                presets.defenses.blue.shorad3:extend({name='khasab-sam-blue'})
            }
        })
    }
})

--------------------- END: Khasab ----------------------------------------------------------------------------------


------------------- START: Havadarya -------------------Good Enough For Now---------------------------------------------------------------
havadaryaNavalSupplyPts = { ["Khasab"] = {	"NavWpt-DQ29",
										   "NavWpt-DQ38",
										   "NavWpt-DQ27",
										   "NavWpt-DQ26",
										   "NavWpt-DQ21",
										   "NavWpt-Khasab",
										   },
							["Kish"]  =  { "NavWpt-DQ29",
										   "NavWpt-DQ38",
										   "NavWpt-DQ27",
										   "NavWpt-CQ93",
										   "NavWpt-CQ53",
										   "NavWpt-CQ12",
										   "NawWpt-BQ42",
										   "NavWpt-BQ14",
										   "Kish-naval-2"
										   },
							["Harbor"]  =  { "NavWpt-DQ29",
										   "NavWpt-DQ38",
										   "NavWpt-DQ27",
										   "NavWpt-CQ93",
										   "NavWpt-CQ70",
										   "NavWpt-CP47",
										   "NawWpt-CP02",
										   "NavWpt-BN67",
										   "NavWpt-BN55",
										   "NavWpt-Harbor"
										   },
							["AlMarjan"]  =  { "NavWpt-DQ29",
										   "NavWpt-DQ38",
										   "NavWpt-DQ27",
										   "NavWpt-CQ93",
										   "NavWpt-CQ70",
										   "AlMarjan-naval-sp",
										   },
							["Qeshm"]  =  { "NavWpt-DQ29",
										   "NavWpt-DQ38",
										   "NavWpt-DQ27",
										   "NavWpt-CQ93",
										   "NavWpt-CQ74",
										   "NavWpt-Qeshm",
										   }
						  }

zones.havadarya = ZoneCommand:new("Havadarya")
zones.havadarya.initialState = { side = 1 }
zones.havadarya.airbaseName = 'Havadarya'
zones.havadarya.maxResource = 80000
zones.havadarya.motherland = true
zones.havadarya:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='havadarya-barracks-red',
            products = {
            }
        }),
        presets.upgrades.supply.shipper:extend({
            name='havadarya-shipper-red-1',
			spawnMod='store',
            products = {
				presets.missions.supply.naval:extend({name='havadarya-naval-red-1',
													  navalWP= havadaryaNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='havadarya-naval-red-2',
													  navalWP= havadaryaNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='havadarya-naval-red-3',
													  navalWP= havadaryaNavalSupplyPts
													}),													

            }
        }),
		presets.upgrades.supply.shipper:extend({
            name='havadarya-shipper-red-2',
			spawnMod='store',
            products = {
				presets.missions.supply.naval:extend({name='havadarya-naval-red-4',
													  navalWP= havadaryaNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='havadarya-naval-red-5',
													  navalWP= havadaryaNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='havadarya-naval-red-6',
													  navalWP= havadaryaNavalSupplyPts
													}),			
            }
        }),
		presets.upgrades.supply.shipper:extend({
            name='havadarya-shipper-red-3',
			spawnMod='store',
            products = {
				presets.missions.supply.naval:extend({name='havadarya-naval-red-7',
													  navalWP= havadaryaNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='havadarya-naval-red-8',
													  navalWP= havadaryaNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='havadarya-naval-red-9',
													  navalWP= havadaryaNavalSupplyPts
													}),			
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='havadarya-antenna-red',
            products = {
                presets.defenses.red.sa10:extend({name='havadarya-sam-red'})
            }
        })
    },
    [2] = {
        presets.upgrades.basic.tent:extend({
            name='havadarya-tent-blue',
            products = {
                presets.special.blue.infantry:extend({name='havadarya-defense-blue'}),
				presets.defenses.blue.infantry1:extend({name='havadarya-infantry-blue'})
            }
        }),
        presets.upgrades.supply.fuelTank:extend({
            name='havadarya-fuel-blue',
            products = {
            }
        }),
        presets.upgrades.airdef.comCenter:extend({
            name='havadarya-ammo-blue',
            products = {
                presets.defenses.blue.shorad3:extend({name='havadarya-sam-blue'})
            }
        })
    }
})

--------------------- END: Havadarya ----------------------------------------------------------------------------------

------------------- START: Kish ---------------Good Enough-------------------------------------------------------------------

kishNavalWP = { ['patrol'] = { "NavWpt-BQ14", "NavWpt-BQ12",
							   "NavWpt-BP35", "NavWpt-BP42", "NavWpt-CP04", "NavWpt-CP47","NavWpt-CQ70","NavWpt-DQ32","NavWpt-DQ35","NavWpt-CQ93","NavWpt-CQ53","NavWpt-CQ12","NavWpt-BP58",
							   "NavWpt-BP35", "NavWpt-BP42", "NavWpt-CP04", "NavWpt-CP47","NavWpt-CQ70","NavWpt-DQ32","NavWpt-DQ35","NavWpt-CQ93","NavWpt-CQ53","NavWpt-CQ12","NavWpt-BP58",
							   "NavWpt-BP35", "NavWpt-BP42", "NavWpt-CP04", "NavWpt-CP47","NavWpt-CQ70","NavWpt-DQ32","NavWpt-DQ35","NavWpt-CQ93","NavWpt-CQ53","NavWpt-CQ12","NavWpt-BP58",
							 }
			  }

zones.kish = ZoneCommand:new("Kish")
zones.kish.initialState = { side = 1 }
zones.kish.airbaseName = 'Kish Intl'
zones.kish.maxResource = 80000
zones.kish.motherland = true
zones.kish:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='kish-barracks-red',
            products = {
				presets.defenses.red.infantry1:extend({name='kish-infantry-red'}),
				presets.special.red.infantry:extend({name='kish-defense-red'})
            }
        }),
        presets.upgrades.basic.dockCrane:extend({
            name='kish-crane-red',
            products = {
				presets.defenses.red.t052c:extend({name='kish-type052-red'})
            }
        }),
		presets.upgrades.basic.oilRig:extend({
            name='kish-oilrig-red',
            products = {
				presets.missions.patrol.naval:extend({name='kish-patrol-sub-red',navalWP = kishNavalWP})
            }
        }),
		presets.upgrades.basic.oilRig:extend({
            name='kish-gasrig-red',
            products = {
				presets.missions.patrol.naval:extend({name='kish-patrol-frigate-red', navalWP = kishNavalWP})
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='kish-antenna-red',
            products = {
                presets.defenses.red.shorad3:extend({name='kish-shorad-red'}),
				presets.defenses.red.sa2:extend({name='kish-sam-red'})
            }
        })
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='kish-barracks-blue',
            products = {
                presets.special.blue.infantry:extend({name='kish-defense-blue'}),
				presets.defenses.blue.infantry1:extend({name='kish-infantry-blue'})
            }
        }),
        presets.upgrades.basic.oilRig:extend({
            name='kish-oilrig-blue',
            products = {
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='kish-antenna-blue',
            products = {
                presets.defenses.red.shorad3:extend({name='kish-shorad-red'}),
				presets.defenses.red.sa2:extend({name='kish-sam-red'})
            }
        })
    }
})

--------------------- END: Kish ----------------------------------------------------------------------------------

------------------- START: Bravo -----------DONE-----------------------------------------------------------------------

zones.bravo = ZoneCommand:new("Bravo")
zones.bravo.initialState = { side = 1 }
zones.bravo.maxResource = 30000
zones.bravo.isHeloSpawn = true
zones.bravo.airbaseName = 'BravoFarp'
zones.bravo:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='bravo-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='bravo-infantry-red'}),
				presets.special.red.infantry:extend({name='bravo-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='bravo-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='bravo-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='bravo-service-red',
			products = {
				presets.missions.attack.surface:extend({name='bravo-assault-red'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='bravo-generator-red',
			products = {
				presets.missions.supply.convoy:extend({name='bravo-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='bravo-convoy-red-2'}),
				presets.missions.supply.helo:extend({name='bravo-supply-red-1'}),
				presets.missions.supply.helo:extend({name='bravo-supply-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='bravo-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='bravo-infantry-blue'}),
				presets.special.blue.infantry:extend({name='bravo-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='bravo-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='bravo-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='bravo-service-blue',
			products = {
				presets.missions.attack.surface:extend({name='bravo-assault-blue'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='bravo-generator-blue',
			products = {
				presets.missions.supply.convoy:extend({name='bravo-convoy-blue-1'}),
				presets.missions.supply.convoy:extend({name='bravo-convoy-blue-2'}),
				presets.missions.supply.helo:extend({name='bravo-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='bravo-supply-blue-2'}),
			}
		})
    }
})

--------------------- END: Bravo ----------------------------------------------------------------------------------

------------------- START: Al Ain -----------DONE-----------------------------------------------------------------------

zones.alain = ZoneCommand:new("AlAin")
zones.alain.initialState = { side = 1 }
zones.alain.airbaseName = 'Al Ain Intl'
zones.alain.maxResource = 80000
zones.alain.keepActive = true
zones.alain:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='alain-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='alain-defense-red'}),
				presets.defenses.red.infantry2:extend({name='alain-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='alain-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='alain-store-red',
            products = {
				presets.missions.supply.helo:extend({name='alain-supply-red-1'}),
				presets.missions.supply.helo:extend({name='alain-supply-red-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='alain-antenna-red',
            products = {
     --           presets.defenses.red.sa2:extend({name='alain-sam-red'}),
	--			presets.defenses.red.shorad2:extend({name='alain-shorad-red'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='alain-bunker-red-1',
			products = {
				presets.missions.attack.cas:extend({name='alain-cas-red-1'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='alain-bunker-red-2',
			products = {
				presets.missions.attack.sead:extend({name='alain-sead-red-1'}),
				presets.missions.attack.bai:extend({name='alain-cas-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='alain-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='alain-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='alain-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='alain-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='alain-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='alain-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='alain-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='alain-antenna-blue',
            products = {
                presets.defenses.blue.nasams:extend({name='alain-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='alain-shorad-blue'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='alain-bunker-blue-1',
			products = {
				presets.missions.attack.cas:extend({name='alain-cas-blue-1'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='alain-bunker-blue-2',
			products = {
				presets.missions.attack.sead:extend({name='alain-sead-blue-1'}),
				presets.missions.attack.bai:extend({name='alain-cas-blue-2'}),
			}
		})
    }
})

--------------------- END: Al Ain ----------------------------------------------------------------------------------

------------------- START: Al Khan --------------DONE--------------------------------------------------------------------

zones.alkhan = ZoneCommand:new("AlKhan")
zones.alkhan.initialState = { side = 1 }
zones.alkhan.maxResource = 30000
zones.alkhan:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='alkhan-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='alkhan-infantry-red'}),
				presets.special.red.infantry:extend({name='alkhan-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='alkhan-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='alkhan-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='alkhan-service-red',
			products = {
				presets.missions.attack.surface:extend({name='alkhan-assault-red-1'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='alkhan-generator-red',
			products = {
				presets.missions.supply.convoy:extend({name='alkhan-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='alkhan-convoy-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='alkhan-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='alkhan-infantry-blue'}),
				presets.special.blue.infantry:extend({name='alkhan-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='alkhan-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='alkhan-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='alkhan-service-blue',
			products = {
				presets.missions.attack.surface:extend({name='alkhan-assault-blue-1'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='alkhan-generator-blue',
			products = {
				presets.missions.supply.convoy:extend({name='alkhan-convoy-blue-1'}),
				presets.missions.supply.convoy:extend({name='alkhan-convoy-blue-2'}),
			}
		})
    }
})

--------------------- END: Al Khan ----------------------------------------------------------------------------------

------------------- START: Magan ---------DONE-------------------------------------------------------------------------

zones.magan = ZoneCommand:new("Magan")
zones.magan.initialState = { side = 1 }
zones.magan.maxResource = 45000
zones.magan.keepActive = true
zones.magan:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='magan-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='magan-infantry-red'}),
				presets.special.red.infantry:extend({name='magan-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='magan-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='magan-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='magan-service-red',
			products = {
				presets.missions.attack.surface:extend({name='magan-assault-red-1'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='magan-generator-red',
			products = {
				presets.missions.supply.convoy:extend({name='magan-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='magan-convoy-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='magan-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='magan-infantry-blue'}),
				presets.special.blue.infantry:extend({name='magan-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='magan-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='magan-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='magan-service-blue',
			products = {
				presets.missions.attack.surface:extend({name='magan-assault-blue-1'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='magan-generator-blue',
			products = {
				presets.missions.supply.convoy:extend({name='magan-convoy-blue-1'}),
				presets.missions.supply.convoy:extend({name='magan-convoy-blue-2'}),
			}
		})
    }
})

--------------------- END: Magan ----------------------------------------------------------------------------------

------------------- START: As Sudiyah --------DONE--------------------------------------------------------------------------

zones.assudiyah = ZoneCommand:new("AsSudiyah")
zones.assudiyah.initialState = { side = 1 }
zones.assudiyah.maxResource = 40000
zones.assudiyah:defineUpgrades({
    [1] = {
        presets.upgrades.basic.tent:extend({
            name='assudiyah-tent-red-1',
            products = {
				presets.defenses.red.infantry1:extend({name='assudiyah-infantry-red'}),
				presets.special.red.infantry:extend({name='assudiyah-defense-red'})
            }
        }),
		presets.upgrades.basic.tent:extend({
            name='assudiyah-tent-red-2',
            products = {
				presets.defenses.red.shorad1:extend({name='assudiyah-shorad-red'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='assudiyah-service-red-1',
			products = {
				presets.missions.attack.surface:extend({name='assudiyah-assault-red-1'}),
				presets.missions.attack.surface:extend({name='assudiyah-assault-red-2'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='assudiyah-service-red-2',
			products = {
				presets.missions.attack.surface:extend({name='assudiyah-assault-red-3'}),
				presets.missions.attack.surface:extend({name='assudiyah-assault-red-4'}),
			}
		}),
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
			name='assudiyah-watchTwr-blue-1',
			products = {
				presets.defenses.blue.infantry1:extend({name='assudiyah-infantry-blue-1'})
			}
		}),
        presets.upgrades.basic.watchTwr:extend({
			name='assudiyah-watchTwr-blue-2',
			products = {
				presets.defenses.blue.infantry1:extend({name='assudiyah-infantry-blue-2'})
			}
		}),
        presets.upgrades.basic.watchTwr:extend({
			name='assudiyah-watchTwr-blue-3',
			products = {
				presets.special.blue.infantry:extend({name='assudiyah-defense-blue'})
			}
		}),
		presets.upgrades.basic.tent:extend({
			name='assudiyah-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='assudiyah-shorad-blue'})
			}
		}),
    }
})

--------------------- END: As Sudiyah ----------------------------------------------------------------------------------

------------------- START: Al Wadiyat ----------DONE------------------------------------------------------------------------

zones.alwadiyat = ZoneCommand:new("AlWadiyat")
zones.alwadiyat.initialState = { side = 1 }
zones.alwadiyat.maxResource = 45000
zones.alwadiyat.isHeloSpawn = true
zones.alwadiyat.keepActive = true
zones.alwadiyat.airbaseName = 'AlWadiyat'
zones.alwadiyat:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='alwadiyat-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='alwadiyat-infantry-red'}),
				presets.special.red.infantry:extend({name='alwadiyat-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='alwadiyat-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='alwadiyat-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='alwadiyat-service-red',
			products = {
				presets.missions.supply.helo:extend({name='alwadiyat-supply-red-3'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='alwadiyat-generator-red',
			products = {
				presets.missions.supply.helo:extend({name='alwadiyat-supply-red-1'}),
				presets.missions.supply.helo:extend({name='alwadiyat-supply-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='alwadiyat-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='alwadiyat-infantry-blue'}),
				presets.special.blue.infantry:extend({name='alwadiyat-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='alwadiyat-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='alwadiyat-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='alwadiyat-service-blue',
			products = {
				presets.missions.supply.helo:extend({name='alwadiyat-supply-blue-3'}),
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='alwadiyat-generator-blue',
			products = {
				presets.missions.supply.helo:extend({name='alwadiyat-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='alwadiyat-supply-blue-2'}),
			}
		})
    }
})

--------------------- END: Al Wayidat ----------------------------------------------------------------------------------

------------------- START: Delta ------------DONE----------------------------------------------------------------------

zones.delta = ZoneCommand:new("Delta")
zones.delta.initialState = { side = 1 }
zones.delta.maxResource = 25000
zones.delta:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='delta-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='delta-infantry-red'}),
				presets.special.red.infantry:extend({name='delta-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='delta-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='delta-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='delta-service-red',
			products = {
				presets.missions.supply.convoy:extend({name='delta-convoy-red-3'}),
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='delta-generator-red',
			products = {
				presets.missions.supply.convoy:extend({name='delta-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='delta-convoy-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='delta-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='delta-infantry-blue'}),
				presets.special.blue.infantry:extend({name='delta-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='delta-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='delta-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='delta-service-blue',
			products = {
				presets.missions.supply.convoy:extend({name='delta-convoy-blue-3'}),
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='delta-generator-blue',
			products = {
				presets.missions.supply.convoy:extend({name='delta-convoy-blue-1'}),
				presets.missions.supply.convoy:extend({name='delta-convoy-blue-2'}),
			}
		})
    }
})

--------------------- END: Delta ----------------------------------------------------------------------------------

------------------- START: Charlie -----------DONE-----------------------------------------------------------------------

zones.charlie = ZoneCommand:new("Charlie")
zones.charlie.initialState = { side = 1 }
zones.charlie.maxResource = 45000
zones.charlie.isHeloSpawn = true
zones.charlie:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='charlie-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='charlie-infantry-red'}),
				presets.special.red.infantry:extend({name='charlie-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='charlie-tent-red',
			products = {
				presets.defenses.red.shorad2:extend({name='charlie-shorad-red-1'}),
				presets.defenses.red.shorad3:extend({name='charlie-shorad-red-2'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='charlie-generator-red',
			products = {
				presets.missions.supply.helo:extend({name='charlie-supply-red-1'}),
				presets.missions.supply.helo:extend({name='charlie-supply-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='charlie-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='charlie-infantry-blue'}),
				presets.special.blue.infantry:extend({name='charlie-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='charlie-tent-blue',
			products = {
				presets.defenses.blue.shorad2:extend({name='charlie-shorad-blue-1'}),
				presets.defenses.blue.shorad3:extend({name='charlie-shorad-blue-2'}),
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='charlie-generator-blue',
			products = {
				presets.missions.supply.helo:extend({name='charlie-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='charlie-supply-blue-2'}),
			}
		})
    }
})

--------------------- END: Charlie ----------------------------------------------------------------------------------

------------------- START: Harbor ------------DONE----------------------------------------------------------------------
--ADD MORE POINTS AS MORE ZONES GET ADDED
harborNavalSupplyPts = { ['patrol'] = {'NavWpt-BN55',
									   'NavWpt-BP42', 'NavWpt-BP35','NavWpt-BP58','NavWpt-CP47','NavWpt-CP04',
									   'NavWpt-BP42', 'NavWpt-BP35','NavWpt-BP58','NavWpt-CP47','NavWpt-CP04',
									   'NavWpt-BP42', 'NavWpt-BP35','NavWpt-BP58','NavWpt-CP47','NavWpt-CP04',},
						 ['Kish'] = {'NavWpt-BN55','NavWpt-BP42','NavWpt-BP35','NavWpt-BQ12','NavWpt-BQ14','Kish-naval-2'},
						 ['AlMarjan'] = {'NavWpt-BN55','NavWpt-BN67','NavWpt-CP02','NavWpt-CP64','AlMarjan-naval-sp'},
						}

harborSubNavalPts = { ['patrol'] = {'NavWpt-BN67','NavWpt-CP02','NavWpt-CP47','NavWpt-CQ70','NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							  'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							  'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							  'NavWpt-CQ70','NavWpt-CP47','NavWpt-CP04','NavWpt-CP02','NavWpt-CP64','NavWpt-CQ70',
							  'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							  'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							  'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							  'NavWpt-CQ70','NavWpt-CP47','NavWpt-CP04','NavWpt-CP02','NavWpt-CP64','NavWpt-CQ70',
							  'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							  'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							  'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93',
							 }}

zones.harbor = ZoneCommand:new("Harbor")
zones.harbor.initialState = { side = 1 }
zones.harbor.maxResource = 80000
zones.harbor:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='harbor-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='harbor-infantry-red'}),
				presets.special.red.infantry:extend({name='harbor-defense-red'})
            }
        }),
        presets.upgrades.supply.storehouse:extend({
			name='harbor-storehouse-red-1',
			products = {
				presets.missions.supply.convoy:extend({name='harbor-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='harbor-convoy-red-2'}),
			}
		}),
		presets.upgrades.supply.storehouse:extend({
			name='harbor-storehouse-red-2',
			products = {
				presets.missions.supply.convoy:extend({name='harbor-convoy-red-3'}),
				presets.missions.supply.convoy:extend({name='harbor-convoy-red-4'}),
			}
		}),
		presets.upgrades.airdef.antenna:extend({
			name='harbor-antenna-red',
			products = {
				presets.defenses.red.shorad2:extend({name='harbor-shorad-red'}),
				presets.defenses.red.sa3:extend({name='harbor-sam-red'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='harbor-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='harbor-infantry-blue'}),
				presets.special.blue.infantry:extend({name='harbor-defense-blue'})
            }
        }),
		presets.upgrades.basic.dockCrane:extend({
			name='harbor-crane-blue',
			products = {
				presets.missions.patrol.naval:extend({name='harbor-patrol-frigate-1',
													  navalWP = harborNavalSupplyPts
													}),
				presets.missions.patrol.naval:extend({name='harbor-patrol-sub',
													  navalWP = harborSubNavalPts
													}),
			}
		}),
		presets.upgrades.supply.shipper:extend({
			name='harbor-shipper-blue-1',
			products = {
				presets.missions.supply.naval:extend({name='harbor-naval-blue-1',
													  navalWP = harborNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='harbor-naval-blue-2',
													  navalWP = harborNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='harbor-naval-blue-3',
													  navalWP = harborNavalSupplyPts
													}),
			}
		}),
		presets.upgrades.supply.shipper:extend({
			name='harbor-shipper-blue-2',
			products = {
				presets.missions.supply.naval:extend({name='harbor-naval-blue-4',
													  navalWP = harborNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='harbor-naval-blue-5',
													  navalWP = harborNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='harbor-naval-blue-6',
													  navalWP = harborNavalSupplyPts
													}),
			}
		}),
    }
})

--------------------- END: Harbor ----------------------------------------------------------------------------------

------------------- START: AlMarjan ------------DONE----------------------------------------------------------------------
--ADD MORE POINTS AS MORE ZONES GET ADDED
almarjanNavalSupplyPts = { ['patrol'] = {'NavWpt-CQ70', 'NavWpt-DQ21', 'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93','NavWpt-CQ53','NavWpt-CQ12','NavWpt-BQ80','NavWpt-CP47',
										'NavWpt-CQ70', 'NavWpt-DQ21', 'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93','NavWpt-CQ53','NavWpt-CQ12','NavWpt-BQ80','NavWpt-CP47',
										'NavWpt-CQ70', 'NavWpt-DQ21', 'NavWpt-DQ32','NavWpt-DQ35','NavWpt-CQ93','NavWpt-CQ53','NavWpt-CQ12','NavWpt-BQ80','NavWpt-CP47',
										},
						   ['Kish'] = {'NavWpt-CP47','NavWpt-BQ80','NavWpt-BQ42','NavWpt-BQ14','Kish-naval-2'},
						}


zones.almarjan = ZoneCommand:new("AlMarjan")
zones.almarjan.initialState = { side = 1 }
zones.almarjan.maxResource = 80000
zones.almarjan:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='almarjan-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='almarjan-infantry-red'}),
				presets.special.red.infantry:extend({name='almarjan-defense-red'})
            }
        }),
        presets.upgrades.supply.storehouse:extend({
			name='almarjan-storehouse-red-1',
			products = {
				presets.missions.supply.convoy:extend({name='almarjan-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='almarjan-convoy-red-2'}),
			}
		}),
		presets.upgrades.supply.storehouse:extend({
			name='almarjan-storehouse-red-2',
			products = {
				presets.missions.supply.convoy:extend({name='almarjan-convoy-red-3'}),
				presets.missions.supply.convoy:extend({name='almarjan-convoy-red-4'}),
			}
		}),
		presets.upgrades.airdef.antenna:extend({
			name='almarjan-antenna-red',
			products = {
				presets.defenses.red.shorad1:extend({name='almarjan-shorad-red'}),
				presets.defenses.red.sa3:extend({name='almarjan-sam-red'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='almarjan-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='almarjan-infantry-blue'}),
				presets.special.blue.infantry:extend({name='almarjan-defense-blue'})
            }
        }),
		presets.upgrades.basic.dockCrane:extend({
			name='almarjan-crane-blue',
			products = {
				presets.missions.patrol.naval:extend({name='almarjan-patrol-fac-blue-1',
													  navalWP = almarjanNavalSupplyPts
													}),
				presets.missions.patrol.naval:extend({name='almarjan-patrol-fac-blue-2',
													  navalWP = almarjanNavalSupplyPts
													}),
				presets.missions.patrol.naval:extend({name='almarjan-patrol-fac-blue-3',
													  navalWP = almarjanNavalSupplyPts
													}),
			}
		}),
		presets.upgrades.supply.shipper:extend({
			name='almarjan-shipper-blue-1',
			products = {
				presets.missions.supply.naval:extend({name='almarjan-naval-blue-1',
													  navalWP = almarjanNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='almarjan-naval-blue-2',
													  navalWP = almarjanNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='almarjan-naval-blue-3',
													  navalWP = almarjanNavalSupplyPts
													}),
			}
		}),
		presets.upgrades.supply.shipper:extend({
			name='almarjan-shipper-blue-2',
			products = {
				presets.missions.supply.naval:extend({name='almarjan-naval-blue-4',
													  navalWP = almarjanNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='almarjan-naval-blue-5',
													  navalWP = almarjanNavalSupplyPts
													}),
				presets.missions.supply.naval:extend({name='almarjan-naval-blue-6',
													  navalWP = almarjanNavalSupplyPts
													}),
			}
		}),
    }
})

--------------------- END: AlMarjan ----------------------------------------------------------------------------------

------------------- START: AlMaktoum -----------DONE-----------------------------------------------------------------------

zones.almaktoum = ZoneCommand:new("AlMaktoum")
zones.almaktoum.initialState = { side = 1 }
zones.almaktoum.airbaseName = 'Al Maktoum Intl'
zones.almaktoum.maxResource = 80000
zones.almaktoum.keepActive = true
zones.almaktoum:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='almaktoum-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='almaktoum-defense-red'}),
				presets.defenses.red.infantry2:extend({name='almaktoum-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='almaktoum-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='almaktoum-store-red',
            products = {
				presets.missions.supply.helo:extend({name='almaktoum-supply-red-1'}),
				presets.missions.supply.helo:extend({name='almaktoum-supply-red-2'}),
				presets.missions.supply.helo:extend({name='almaktoum-supply-red-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='almaktoum-antenna-red',
            products = {
                presets.defenses.red.sa2:extend({name='almaktoum-sam-red'}),
				presets.defenses.red.shorad3:extend({name='almaktoum-shorad-red'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='almaktoum-bunker-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='almaktoum-patrol-red-1'}),
				presets.missions.attack.helo:extend({name='almaktoum-cas-red-2'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='almaktoum-bunker-red-2',
			products = {
				presets.missions.patrol.aircraft:extend({name='almaktoum-patrol-red-2'}),
				presets.missions.attack.helo:extend({name='almaktoum-cas-red-1'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='almaktoum-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='almaktoum-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='almaktoum-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='almaktoum-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='almaktoum-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='almaktoum-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='almaktoum-supply-blue-2'}),
				presets.missions.supply.helo:extend({name='almaktoum-supply-blue-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='almaktoum-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='almaktoum-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='almaktoum-shorad-blue'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='almaktoum-bunker-blue-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='almaktoum-patrol-blue-1'}),
				presets.missions.attack.helo:extend({name='almaktoum-cas-blue-2'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='almaktoum-bunker-blue-2',
			products = {
				presets.missions.patrol.aircraft:extend({name='almaktoum-patrol-blue-1'}),
				presets.missions.attack.helo:extend({name='almaktoum-cas-blue-2'}),
				presets.missions.attack.sead:extend({name='almaktoum-sead-blue-1'}),
			}
		})
    }
})

--------------------- END: AlMaktoum ----------------------------------------------------------------------------------

------------------- START: AlMinhad -----------DONE-----------------------------------------------------------------------

zones.alminhad = ZoneCommand:new("AlMinhad")
zones.alminhad.initialState = { side = 1 }
zones.alminhad.airbaseName = 'Al Minhad AFB'
zones.alminhad.maxResource = 60000
zones.alminhad.keepActive = true
zones.alminhad:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='alminhad-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='alminhad-defense-red'}),
				presets.defenses.red.infantry2:extend({name='alminhad-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='alminhad-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='alminhad-store-red',
            products = {
				presets.missions.supply.helo:extend({name='alminhad-supply-red-1'}),
				presets.missions.supply.helo:extend({name='alminhad-supply-red-2'}),
				presets.missions.supply.helo:extend({name='alminhad-supply-red-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='alminhad-antenna-red',
            products = {
                presets.defenses.red.sa11:extend({name='alminhad-sam-red'}),
				presets.defenses.red.shorad2:extend({name='alminhad-shorad-red'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='alminhad-bunker-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='alminhad-patrol-red-1'}),
				presets.missions.attack.cas:extend({name='alminhad-cas-red-1'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='alminhad-bunker-red-2',
			products = {
				presets.missions.attack.sead:extend({name='alminhad-sead-red-1'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='alminhad-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='alminhad-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='alminhad-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='alminhad-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='alminhad-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='alminhad-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='alminhad-supply-blue-2'}),
				presets.missions.supply.helo:extend({name='alminhad-supply-blue-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='alminhad-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='alminhad-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='alminhad-shorad-blue'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='alminhad-bunker-blue-1',
			products = {
				presets.missions.attack.cas:extend({name='alminhad-cas-blue-2'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='alminhad-bunker-blue-2',
			products = {
				presets.missions.attack.cas:extend({name='alminhad-cas-blue-1'}),
			}
		})
    }
})

--------------------- END: AlMinhad ----------------------------------------------------------------------------------

------------------- START: AbuDhabi -----------DONE-----------------------------------------------------------------------

zones.abudhabi = ZoneCommand:new("AbuDhabi")
zones.abudhabi.initialState = { side = 1 }
zones.abudhabi.airbaseName = 'Abu Dhabi Intl'
zones.abudhabi.maxResource = 80000
zones.abudhabi.keepActive = true
zones.abudhabi:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='abudhabi-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='abudhabi-defense-red'}),
				presets.defenses.red.infantry2:extend({name='abudhabi-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='abudhabi-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='abudhabi-store-red',
            products = {
				
				presets.missions.supply.helo:extend({name='abudhabi-supply-red-1'}),
				presets.missions.supply.helo:extend({name='abudhabi-supply-red-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='abudhabi-antenna-red',
            products = {
                presets.defenses.red.sa6:extend({name='abudhabi-sam-red'}),
				presets.defenses.red.shorad2:extend({name='abudhabi-shorad-red'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='abudhabi-bunker-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='abudhabi-patrol-red-1'}),
				presets.missions.attack.strike:extend({name='abudhabi-strike-red-1'}),
				presets.missions.attack.sead:extend({name='abudhabi-sead-red-2'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='abudhabi-bunker-red-2',
			products = {
				presets.missions.attack.sead:extend({name='abudhabi-sead-red-1'}),
				presets.missions.attack.strike:extend({name='abudhabi-strike-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='abudhabi-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='abudhabi-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='abudhabi-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='abudhabi-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='abudhabi-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='abudhabi-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='abudhabi-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='abudhabi-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='abudhabi-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='abudhabi-shorad-blue'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='abudhabi-bunker-blue-1',
			products = {
				presets.missions.attack.strike:extend({name='abudhabi-strike-blue-2'}),
				presets.missions.patrol.aircraft:extend({name='abudhabi-patrol-blue-1'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='abudhabi-bunker-blue-2',
			products = {
				presets.missions.attack.strike:extend({name='abudhabi-strike-blue-1'}),
				presets.missions.patrol.aircraft:extend({name='abudhabi-patrol-blue-2'}),
			}
		})
    }
})

--------------------- END: AbuDhabi ----------------------------------------------------------------------------------

------------------- START: Masafi ------------DONE----------------------------------------------------------------------

zones.masafi = ZoneCommand:new("Masafi")
zones.masafi.initialState = { side = 1 }
zones.masafi.maxResource = 25000
zones.masafi:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='masafi-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='masafi-infantry-red'}),
				presets.special.red.infantry:extend({name='masafi-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='masafi-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='masafi-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='masafi-service-red',
			products = {
				presets.missions.supply.convoy:extend({name='masafi-convoy-red-3'}),
				presets.missions.attack.surface:extend({name='masafi-assault-red-1'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='masafi-generator-red',
			products = {
				presets.missions.supply.convoy:extend({name='masafi-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='masafi-convoy-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='masafi-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='masafi-infantry-blue'}),
				presets.special.blue.infantry:extend({name='masafi-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='masafi-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='masafi-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='masafi-service-blue',
			products = {
				presets.missions.supply.convoy:extend({name='masafi-convoy-blue-3'}),
				presets.missions.attack.surface:extend({name='masafi-assault-blue-1'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='masafi-generator-blue',
			products = {
				presets.missions.supply.convoy:extend({name='masafi-convoy-blue-1'}),
				presets.missions.supply.convoy:extend({name='masafi-convoy-blue-2'}),
			}
		})
    }
})

--------------------- END: Masafi ----------------------------------------------------------------------------------

------------------- START: AlDhaid ------------DONE----------------------------------------------------------------------

zones.aldhaid = ZoneCommand:new("AlDhaid")
zones.aldhaid.initialState = { side = 1 }
zones.aldhaid.maxResource = 25000
zones.aldhaid:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='aldhaid-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='aldhaid-infantry-red'}),
				presets.special.red.infantry:extend({name='aldhaid-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='aldhaid-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='aldhaid-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='aldhaid-service-red',
			products = {
				presets.missions.attack.surface:extend({name='aldhaid-assault-red-1'}),
				presets.missions.attack.surface:extend({name='aldhaid-assault-red-2'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='aldhaid-generator-red',
			products = {
				presets.missions.supply.convoy:extend({name='aldhaid-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='aldhaid-convoy-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='aldhaid-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='aldhaid-infantry-blue'}),
				presets.special.blue.infantry:extend({name='aldhaid-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='aldhaid-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='aldhaid-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='aldhaid-service-blue',
			products = {
				presets.missions.attack.surface:extend({name='aldhaid-assault-blue-1'}),
				presets.missions.attack.surface:extend({name='aldhaid-assault-blue-2'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='aldhaid-generator-blue',
			products = {
				presets.missions.supply.convoy:extend({name='aldhaid-convoy-blue-1'}),
				presets.missions.supply.convoy:extend({name='aldhaid-convoy-blue-2'}),
			}
		})
    }
})

--------------------- END: AlDhaid ----------------------------------------------------------------------------------

------------------- START: AlBateen -----------DONE-----------------------------------------------------------------------

zones.albateen = ZoneCommand:new("AlBateen")
zones.albateen.initialState = { side = 1 }
zones.albateen.airbaseName = 'Al-Bateen'
zones.albateen.maxResource = 40000
zones.albateen.keepActive = true
zones.albateen:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='albateen-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='albateen-defense-red'}),
				presets.defenses.red.infantry2:extend({name='albateen-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='albateen-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='albateen-store-red',
            products = {
				presets.missions.supply.helo:extend({name='albateen-supply-red-1'}),
				presets.missions.supply.helo:extend({name='albateen-supply-red-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='albateen-antenna-red',
            products = {
				presets.defenses.red.shorad2:extend({name='albateen-shorad2-red'}),
				presets.defenses.red.shorad1:extend({name='albateen-shorad-red'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='albateen-service-red-1',
			products = {
				presets.missions.attack.helo:extend({name='albateen-cas-red-1'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='albateen-service-red-2',
			products = {
				presets.missions.attack.helo:extend({name='albateen-cas-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='albateen-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='albateen-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='albateen-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='albateen-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='albateen-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='albateen-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='albateen-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='albateen-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='albateen-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='albateen-shorad-blue'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='albateen-bunker-blue-1',
			products = {
				presets.missions.attack.helo:extend({name='albateen-cas-blue-2'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='albateen-bunker-blue-2',
			products = {
				presets.missions.attack.helo:extend({name='albateen-cas-blue-1'}),
			}
		})
    }
})

--------------------- END: AlBateen ----------------------------------------------------------------------------------

------------------- START: Fujairah -----------DONE-----------------------------------------------------------------------

zones.fujairah = ZoneCommand:new("Fujairah")
zones.fujairah.initialState = { side = 1 }
zones.fujairah.airbaseName = 'Fujairah Intl'
zones.fujairah.maxResource = 40000
zones.fujairah.keepActive = true
zones.fujairah:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='fujairah-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='fujairah-defense-red'}),
				presets.defenses.red.infantry2:extend({name='fujairah-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='fujairah-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='fujairah-store-red',
            products = {
				presets.missions.supply.helo:extend({name='fujairah-supply-red-1'}),
				presets.missions.supply.helo:extend({name='fujairah-supply-red-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='fujairah-antenna-red',
            products = {
				presets.defenses.red.sa3:extend({name='fujairah-sam-red'}),
				presets.defenses.red.shorad1:extend({name='fujairah-shorad-red'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='fujairah-service-red-1',
			products = {
				presets.missions.attack.helo:extend({name='fujairah-cas-red-1'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='fujairah-service-red-2',
			products = {
				presets.missions.attack.helo:extend({name='fujairah-cas-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='fujairah-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='fujairah-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='fujairah-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='fujairah-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='fujairah-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='fujairah-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='fujairah-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='fujairah-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='fujairah-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='fujairah-shorad-blue'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='fujairah-bunker-blue-1',
			products = {
				presets.missions.attack.helo:extend({name='fujairah-cas-blue-2'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='fujairah-bunker-blue-2',
			products = {
				presets.missions.attack.helo:extend({name='fujairah-cas-blue-1'}),
			}
		})
    }
})

--------------------- END: Fujairah ----------------------------------------------------------------------------------

------------------- START: DibbaAlFujairah -----------DONE-----------------------------------------------------------------------

zones.dibba = ZoneCommand:new("DibbaAlFujairah")
zones.dibba.initialState = { side = 1 }
zones.dibba.maxResource = 50000
zones.dibba.isHeloSpawn = true
zones.dibba.keepActive = true
zones.dibba.airbaseName = 'DibbaF'
zones.dibba:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='dibba-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='dibba-defense-red'}),
				presets.defenses.red.infantry2:extend({name='dibba-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='dibba-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='dibba-store-red',
            products = {
				presets.missions.supply.helo:extend({name='dibba-supply-red-1'}),
				presets.missions.supply.helo:extend({name='dibba-supply-red-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='dibba-antenna-red',
            products = {
				presets.defenses.red.shorad2:extend({name='dibba-shorad-red'}),
				presets.defenses.red.shorad1:extend({name='dibba-shorad-red'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='dibba-service-red-1',
			products = {
				presets.missions.attack.helo:extend({name='dibba-cas-red-1'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='dibba-service-red-2',
			products = {
				presets.missions.attack.helo:extend({name='dibba-cas-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='dibba-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='dibba-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='dibba-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='dibba-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='dibba-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='dibba-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='dibba-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='dibba-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='dibba-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='dibba-shorad-blue'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='dibba-bunker-blue-1',
			products = {
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='dibba-bunker-blue-2',
			products = {
				presets.missions.attack.helo:extend({name='dibba-cas-blue-1'}),
			}
		})
    }
})

--------------------- END: DibbaAlFujairah ----------------------------------------------------------------------------------

------------------- START: Dubai Intl --------Done--------------------------------------------------------------------------

zones.dubai = ZoneCommand:new("DubaiIntl")
zones.dubai.initialState = { side = 1 }
zones.dubai.airbaseName = 'Dubai Intl'
zones.dubai.maxResource = 50000
zones.dubai.isHeloSpawn = true
zones.dubai.isPlaneSpawn = true
zones.dubai.keepActive = true
zones.dubai:defineUpgrades({
    [1] = {
        presets.upgrades.basic.comPost:extend({
            name='dubai-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='dubai-defense-red'}),
				presets.defenses.red.infantry3:extend({name='dubai-infantry-red-1'}),
				
            }
        }),
        presets.upgrades.supply.fuelTank:extend({
            name='dubai-store-red',
            products = {
				presets.defenses.red.infantry2:extend({name='dubai-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='dubai-infantry-red-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='dubai-antenna-red',
            products = {
				presets.defenses.red.sa3:extend({name='dubai-sam-red'}),
				presets.defenses.red.shorad2:extend({name='dubai-shorad-red'}),
            }
        }),
		presets.upgrades.airdef.comCenter:extend({
			name='dubai-bunker-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='dubai-patrol-red-1'}),
				presets.missions.attack.sead:extend({name='dubai-sead-red-1'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='dubai-bunker-red-2',
			products = {
				presets.missions.patrol.aircraft:extend({name='dubai-patrol-red-2'}),
				presets.missions.attack.strike:extend({name='dubai-strike-red-1'}),
				presets.missions.attack.strike:extend({name='dubai-strike-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='dubai-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='dubai-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='dubai-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='dubai-infantry-blue-2'}),
				presets.defenses.blue.infantry1:extend({name='dubai-infantry-blue-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='dubai-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='dubai-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='dubai-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='dubai-antenna-blue',
            products = {
                presets.defenses.blue.patriot:extend({name='dubai-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='dubai-shorad-blue'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='dubai-bunker-blue-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='dubai-patrol-blue-1'}),
				presets.missions.attack.cas:extend({name='dubai-cas-blue-1'}),
				presets.missions.attack.sead:extend({name='dubai-sead-blue-1'}),
			}
		}),
		presets.upgrades.airdef.hardBunker:extend({
			name='dubai-bunker-blue-2',
			products = {
				presets.missions.patrol.aircraft:extend({name='dubai-patrol-blue-2'}),
				presets.missions.attack.bai:extend({name='dubai-cas-blue-2'}),
				presets.missions.attack.strike:extend({name='dubai-strike-blue-1'}),
				presets.missions.attack.strike:extend({name='dubai-strike-blue-2'}),
			}
		})
    }
})

--------------------- END: Al Dhafra ----------------------------------------------------------------------------------

------------------- START: ShariahIntl -----------DONE-----------------------------------------------------------------------

zones.shariah = ZoneCommand:new("ShariahIntl")
zones.shariah.initialState = { side = 1 }
zones.shariah.airbaseName = 'Shariah Intl'
zones.shariah.maxResource = 60000
zones.shariah.keepActive = true
zones.shariah:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='shariah-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='shariah-defense-red'}),
				presets.defenses.red.infantry2:extend({name='shariah-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='shariah-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='shariah-store-red',
            products = {
				presets.missions.supply.helo:extend({name='shariah-supply-red-1'}),
				presets.missions.supply.helo:extend({name='shariah-supply-red-2'}),
				presets.missions.supply.helo:extend({name='shariah-supply-red-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='shariah-antenna-red',
            products = {
				presets.defenses.red.shorad2:extend({name='shariah-shorad-red'}),
				presets.defenses.red.shorad1:extend({name='shariah-shorad-red'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='shariah-service-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='shariah-patrol-red-2'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='shariah-service-red-2',
			products = {
				presets.missions.patrol.aircraft:extend({name='shariah-patrol-red-1'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='shariah-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='shariah-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='shariah-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='shariah-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='shariah-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='shariah-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='shariah-supply-blue-2'}),
				presets.missions.supply.helo:extend({name='shariah-supply-blue-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='shariah-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='shariah-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='shariah-shorad-blue'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='shariah-bunker-blue-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='shariah-patrol-blue-1'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='shariah-bunker-blue-2',
			products = {
				presets.missions.patrol.aircraft:extend({name='shariah-patrol-blue-2'}),
			}
		})
    }
})

--------------------- END: ShariahIntl ----------------------------------------------------------------------------------

------------------- START: RasAlKhaimah -----------DONE-----------------------------------------------------------------------

zones.rasalkhaimah = ZoneCommand:new("RasAlKhaimah")
zones.rasalkhaimah.initialState = { side = 1 }
zones.rasalkhaimah.airbaseName = 'Ras Al Khaimah Intl'
zones.rasalkhaimah.maxResource = 60000
zones.rasalkhaimah.keepActive = true
zones.rasalkhaimah:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='rasalkhaimah-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='rasalkhaimah-defense-red'}),
				presets.defenses.red.infantry2:extend({name='rasalkhaimah-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='rasalkhaimah-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='rasalkhaimah-store-red',
            products = {
				presets.missions.supply.helo:extend({name='rasalkhaimah-supply-red-1'}),
				presets.missions.supply.helo:extend({name='rasalkhaimah-supply-red-2'}),
				presets.missions.supply.helo:extend({name='rasalkhaimah-supply-red-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='rasalkhaimah-antenna-red',
            products = {
				presets.defenses.red.shorad2:extend({name='rasalkhaimah-shorad-red'}),
				presets.defenses.red.shorad1:extend({name='rasalkhaimah-shorad-red'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='rasalkhaimah-service-red-1',
			products = {
				presets.missions.attack.helo:extend({name='rasalkhaimah-cas-red-1'}),
			}
		}),
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='rasalkhaimah-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='rasalkhaimah-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='rasalkhaimah-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='rasalkhaimah-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='rasalkhaimah-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='rasalkhaimah-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='rasalkhaimah-supply-blue-2'}),
				presets.missions.supply.helo:extend({name='rasalkhaimah-supply-blue-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='rasalkhaimah-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='rasalkhaimah-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='rasalkhaimah-shorad-blue'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='rasalkhaimah-bunker-blue-1',
			products = {
				presets.missions.attack.helo:extend({name='rasalkhaimah-cas-blue-1'}),
			}
		}),
    }
})

--------------------- END: RasAlKhaimah ----------------------------------------------------------------------------------

------------------- START: BandarAbbas -----------DONE-----------------------------------------------------------------------

zones.bandar = ZoneCommand:new("BandarAbbas")
zones.bandar.initialState = { side = 1 }
zones.bandar.airbaseName = 'Bandar Abbas Intl'
zones.bandar.maxResource = 60000
zones.bandar.motherland = true
zones.bandar:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='bandar-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='bandar-defense-red'}),
				presets.defenses.red.infantry2:extend({name='bandar-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='bandar-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='bandar-store-red',
            products = {
				presets.missions.supply.helo:extend({name='bandar-supply-red-1'}),
				presets.missions.supply.helo:extend({name='bandar-supply-red-2'}),
				presets.missions.supply.helo:extend({name='bandar-supply-red-3'}),
            }
        }),
		presets.upgrades.supply.storehouse:extend({
            name='bandar-store-red-2',
            products = {
				presets.missions.supply.helo:extend({name='bandar-supply-red-4'}),
				presets.missions.supply.helo:extend({name='bandar-supply-red-5'}),
				presets.missions.supply.helo:extend({name='bandar-supply-red-6'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='bandar-antenna-red',
            products = {
				presets.defenses.red.shorad2:extend({name='bandar-shorad-red'}),
				presets.defenses.red.sa5:extend({name='bandar-sam-red'}),
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='bandar-service-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='bandar-patrol-red-2'}),
				presets.missions.patrol.aircraft:extend({name='bandar-patrol-red-1'}),
				presets.missions.patrol.aircraft:extend({name='bandar-patrol-red-3'}),
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='bandar-service-red-2',
			products = {
				presets.missions.attack.bai:extend({name='bandar-bai-red-1'}),
				presets.missions.attack.bai:extend({name='bandar-bai-red-2'}),
				presets.missions.attack.bai:extend({name='bandar-bai-red-3'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='bandar-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='bandar-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='bandar-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='bandar-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='bandar-store-blue',
            products = {
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='bandar-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='bandar-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='bandar-shorad-blue'}),
            }
        }),
    }
})

--------------------- END: BandarAbbas ----------------------------------------------------------------------------------

------------------- START: Tunb -----------DONE-----------------------------------------------------------------------
tunbNavalWP = { ['patrol'] = { "NavWpt-CQ70", "NavWpt-CQ53", "NavWpt-CQ12", "NavWpt-BQ80", "NavWpt-BQ58", "NavWpt-BP58", "NavWpt-BP35", "NavWpt-CP04", "NavWpt-CP47",
								"NavWpt-CQ70", "NavWpt-CQ53", "NavWpt-CQ12", "NavWpt-BQ80", "NavWpt-BQ58", "NavWpt-BP58", "NavWpt-BP35", "NavWpt-CP04", "NavWpt-CP47",
								"NavWpt-CQ70", "NavWpt-CQ53", "NavWpt-CQ12", "NavWpt-BQ80", "NavWpt-BQ58", "NavWpt-BP58", "NavWpt-BP35", "NavWpt-CP04", "NavWpt-CP47",
								"NavWpt-CQ70", "NavWpt-CQ53", "NavWpt-CQ12", "NavWpt-BQ80", "NavWpt-BQ58", "NavWpt-BP58", "NavWpt-BP35", "NavWpt-CP04", "NavWpt-CP47",
							 }
			  }

zones.tunb = ZoneCommand:new("Tunb")
zones.tunb.initialState = { side = 1 }
zones.tunb.airbaseName = 'Tunb Island AFB'
zones.tunb.maxResource = 60000
zones.tunb.isHeloSpawn = true
zones.tunb.motherland = true
zones.tunb:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='tunb-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='tunb-defense-red'}),
				presets.defenses.red.infantry2:extend({name='tunb-infantry-red-2'}),
				presets.defenses.red.infantry1:extend({name='tunb-infantry-red-3'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='tunb-store-red',
            products = {
				presets.missions.supply.helo:extend({name='tunb-supply-red-1'}),
				presets.missions.supply.helo:extend({name='tunb-supply-red-2'}),
            }
        }),
		presets.upgrades.supply.storehouse:extend({
            name='tunb-store-red-2',
            products = {
				presets.missions.supply.helo:extend({name='tunb-supply-red-4'}),
				presets.missions.supply.helo:extend({name='tunb-supply-red-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='tunb-antenna-red',
            products = {
				presets.defenses.red.shorad2:extend({name='tunb-shorad-red'}),
				presets.defenses.red.sa11:extend({name='tunb-sam-red'}),
            }
        }),
		presets.upgrades.basic.oilRig:extend({
            name='tunb-gasrig-red',
            products = {
				presets.missions.patrol.naval:extend({name='tunb-patrol-frigate-red-1', navalWP = tunbNavalWP})
            }
        }),
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='tunb-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='tunb-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='tunb-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='tunb-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='tunb-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='tunb-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='tunb-supply-blue-2'}),
            }
        }),
		presets.upgrades.supply.storehouse:extend({
            name='tunb-store-blue-2',
            products = {
				presets.missions.supply.helo:extend({name='tunb-supply-blue-4'}),
				presets.missions.supply.helo:extend({name='tunb-supply-blue-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='tunb-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='tunb-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='tunb-shorad-blue'}),
            }
        }),
		presets.upgrades.basic.oilRig:extend({
            name='tunb-gasrig-blue',
            products = {
				presets.missions.patrol.naval:extend({name='tunb-patrol-sub-blue-1', navalWP = tunbNavalWP})
            }
        }),
    }
})

--------------------- END: Tunb ----------------------------------------------------------------------------------

------------------- START: SirriIsland -----------DONE-----------------------------------------------------------------------

zones.sirriisland = ZoneCommand:new("SirriIsland")
zones.sirriisland.initialState = { side = 1 }
zones.sirriisland.airbaseName = 'Sirri Island'
zones.sirriisland.maxResource = 60000
zones.sirriisland.motherland = true
zones.sirriisland:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='sirriisland-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='sirriisland-defense-red'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='sirriisland-store-red',
            products = {
				presets.missions.supply.helo:extend({name='sirriisland-supply-red-1'}),
				presets.missions.supply.helo:extend({name='sirriisland-supply-red-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='sirriisland-antenna-red',
            products = {
				presets.defenses.red.shorad2:extend({name='sirriisland-shorad-red'}),
				presets.defenses.red.sa10:extend({name='sirriisland-sam-red'}),
            }
        })
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='sirriisland-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='sirriisland-defense-blue'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='sirriisland-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='sirriisland-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='sirriisland-supply-blue-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='sirriisland-antenna-blue',
            products = {
                presets.defenses.blue.patriot:extend({name='sirriisland-sam-blue'}),
				presets.defenses.blue.shorad1:extend({name='sirriisland-shorad-blue'}),
            }
        }),
    }
})

--------------------- END: SirriIsland ----------------------------------------------------------------------------------

------------------- START: AbuMusa -----------DONE-----------------------------------------------------------------------

zones.abumusa = ZoneCommand:new("AbuMusa")
zones.abumusa.initialState = { side = 1 }
zones.abumusa.airbaseName = 'Abu Musa Island'
zones.abumusa.maxResource = 40000
zones.abumusa.keepActive = true
zones.abumusa:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='abumusa-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='abumusa-defense-red'}),
				presets.defenses.red.infantry2:extend({name='abumusa-infantry-red-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='abumusa-store-red',
            products = {
				presets.missions.supply.helo:extend({name='abumusa-supply-red-1'}),
				presets.missions.supply.helo:extend({name='abumusa-supply-red-2'}),
				presets.missions.supply.helo:extend({name='abumusa-supply-red-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='abumusa-antenna-red',
            products = {
				presets.defenses.red.sa6:extend({name='abumusa-sam-red'}),
				presets.defenses.red.shorad1:extend({name='abumusa-shorad-red'}),
            }
        }),
		presets.upgrades.basic.dockCrane:extend({
            name='abumusa-crane-red',
            products = {
				presets.defenses.red.t054a:extend({name='abumusa-type054-red'})
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='abumusa-service-red-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='abumusa-patrol-red-1'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='abumusa-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='abumusa-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='abumusa-infantry-blue-1'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='abumusa-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='abumusa-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='abumusa-supply-blue-2'}),
				presets.missions.supply.helo:extend({name='abumusa-supply-blue-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='abumusa-antenna-blue',
            products = {
                presets.defenses.blue.nasams:extend({name='abumusa-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='abumusa-shorad-blue'}),
            }
        }),
		presets.upgrades.basic.dockCrane:extend({
            name='abumusa-crane-blue',
            products = {
				presets.defenses.blue.ffg:extend({name='abumusa-perry-blue'})
            }
        }),
		presets.upgrades.attack.smallService:extend({
			name='abumusa-bunker-blue-1',
			products = {
				presets.missions.patrol.aircraft:extend({name='abumusa-patrol-blue-1'}),
			}
		})
    }
})

--------------------- END: AbuMusa ----------------------------------------------------------------------------------

------------------- START: RasAlKhaimahPort ------------DONE----------------------------------------------------------------------

zones.rasalkhaimahport = ZoneCommand:new("RasAlKhaimahPort")
zones.rasalkhaimahport.initialState = { side = 1 }
zones.rasalkhaimahport.maxResource = 45000
zones.rasalkhaimahport:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='rasalkhaimahport-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='rasalkhaimahport-infantry-red'}),
				presets.special.red.infantry:extend({name='rasalkhaimahport-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='rasalkhaimahport-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='rasalkhaimahport-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='rasalkhaimahport-service-red',
			products = {
				presets.missions.attack.surface:extend({name='rasalkhaimah-assault-red-1'}),
				presets.missions.attack.surface:extend({name='rasalkhaimah-assault-red-2'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='rasalkhaimahport-generator-red',
			products = {
				presets.missions.supply.convoy:extend({name='rasalkhaimah-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='rasalkhaimah-convoy-red-2'}),
				presets.missions.supply.convoy:extend({name='rasalkhaimah-convoy-red-3'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='rasalkhaimahport-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='rasalkhaimahport-infantry-blue'}),
				presets.special.blue.infantry:extend({name='rasalkhaimahport-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='rasalkhaimahport-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='rasalkhaimahport-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='rasalkhaimahport-service-blue',
			products = {
				presets.missions.attack.surface:extend({name='rasalkhaimah-assault-blue-1'}),
				presets.missions.attack.surface:extend({name='rasalkhaimah-assault-blue-2'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='rasalkhaimahport-generator-blue',
			products = {
				presets.missions.supply.convoy:extend({name='rasalkhaimah-convoy-blue-1'}),
				presets.missions.supply.convoy:extend({name='rasalkhaimah-convoy-blue-2'}),
				presets.missions.supply.convoy:extend({name='rasalkhaimah-convoy-blue-3'}),
			}
		})
    }
})

--------------------- END: RasAlKhaimahPort ----------------------------------------------------------------------------------

------------------- START: Salhad ------------DONE----------------------------------------------------------------------

zones.salhad = ZoneCommand:new("Salhad")
zones.salhad.initialState = { side = 1 }
zones.salhad.maxResource = 25000
zones.salhad:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='salhad-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='salhad-infantry-red'}),
				presets.special.red.infantry:extend({name='salhad-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='salhad-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='salhad-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='salhad-service-red',
			products = {
				presets.missions.attack.surface:extend({name='salhad-assault-red-1'}),
				presets.missions.attack.surface:extend({name='salhad-assault-red-2'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='salhad-service-red-2',
			products = {
				presets.missions.attack.surface:extend({name='salhad-assault-red-3'}),
				presets.missions.attack.surface:extend({name='salhad-assault-red-4'}),
				presets.missions.attack.surface:extend({name='salhad-assault-red-5'}),
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='salhad-generator-red',
			products = {
				presets.missions.supply.convoy:extend({name='salhad-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='salhad-convoy-red-2'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='salhad-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='salhad-infantry-blue'}),
				presets.special.blue.infantry:extend({name='salhad-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='salhad-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='salhad-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='salhad-service-blue',
			products = {
				presets.missions.attack.surface:extend({name='salhad-assault-blue-1'}),
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='salhad-generator-blue',
			products = {
				presets.missions.supply.convoy:extend({name='salhad-convoy-blue-1'}),
			}
		})
    }
})

--------------------- END: Salhad ----------------------------------------------------------------------------------

------------------- START: WabAlSebil ------------DONE----------------------------------------------------------------------

zones.wabalsebil = ZoneCommand:new("WabAlSebil")
zones.wabalsebil.initialState = { side = 1 }
zones.wabalsebil.maxResource = 25000
zones.wabalsebil:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='wabalsebil-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='wabalsebil-infantry-red'}),
				presets.special.red.infantry:extend({name='wabalsebil-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='wabalsebil-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='wabalsebil-shorad-red'})
			}
		}),
		presets.upgrades.airdef.antenna:extend({
			name='wabalsebil-antenna-red-1',
			products = {
				presets.defenses.red.sa2:extend({name='wabalsebil-sam-red'})
			}
		}),
		presets.upgrades.airdef.antenna:extend({
			name='wabalsebil-antenna-red-2',
			products = {
				presets.defenses.red.shorad2:extend({name='wabalsebil-shorad-red-2'})
			}
		}),
		
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='wabalsebil-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='wabalsebil-infantry-blue'}),
				presets.special.blue.infantry:extend({name='wabalsebil-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='wabalsebil-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='wabalsebil-shorad-blue'})
			}
		}),
		presets.upgrades.airdef.antenna:extend({
			name='wabalsebil-antenna-blue-1',
			products = {
				presets.defenses.blue.nasams:extend({name='wabalsebil-sam-blue'})
			}
		}),
		
    }
})

--------------------- END: WabAlSebil ----------------------------------------------------------------------------------

------------------- START: Qeshm -----------DONE-----------------------------------------------------------------------
qeshmNavalWP = { ['patrol'] = { "NavWpt-CQ53", 
								 "NavWpt-CQ70", "NavWpt-CP47", "NavWpt-BN67", "NavWpt-BP42", "NavWpt-CP04",
								 "NavWpt-CQ70", "NavWpt-CP47", "NavWpt-BN67", "NavWpt-BP42", "NavWpt-CP04",
								 "NavWpt-CQ70", "NavWpt-CP47", "NavWpt-BN67", "NavWpt-BP42", "NavWpt-CP04",
								 "NavWpt-CQ70", "NavWpt-CP47", "NavWpt-BN67", "NavWpt-BP42", "NavWpt-CP04",
							 }
			  }

zones.qeshm = ZoneCommand:new("Qeshm")
zones.qeshm.initialState = { side = 1 }
zones.qeshm.airbaseName = 'Qeshm Island'
zones.qeshm.maxResource = 50000
zones.qeshm.motherland = true
zones.qeshm:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='qeshm-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='qeshm-defense-red'}),
				presets.defenses.red.infantry2:extend({name='qeshm-infantry-red-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='qeshm-store-red',
            products = {
				presets.missions.supply.helo:extend({name='qeshm-supply-red-1'}),
				presets.missions.supply.helo:extend({name='qeshm-supply-red-2'}),
				presets.missions.supply.helo:extend({name='qeshm-supply-red-3'}),
				presets.missions.supply.convoy:extend({name='qeshm-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='qeshm-convoy-red-2'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='qeshm-antenna-red',
            products = {
				presets.defenses.red.sa6:extend({name='qeshm-sam-red'}),
				presets.defenses.red.shorad1:extend({name='qeshm-shorad-red'}),
            }
        }),
		presets.upgrades.attack.bigService:extend({
            name='qeshm-service-red',
            products = {
				presets.missions.attack.surface:extend({name='qeshm-assault-red-1'}),
				presets.missions.patrol.naval:extend({name='qeshm-patrol-fac-red-1',navalWP = qeshmNavalWP, cost = 400}),
				presets.missions.patrol.naval:extend({name='qeshm-patrol-fac-red-2',navalWP = qeshmNavalWP, cost = 500}),
				presets.missions.patrol.naval:extend({name='qeshm-patrol-fac-red-3',navalWP = qeshmNavalWP, cost = 600}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='qeshm-bunker-red',
			products = {
				presets.missions.patrol.aircraft:extend({name='qeshm-patrol-red-1'}),
				presets.missions.attack.cas:extend({name='qeshm-cas-red-1'}),
				presets.missions.attack.sead:extend({name='qeshm-sead-red-1'}),
			}
		})
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='qeshm-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='qeshm-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='qeshm-infantry-blue-1'}),
				presets.defenses.blue.infantry2:extend({name='qeshm-infantry-blue-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='qeshm-store-blue',
            products = {
				presets.missions.supply.helo:extend({name='qeshm-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='qeshm-supply-blue-2'}),
				presets.missions.supply.helo:extend({name='qeshm-supply-blue-3'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='qeshm-antenna-blue',
            products = {
                presets.defenses.blue.nasams:extend({name='qeshm-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='qeshm-shorad-blue'}),
            }
        }),
		presets.upgrades.attack.bigService:extend({
            name='qeshm-service-blue',
            products = {
				presets.missions.supply.helo:extend({name='qeshm-supply-blue-4'}),
				presets.missions.supply.helo:extend({name='qeshm-supply-blue-5'}),
            }
        }),
		presets.upgrades.airdef.hardBunker:extend({
			name='qeshm-bunker-blue',
			products = {
				presets.missions.patrol.aircraft:extend({name='qeshm-patrol-blue-1'}),
				presets.missions.attack.strike:extend({name='qeshm-strike-blue-1'}),
				presets.missions.attack.sead:extend({name='qeshm-sead-blue-1'}),
			}
		})
    },
})

--------------------- END: Qeshm ----------------------------------------------------------------------------------

------------------- START: Gori ------------DONE----------------------------------------------------------------------

zones.gori = ZoneCommand:new("Gori")
zones.gori.initialState = { side = 1 }
zones.gori.maxResource = 25000
zones.gori:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='gori-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='gori-infantry-red'}),
				presets.defenses.red.infantry2:extend({name='gori-infantry-red-2'}),
				presets.special.red.infantry:extend({name='gori-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='gori-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='gori-shorad-red'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='gori-service-red',
			products = {
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='gori-generator-red',
			products = {
				presets.missions.supply.helo:extend({name='gori-supply-red-1'}),
				presets.missions.supply.helo:extend({name='gori-supply-red-2'}),
				
			}
		})
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='gori-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='gori-infantry-blue'}),
				presets.special.blue.infantry:extend({name='gori-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='gori-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='gori-shorad-blue'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='gori-service-blue',
			products = {
				presets.missions.attack.surface:extend({name='gori-assault-blue-1'}),
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='gori-generator-blue',
			products = {
				presets.missions.supply.helo:extend({name='gori-supply-blue-1'}),
				presets.missions.supply.helo:extend({name='gori-supply-blue-2'}),
			}
		})
    }
})

--------------------- END: Gori ----------------------------------------------------------------------------------

------------------- START: Sarhez ------------DONE----------------------------------------------------------------------

zones.sarhez = ZoneCommand:new("Sarhez")
zones.sarhez.initialState = { side = 1 }
zones.sarhez.maxResource = 25000
zones.sarhez.motherland = true
zones.sarhez:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='sarhez-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='sarhez-infantry-red'}),
				presets.defenses.red.infantry2:extend({name='sarhez-infantry-red-2'}),
				presets.special.red.infantry:extend({name='sarhez-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='sarhez-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='sarhez-shorad-red-1'}),
				presets.defenses.red.shorad2:extend({name='sarhez-shorad-red-2'}),
				presets.defenses.red.sa6:extend({name='sarhez-sam-red'})
			}
		}),
		presets.upgrades.supply.factory1:extend({
			name='sarhez-facotry-red-1',
			products = {
				presets.missions.supply.convoyBig:extend({name='sarhez-convoy-red-1'}),
				presets.missions.supply.convoyBig:extend({name='sarhez-convoy-red-2'}),
				
			}
		}),
		presets.upgrades.supply.factory1:extend({
			name='sarhez-facotry-red-2',
			products = {
				presets.missions.supply.convoyBig:extend({name='sarhez-convoy-red-3'}),
				presets.missions.supply.convoyBig:extend({name='sarhez-convoy-red-4'}),
				
			}
		}),
		presets.upgrades.supply.factory1:extend({
			name='sarhez-facotry-red-3',
			products = {
				presets.missions.supply.convoyBig:extend({name='sarhez-convoy-red-5'}),
				presets.missions.supply.convoyBig:extend({name='sarhez-convoy-red-6'}),
				
			}
		}),
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='sarhez-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='sarhez-infantry-blue'}),
				presets.special.blue.infantry:extend({name='sarhez-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='sarhez-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='sarhez-shorad-blue-1'}),
				presets.defenses.blue.shorad2:extend({name='sarhez-shorad-blue-2'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='sarhez-service-blue',
			products = {
			}
		})
    }
})

--------------------- END: Sarhez ----------------------------------------------------------------------------------

------------------- START: Gowdegaz ------------DONE----------------------------------------------------------------------

zones.gowdegaz = ZoneCommand:new("Gowdegaz")
zones.gowdegaz.initialState = { side = 1 }
zones.gowdegaz.maxResource = 25000
zones.gowdegaz.motherland = true
zones.gowdegaz:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='gowdegaz-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='gowdegaz-infantry-red'}),
				presets.defenses.red.infantry2:extend({name='gowdegaz-infantry-red-2'}),
				presets.special.red.infantry:extend({name='gowdegaz-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='gowdegaz-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='gowdegaz-shorad-red-1'}),
				presets.defenses.red.shorad2:extend({name='gowdegaz-shorad-red-2'}),
				presets.defenses.red.sa6:extend({name='gowdegaz-sam-red'})
			}
		}),
		presets.upgrades.supply.factory2:extend({
			name='gowdegaz-facotry-red-1',
			products = {
				presets.missions.supply.convoyBig:extend({name='gowdegaz-convoy-red-1'}),
				presets.missions.supply.convoyBig:extend({name='gowdegaz-convoy-red-2'}),
				
			}
		}),
		presets.upgrades.supply.factory2:extend({
			name='gowdegaz-facotry-red-2',
			products = {
				presets.missions.supply.convoyBig:extend({name='gowdegaz-convoy-red-3'}),
				presets.missions.supply.convoyBig:extend({name='gowdegaz-convoy-red-4'}),
				
			}
		}),
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='gowdegaz-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='gowdegaz-infantry-blue'}),
				presets.special.blue.infantry:extend({name='gowdegaz-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='gowdegaz-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='gowdegaz-shorad-blue-1'}),
				presets.defenses.blue.shorad2:extend({name='gowdegaz-shorad-blue-2'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='gowdegaz-service-blue',
			products = {
			}
		})
    }
})

--------------------- END: Gowdegaz ----------------------------------------------------------------------------------

------------------- START: SayehKhvosh ------------DONE----------------------------------------------------------------------

zones.sayehkhvosh = ZoneCommand:new("SayehKhvosh")
zones.sayehkhvosh.initialState = { side = 1 }
zones.sayehkhvosh.maxResource = 25000
zones.sayehkhvosh.motherland = true
zones.sayehkhvosh:defineUpgrades({
    [1] = {
        presets.upgrades.basic.watchTwr:extend({
            name='sayehkhvosh-tower-red',
            products = {
				presets.defenses.red.infantry1:extend({name='sayehkhvosh-infantry-red'}),
				presets.defenses.red.infantry2:extend({name='sayehkhvosh-infantry-red-2'}),
				presets.special.red.infantry:extend({name='sayehkhvosh-defense-red'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='sayehkhvosh-tent-red',
			products = {
				presets.defenses.red.shorad1:extend({name='sayehkhvosh-shorad-red-1'}),
				presets.defenses.red.shorad2:extend({name='sayehkhvosh-shorad-red-2'}),
				presets.defenses.red.sa3:extend({name='sayehkhvosh-sam-red'})
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='sayehkhvosh-generator-red-1',
			products = {
				presets.missions.supply.helo:extend({name='sayehkhvosh-supply-red-1'}),
				presets.missions.supply.helo:extend({name='sayehkhvosh-supply-red-2'}),
				
			}
		}),
		presets.upgrades.supply.generator:extend({
			name='sayehkhvosh-generator-red-2',
			products = {
				presets.missions.supply.helo:extend({name='sayehkhvosh-supply-red-3'}),
				presets.missions.supply.helo:extend({name='sayehkhvosh-supply-red-4'}),
				presets.missions.supply.helo:extend({name='sayehkhvosh-supply-red-5'}),
				
			}
		}),
    },
    [2] = {
        presets.upgrades.basic.watchTwr:extend({
            name='sayehkhvosh-tower-blue',
            products = {
				presets.defenses.blue.infantry1:extend({name='sayehkhvosh-infantry-blue'}),
				presets.special.blue.infantry:extend({name='sayehkhvosh-defense-blue'})
            }
        }),
        presets.upgrades.basic.tent:extend({
			name='sayehkhvosh-tent-blue',
			products = {
				presets.defenses.blue.shorad1:extend({name='sayehkhvosh-shorad-blue-1'}),
				presets.defenses.blue.shorad2:extend({name='sayehkhvosh-shorad-blue-2'})
			}
		}),
		presets.upgrades.attack.smallService:extend({
			name='sayehkhvosh-service-blue',
			products = {
			}
		})
    }
})

--------------------- END: SayehKhvosh ----------------------------------------------------------------------------------

------------------- START: Lavan -----------DONE-----------------------------------------------------------------------

zones.lavan = ZoneCommand:new("Lavan")
zones.lavan.initialState = { side = 1 }
zones.lavan.airbaseName = 'Lavan Island'
zones.lavan.maxResource = 25000
zones.lavan.motherland = true
zones.lavan:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='lavan-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='lavan-defense-red'}),
				presets.defenses.red.infantry2:extend({name='lavan-infantry-red-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='lavan-store-red',
            products = {
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='lavan-antenna-red',
            products = {
				presets.defenses.red.sa10:extend({name='lavan-sam-red'}),
				presets.defenses.red.shorad1:extend({name='lavan-shorad-red'}),
            }
        })
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='lavan-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='lavan-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='lavan-infantry-blue-1'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='lavan-store-blue',
            products = {
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='lavan-antenna-blue',
            products = {
                presets.defenses.blue.patriot:extend({name='lavan-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='lavan-shorad-blue'}),
            }
        }),
    }
})

--------------------- END: Lavan ----------------------------------------------------------------------------------

------------------- START: BandarLengeh -----------DONE-----------------------------------------------------------------------

zones.bandarlengeh = ZoneCommand:new("BandarLengeh")
zones.bandarlengeh.initialState = { side = 1 }
zones.bandarlengeh.airbaseName = 'Bandar Lengeh'
zones.bandarlengeh.maxResource = 25000
zones.bandarlengeh.motherland = true
zones.bandarlengeh:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='bandarlengeh-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='bandarlengeh-defense-red'}),
				presets.defenses.red.infantry2:extend({name='bandarlengeh-infantry-red-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='bandarlengeh-store-red',
            products = {
				presets.missions.supply.helo:extend({name='bandarlengeh-supply-red-1'}),
				presets.missions.supply.helo:extend({name='bandarlengeh-supply-red-2'}),
            }
        }),
		presets.upgrades.supply.storehouse:extend({
            name='bandarlengeh-store-red-2',
            products = {
				presets.missions.supply.helo:extend({name='bandarlengeh-supply-red-3'}),
				presets.missions.supply.helo:extend({name='bandarlengeh-supply-red-4'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='bandarlengeh-antenna-red',
            products = {
				presets.defenses.red.sa3:extend({name='bandarlengeh-sam-red'}),
				presets.defenses.red.shorad3:extend({name='bandarlengeh-shorad-red'}),
            }
        })
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='bandarlengeh-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='bandarlengeh-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='bandarlengeh-infantry-blue-1'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='bandarlengeh-store-blue',
            products = {
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='bandarlengeh-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='bandarlengeh-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='bandarlengeh-shorad-blue'}),
            }
        }),
    }
})

--------------------- END: BandarLengeh ----------------------------------------------------------------------------------

------------------- START: Lar -----------DONE-----------------------------------------------------------------------

zones.lar = ZoneCommand:new("Lar")
zones.lar.initialState = { side = 1 }
zones.lar.airbaseName = 'Bandar Lengeh'
zones.lar.maxResource = 25000
zones.lar.motherland = true
zones.lar:defineUpgrades({
    [1] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='lar-barracks-red',
            products = {
				presets.special.red.infantry:extend({name='lar-defense-red'}),
				presets.defenses.red.infantry2:extend({name='lar-infantry-red-2'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='lar-store-red',
            products = {
				presets.missions.supply.convoy:extend({name='lar-convoy-red-1'}),
				presets.missions.supply.convoy:extend({name='lar-convoy-red-2'}),
            }
        }),
		presets.upgrades.supply.storehouse:extend({
            name='lar-store-red-2',
            products = {
				presets.missions.supply.convoy:extend({name='lar-convoy-red-3'}),
				presets.missions.supply.convoy:extend({name='lar-convoy-red-4'}),
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='lar-antenna-red',
            products = {
				presets.defenses.red.sa10:extend({name='lar-sam-red'}),
				presets.defenses.red.shorad3:extend({name='lar-shorad-red'}),
				presets.missions.patrol.aircraft:extend({name='lar-patrol-red-1'}),
				presets.missions.patrol.aircraft:extend({name='lar-patrol-red-2'}),
            }
        })
    },
    [2] = {
        presets.upgrades.basic.dispatchBarracks:extend({
            name='lar-barracks-blue',
            products = {
				presets.special.blue.infantry:extend({name='lar-defense-blue'}),
				presets.defenses.blue.infantry3:extend({name='lar-infantry-blue-1'}),
            }
        }),
        presets.upgrades.supply.storehouse:extend({
            name='lar-store-blue',
            products = {
            }
        }),
        presets.upgrades.airdef.antenna:extend({
            name='lar-antenna-blue',
            products = {
                presets.defenses.blue.hawk:extend({name='lar-sam-blue'}),
				presets.defenses.blue.shorad2:extend({name='lar-shorad-blue'}),
            }
        }),
    }
})

--------------------- END: Lar ----------------------------------------------------------------------------------

--Airports
--Lar (Should be supply point, have lots of trucks, SA-5 or SA-10 SAM and a CAP, and SEAD spawn for red )
--






	cm = ConnectionManager:new()
	cm:addConnection('Liwa', 'Alpha', false) --
	cm:addConnection('Liwa', 'AlDhafra', false) --
	cm:addConnection('Alpha', 'AlDhafra', false) --
	cm:addConnection('AlDhafra', 'Bravo', false) --
	cm:addConnection('AlDhafra', 'AbuDhabi', false) --
	cm:addConnection('AlDhafra', 'AlBateen', false) --
	cm:addConnection('AlBateen', 'AbuDhabi', false) --
	cm:addConnection('Harbor', 'AbuDhabi', false)  --
	cm:addConnection('Harbor', 'Charlie', false) --
	cm:addConnection('Bravo', 'AlAin', false) --
	cm:addConnection('Bravo', 'Charlie', false) --
	cm:addConnection('AbuDhabi', 'Charlie', false) --
	cm:addConnection('Charlie', 'AlAin', false) --
	cm:addConnection('Charlie', 'Delta', false) --
	cm:addConnection('Charlie', 'AlMaktoum', false) --
	cm:addConnection('Harbor', 'AlMaktoum', false) --
	cm:addConnection('AlMinhad', 'AlMaktoum', false) --
	cm:addConnection('AlAin', 'Delta', false) --
	cm:addConnection('AlAin', 'AsSudiyah', false) --
	cm:addConnection('AlAin', 'AlKhan', false) --
	cm:addConnection('AsSudiyah', 'Delta', false) --
	cm:addConnection('AsSudiyah', 'AlKhan', false) --
	cm:addConnection('AsSudiyah', 'AlWadiyat', false) --
	cm:addConnection('AsSudiyah', 'Magan', false) --
	cm:addConnection('AlKhan', 'Magan', false) --
	cm:addConnection('Magan', 'AlWadiyat', false) --
	cm:addConnection('Delta', 'AlWadiyat', false) --
	cm:addConnection('Delta', 'AlDhaid', false) --
	cm:addConnection('AlWadiyat','Fujairah', false) 
	cm:addConnection('Masafi','Fujairah', false) --
	cm:addConnection('DibbaAlFujairah','Fujairah', false) --
	cm:addConnection('Masafi','AlDhaid', false) --
	cm:addConnection('DibbaAlFujairah','AlDhaid', false) --
	cm:addConnection('AlMarjan','RasAlKhaimah', false) --
	cm:addConnection('AlDhaid','RasAlKhaimah', false) --
	cm:addConnection('DibbaAlFujairah','RasAlKhaimah', false) --
	cm:addConnection('AlMarjan','ShariahIntl', false) --
	cm:addConnection('AlDhaid','ShariahIntl', false) --
	cm:addConnection('DubaiIntl','ShariahIntl', false) --
	cm:addConnection('DubaiIntl','AlMinhad', false) --
	cm:addConnection('AlMarjan','Havadarya', true) --
	cm:addConnection('AlMinhad','AlDhaid', false) --
	
	
	
	cm:addConnection('Kish','Havadarya',true) --
	cm:addConnection('Harbor','Havadarya',true) --
	cm:addConnection('Khasab','Havadarya',true) ---
	cm:addConnection('BandarAbbas','Havadarya',false) --
	cm:addConnection('BandarAbbas','Khasab',true) --
	cm:addConnection('RasAlKhaimahPort','Khasab',false) -- 
	cm:addConnection('WabAlSebil','Khasab',false) -- 
	cm:addConnection('Salhad','Khasab',false) -- 
	cm:addConnection('Salhad','DibbaAlFujairah',false) -- 
	cm:addConnection('Salhad','RasAlKhaimah',false) -- 
	cm:addConnection('Salhad','RasAlKhaimahPort',false) -- 
	cm:addConnection('AlMarjan','RasAlKhaimahPort',false) --
	cm:addConnection('AlMarjan','AbuMusa',true) --
	cm:addConnection('SirriIsland','AbuMusa',true) --
	cm:addConnection('Tunb','AbuMusa',true) --
	cm:addConnection('Tunb','SirriIsland',true) --
	cm:addConnection('Kish','SirriIsland',true) --
	cm:addConnection('Harbor','SirriIsland',true) --
	cm:addConnection('Qeshm','Havadarya',true) --
	cm:addConnection('Qeshm','Tunb',true) --
	cm:addConnection('Qeshm','Gori',false) --
	cm:addConnection('Gori','Tunb',true) --
	
	
	cm:addConnection('Lar','BandarLengeh',false) --
	cm:addConnection('Lar','SayehKhvosh',false) --
	cm:addConnection('Lar','Havadarya',false) --
	cm:addConnection('Sarhez','Havadarya',false) --
	cm:addConnection('Sarhez','SayehKhvosh',false) --
	cm:addConnection('Gowdegaz','SayehKhvosh',false) --
	cm:addConnection('Gowdegaz','BandarLengeh',false) --
	cm:addConnection('BandarLengeh','Gori',true) --
	cm:addConnection('BandarLengeh','Kish',true) --
	cm:addConnection('BandarLengeh','Tunb',true) --
	cm:addConnection('SayehKhvosh','Qeshm',true) --
	cm:addConnection('SayehKhvosh','Gori',true) --
	cm:addConnection('Lavan','Kish',true) --
	
	
	
--	cm:addConnection('SirAbuNuayr','SirriIsland',true) --
--  cm:addConnection('SirAbuNuayr','Harbor',true) --
	--cm:addConnection('Kish','AlDhafra',true)
end

ZoneCommand.setNeighbours()

bm = BattlefieldManager:new()

mc = MarkerCommands:new()

pt = PlayerTracker:new()

mt = MissionTracker:new()

st = SquadTracker:new()

ct = CSARTracker:new()

pl = PlayerLogistics:new()

gci = GCI:new(2)

gm = GroupMonitor:new()

rm = ReconManager:new()

cmap1 = CarrierMap:new({"A","B","C","D"})
cmap2 = CarrierMap:new({"E","F","G","H"})

stennis = CarrierCommand:new("CVN-74", 3000, cmap1:getNavMap(), {
	icls = 10,
	acls = true,
	tacan = {channel = 39, callsign="STN"},
	link4 = 339000000,
	radio = 137500000
}, 50000)

invinciblemap = cmap2:getNavMap()
for i,v in ipairs(cmap1:getNavMap()) do
	table.insert(invinciblemap, v)
end

invincible = CarrierCommand:new("HMS Invincible", 1500, invinciblemap, {
	tacan = {channel = 44, callsign="INV"},
	radio = 139500000
}, 30000)

invincible:addSupportFlight("Gambit Flight", 2000, CarrierCommand.supportTypes.strike, {altitude = 15000})
invincible:addSupportFlight("Ghost Flight", 2000, CarrierCommand.supportTypes.strike, {altitude = 15000})
invincible:addSupportFlight("Titan Flight", 3000, CarrierCommand.supportTypes.transport, {altitude = 500})
invincible:addSupportFlight("Vandal Flight", 3000, CarrierCommand.supportTypes.transport, {altitude = 500})

stennis:addSupportFlight("Shadow Flight", 1000, CarrierCommand.supportTypes.cap, {altitude = 20000, range=25})
stennis:addSupportFlight("Cobalt Flight", 1000, CarrierCommand.supportTypes.cap, {altitude = 25000, range=25})
stennis:addSupportFlight("Apex Flight", 2000, CarrierCommand.supportTypes.strike, {altitude = 20000})
stennis:addSupportFlight("Darkstar Flight", 5000, CarrierCommand.supportTypes.awacs, {altitude = 30000, freq=261})
stennis:addSupportFlight("Mauler Flight", 3000, CarrierCommand.supportTypes.tanker, {altitude = 19000, freq=261.5, tacan=45})
stennis:addExtraSupport("BGM-109B", 10000, CarrierCommand.supportTypes.mslstrike, {salvo = 10, wpType = 'weapons.missiles.BGM_109B'})

-- PlayerLogistics:registerSquadGroup(squadType,              groupname,       weight,cost,jobtime,extracttime, squadSize)
pl:registerSquadGroup(PlayerLogistics.infantryTypes.capture,  'capture-squad',  700, 200, 60,    60*30, 4, 2)
pl:registerSquadGroup(PlayerLogistics.infantryTypes.sabotage, 'sabotage-squad', 800, 500, 60*5,  60*30, 4, 2)
pl:registerSquadGroup(PlayerLogistics.infantryTypes.ambush,   'ambush-squad',   900, 300, 60*20, 60*30, 5, 2)
pl:registerSquadGroup(PlayerLogistics.infantryTypes.engineer, 'engineer-squad', 200, 1000,60,    60*30, 2, 2)
pl:registerSquadGroup(PlayerLogistics.infantryTypes.manpads,  'manpads-squad',  900, 500, 60*20, 60*30, 5, 2)
pl:registerSquadGroup(PlayerLogistics.infantryTypes.spy,      'spy-squad',      100, 300, 60*10, 60*30, 1, 2)
pl:registerSquadGroup(PlayerLogistics.infantryTypes.rapier,   'rapier-squad',   1200,2000,60*60, 60*30, 8, 2)
pl:registerSquadGroup(PlayerLogistics.infantryTypes.arty,     'arty-squad',     2000,2000,60*60, 60*60, 5, 2)

Group.getByName('jtacDrone'):destroy()
CommandFunctions.jtac = JTAC:new({name = 'jtacDrone'})

pm = PersistenceManager:new(savefile)
pm:load()

if pm:canRestore() then
	pm:restore()
else
	--initial states
	Starter.start(zones)
	stennis:setWaypoints({"A-1", "A-2", "A-3", "A-4"})
	stennis:setWPStock('weapons.missiles.BGM_109B', Utils.getAmmo(Unit.getByName(stennis.name):getGroup(), 'weapons.missiles.BGM_109B'))
	invincible:setWaypoints({"E-1","E-2"})
end

timer.scheduleFunction(function(param, time)
	pm:save()
	env.info("Mission state saved")
	return time+60
end, zones, timer.getTime()+60)


--make sure support units are present where needed
--These are for the refueler and rearmers at FARPs will maybe try something a little different
ensureSpawn = {
	['alpha-support-blue'] = zones.alpha,
	['bravo-support-blue'] = zones.bravo,
	['charlie-support-blue'] = zones.charlie,
	['alwadiyat-support-blue'] = zones.alwadiyat,
	['dibba-support-blue'] = zones.dibba,
}

for grname, zn in pairs(ensureSpawn) do
	local g = Group.getByName(grname)
	if g then g:destroy() end
end

timer.scheduleFunction(function(param, time)
	
	for grname, zn in pairs(ensureSpawn) do
		local g = Group.getByName(grname)
		if zn.side == 2 then
			if not g then
				local err, msg = pcall(mist.respawnGroup,grname,true)
				if not err then
					env.info("ERROR spawning "..grname)
					env.info(msg)
				end
			end
		else
			if g then g:destroy() end
		end
	end

	return time+30
end, {}, timer.getTime()+30)


--supply injection
local blueSupply = {'offmap-supply-blue-1','offmap-supply-blue-2','offmap-supply-blue-3','offmap-supply-blue-4','offmap-supply-blue-5'}
local redSupply = {'offmap-supply-red-1','offmap-supply-red-2','offmap-supply-red-3','offmap-supply-red-4','offmap-supply-red-5','offmap-supply-red-6'}
local offmapZones = {
	zones.liwa,
	zones.aldhafra,
	zones.bandar,
	zones.lar,
--	zones.beirut,
--	zones.palmyra,
--	zones.alassad,
--	zones.damascus,
	--zones.ramatdavid, -- cant suport aircraft
}

supplyPointRegistry = {
	blue = {},
	red = {}
}

for i,v in ipairs(blueSupply) do
	local g = Group.getByName(v)
	if g then 
		supplyPointRegistry.blue[v] = g:getUnit(1):getPoint()
	end
end

for i,v in ipairs(redSupply) do
	local g = Group.getByName(v)
	if g then 
		supplyPointRegistry.red[v] = g:getUnit(1):getPoint()
	end
end

offmapSupplyRegistry = {}
timer.scheduleFunction(function(param, time)
	local availableBlue = {}
	for i,v in ipairs(param.blue) do
		if offmapSupplyRegistry[v] == nil then
			table.insert(availableBlue, v)
		end
	end

	local availableRed = {}
	for i,v in ipairs(param.red) do
		if offmapSupplyRegistry[v] == nil then
			table.insert(availableRed, v)
		end
	end
 
	local redtargets = {}
	local bluetargets = {}
	for _, zn in ipairs(param.offmapZones) do
		if zn:needsSupplies(3000) then
			local isOnRoute = false
			for _,data in pairs(offmapSupplyRegistry) do
				if data.zone.name == zn.name then
					isOnRoute = true
					break
				end
			end
			if not isOnRoute then
				if zn.side == 1 then
					table.insert(redtargets, zn)
				elseif zn.side == 2 then
					table.insert(bluetargets, zn)
				end
			end
		end
	end

	if #availableRed > 0 and #redtargets > 0 then
		local zn = redtargets[math.random(1,#redtargets)]

		local red = nil
		local minD = 999999999
		for i,v in ipairs(availableRed) do
			local d = mist.utils.get2DDist(zn.zone.point, supplyPointRegistry.red[v])
			if d < minD then
				red = v
				minD = d
			end
		end

		if not red then red = availableRed[math.random(1,#availableRed)] end

		local gr = red
		red = nil
		mist.respawnGroup(gr, true)
		offmapSupplyRegistry[gr] = {zone = zn, assigned = timer.getAbsTime()}
		env.info(gr..' was deployed')
		timer.scheduleFunction(function(param,time)
			local g = Group.getByName(param.group)
			TaskExtensions.landAtAirfield(g, param.target.zone.point)
			env.info(param.group..' going to '..param.target.name)
		end, {group=gr, target=zn}, timer.getTime()+2)
	end
	
	if #availableBlue > 0 and #bluetargets>0 then
		local zn = bluetargets[math.random(1,#bluetargets)]

		local blue = nil
		local minD = 999999999
		for i,v in ipairs(availableBlue) do
			local d = mist.utils.get2DDist(zn.zone.point, supplyPointRegistry.blue[v])
			if d < minD then
				blue = v
				minD = d
			end
		end

		if not blue then blue = availableBlue[math.random(1,#availableBlue)] end

		local gr = blue
		blue = nil
		mist.respawnGroup(gr, true)
		offmapSupplyRegistry[gr] = {zone = zn, assigned = timer.getAbsTime()}
		env.info(gr..' was deployed')
		timer.scheduleFunction(function(param,time)
			local g = Group.getByName(param.group)
			TaskExtensions.landAtAirfield(g, param.target.zone.point)
			env.info(param.group..' going to '..param.target.name)
		end, {group=gr, target=zn}, timer.getTime()+2)
	end

	return time+(60*5)
end, {blue = blueSupply, red = redSupply, offmapZones = offmapZones}, timer.getTime()+60)



timer.scheduleFunction(function(param, time)
	
	for groupname,data in pairs(offmapSupplyRegistry) do
		local gr = Group.getByName(groupname)
		if not gr then 
			offmapSupplyRegistry[groupname] = nil
			env.info(groupname..' was destroyed')
		end
	
		if gr and ((timer.getAbsTime() - data.assigned) > (60*60)) then
			gr:destroy()
			offmapSupplyRegistry[groupname] = nil
			env.info(groupname..' despawned due to being alive for too long')
		end
		
		if gr and Utils.allGroupIsLanded(gr) and Utils.someOfGroupInZone(gr, data.zone.name) then 
			data.zone:addResource(25000)
			gr:destroy()
			offmapSupplyRegistry[groupname] = nil
			env.info(groupname..' landed at '..data.zone.name..' and delivered 25000 resources')
		end
	end

	return time+180
end, {}, timer.getTime()+180)







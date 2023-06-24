Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be in order for the markers to be drawn (in GTA units).
Config.Debug                      = ESX.GetConfig().EnableDebug
Config.Marker                     = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}

Config.ReviveReward               = 700  -- Revive reward, set to 0 if you don't want it enabled
Config.SaveDeathStatus              = true -- Save Death Status?
Config.LoadIpl                    = true -- Disable if you're using fivem-ipl or other IPL loaders

Config.Locale = GetConvar('esx:locale', 'en')

Config.DistressBlip = {
	Sprite = 310,
	Color = 48,
	Scale = 2.0
}

Config.EarlyRespawnTimer          = 60000 * 1  -- time til respawn is available
Config.BleedoutTimer              = 60000 * 10 -- time til the player bleeds out

Config.EnablePlayerManagement     = false -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.OxInventory                = ESX.GetConfig().OxInventory
Config.RespawnPoints = {
	{coords = vector3(341.0, -1397.3, 32.5), heading = 48.5}, -- Central Los Santos
	{coords = vector3(1836.03, 3670.99, 34.28), heading = 296.06} -- Sandy Shores
}

Config.PharmacyItems = {
	{
		title = "Medikit",
		item = "medikit"
	},
	{
		title = "Bandage",
		item = "bandage"
	},
}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(307.7, -1433.4, 28.9),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(270.5, -1363.0, 23.5)
		},

		Pharmacies = {
			vector3(230.1, -1366.1, 38.5)
		},

		Vehicles = {
			{
				Spawner = vector3(307.7, -1433.4, 30.0),
				InsideShop = vector3(446.7, -1355.6, 43.5),
				Marker = {type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(297.2, -1429.5, 29.8), heading = 227.6, radius = 4.0},
					{coords = vector3(294.0, -1433.1, 29.8), heading = 227.6, radius = 4.0},
					{coords = vector3(309.4, -1442.5, 29.8), heading = 227.6, radius = 6.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(317.5, -1449.5, 46.5),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = {type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(313.5, -1465.1, 46.5), heading = 142.7, radius = 10.0},
					{coords = vector3(299.5, -1453.2, 46.5), heading = 142.7, radius = 10.0}
				}
			}
		},

		FastTravels = {
			{
				From = vector3(294.7, -1448.1, 29.0),
				To = {coords = vector3(272.8, -1358.8, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(275.3, -1361, 23.5),
				To = {coords = vector3(295.8, -1446.5, 28.9), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = {coords = vector3(333.1, -1434.9, 45.5), heading = 138.6},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = {coords = vector3(249.1, -1369.6, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = {coords = vector3(320.9, -1478.6, 28.8), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(317.9, -1476.1, 28.9),
				To = {coords = vector3(238.6, -1368.4, 23.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(237.4, -1373.8, 26.0),
				To = {coords = vector3(251.9, -1363.3, 38.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = TranslateCap('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = {coords = vector3(235.4, -1372.8, 26.3), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = TranslateCap('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {
	car = {
		ambulance = {
			{model = 'ambulance', price = 5000}
		},

		doctor = {
			{model = 'ambulance', price = 4500}
		},

		chief_doctor = {
			{model = 'ambulance', price = 3000}
		},

		boss = {
			{model = 'ambulance', price = 2000}
		}
	},

	helicopter = {
		ambulance = {},

		doctor = {
			{model = 'buzzard2', price = 150000}
		},

		chief_doctor = {
			{model = 'buzzard2', price = 150000},
			{model = 'seasparrow', price = 300000}
		},

		boss = {
			{model = 'buzzard2', price = 10000},
			{model = 'seasparrow', price = 250000}
		}
	}
}

Config.Clothing = {
	['EMS Station Clothing'] = { -- label for the menu option
		shared = { -- job grade number
			icon = 'fas fa-pills', -- icon in the menu
			armor = 100, -- optional: armor if deleted it will automaticly set to 0
			clothing = { -- clothing self explanatory 
				male = {
					tshirt_1 = 15,  tshirt_2 = 0,
					torso_1 = 463,   torso_2 = 1,
					arms = 0,
					pants_1 = 52,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					bproof_1 = 8,  bproof_2 = 0,
				},
				female = {
					tshirt_1 = 36,  tshirt_2 = 0,
					torso_1 = 48,   torso_2 = 0,
					decals_1 = 0,   decals_2 = 0,
					arms = 44,
					pants_1 = 34,   pants_2 = 0,
					shoes_1 = 27,   shoes_2 = 0,
					helmet_1 = 45,  helmet_2 = 0,
					chain_1 = 0,    chain_2 = 0,
					ears_1 = 2,     ears_2 = 0
				}
			}
		},
	},
	['EMS Clothing'] = {
		[0] = {
			icon = 'fas fa-pills',
			clothing = {
				male = {
					tshirt_1 = 15,  tshirt_2 = 0,
					torso_1 = 463,   torso_2 = 1,
					arms = 0,
					pants_1 = 52,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					bproof_1 = 8,  bproof_2 = 0,
				},
				female = {
					tshirt_1 = 36,  tshirt_2 = 0,
					torso_1 = 48,   torso_2 = 0,
					decals_1 = 0,   decals_2 = 0,
					arms = 44,
					pants_1 = 34,   pants_2 = 0,
					shoes_1 = 27,   shoes_2 = 0,
					helmet_1 = 45,  helmet_2 = 0,
					chain_1 = 0,    chain_2 = 0,
					ears_1 = 2,     ears_2 = 0
				}
			}
		},
		[1] = {
			icon = 'fas fa-pills',
			clothing = {
				male = {
					tshirt_1 = 15,  tshirt_2 = 0,
					torso_1 = 463,   torso_2 = 2,
					arms = 0,
					pants_1 = 52,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					bproof_1 = 8,  bproof_2 = 0,
				},
				female = {
					tshirt_1 = 35,  tshirt_2 = 0,
					torso_1 = 48,   torso_2 = 0,
					decals_1 = 0,   decals_2 = 0,
					arms = 44,
					pants_1 = 34,   pants_2 = 0,
					shoes_1 = 27,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = 0,    chain_2 = 0,
					ears_1 = 2,     ears_2 = 0
				}
			}
		},
		[2] = {
			icon = 'fas fa-pills',
			clothing = {
				male = {
					tshirt_1 = 15,  tshirt_2 = 0,
					torso_1 = 463,   torso_2 = 13,
					arms = 0,
					pants_1 = 52,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					bproof_1 = 8,  bproof_2 = 0,
				},
				female = {
					tshirt_1 = 35,  tshirt_2 = 0,
					torso_1 = 48,   torso_2 = 0,
					decals_1 = 7,   decals_2 = 1,
					arms = 44,
					pants_1 = 34,   pants_2 = 0,
					shoes_1 = 27,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = 0,    chain_2 = 0,
					ears_1 = 2,     ears_2 = 0
				}
			}
		},
		[3] = {
			icon = 'fas fa-pills',
			clothing = {
				male = {
					tshirt_1 = 15,  tshirt_2 = 0,
					torso_1 = 456,   torso_2 = 3,
					arms = 11,
					pants_1 = 52,   pants_2 = 1,
					shoes_1 = 25,   shoes_2 = 0,
					bproof_1 = 8,  bproof_2 = 0,
					bags_1 = 114,  bags_2 = 0,
				},
				female = {
					tshirt_1 = 35,  tshirt_2 = 0,
					torso_1 = 48,   torso_2 = 0,
					decals_1 = 7,   decals_2 = 2,
					arms = 44,
					pants_1 = 34,   pants_2 = 0,
					shoes_1 = 27,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = 0,    chain_2 = 0,
					ears_1 = 2,     ears_2 = 0
				}
			}
		},
	},
}

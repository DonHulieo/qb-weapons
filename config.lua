Config = Config or {}

Config.ReloadTime = math.random(4000, 6000)

Config.JamChance = 1000 -- 1/1000 chance of jamming per bullet fired
--Set this to true if you use an inventory that uses item decay
Config.AttachmentDurability = false 

Config.DurabilityBlockedWeapons = {
    "weapon_stungun",
    "weapon_nightstick",
    "weapon_flashlight",
    "weapon_unarmed",
}

Config.DurabilityMultiplier = {
	-- Melee
	-- ['weapon_unarmed'] 			 = 0.15,
	['weapon_dagger'] 				 = 0.15,
	['weapon_bat'] 				 	 = 0.15,
	['weapon_bottle'] 				 = 0.15,
	['weapon_crowbar'] 				 = 0.15,
	-- ['weapon_flashlight'] 		 = 0.15,
	['weapon_golfclub'] 			 = 0.15,
	['weapon_hammer'] 				 = 0.15,
	['weapon_hatchet'] 				 = 0.15,
	['weapon_knuckle'] 				 = 0.15,
	['weapon_knife'] 				 = 0.15,
	['weapon_machete'] 				 = 0.15,
	['weapon_switchblade'] 			 = 0.15,
	-- ['weapon_nightstick'] 		 = 0.15,
	['weapon_wrench'] 				 = 0.15,
	['weapon_battleaxe'] 			 = 0.15,
	['weapon_poolcue'] 				 = 0.15,
	['weapon_briefcase'] 			 = 0.15,
	['weapon_briefcase_02'] 		 = 0.15,
	['weapon_garbagebag'] 			 = 0.15,
	['weapon_handcuffs'] 			 = 0.15,
	['weapon_bread'] 				 = 0.15,
	['weapon_stone_hatchet'] 		 = 0.15,

	-- Handguns
	['weapon_pistol'] 				 = 0.15,
	['weapon_pistol_mk2'] 			 = 0.15,
	['weapon_combatpistol'] 		 = 0.15,
	['weapon_appistol'] 			 = 0.15,
	-- ['weapon_stungun'] 			 = 0.15,
    -- ['weapon_stungun_mp'] 		 = 0.15,
	['weapon_pistol50'] 			 = 0.15,
	['weapon_snspistol'] 			 = 0.15,
	['weapon_heavypistol'] 			 = 0.15,
	['weapon_vintagepistol'] 		 = 0.15,
	['weapon_flaregun'] 			 = 0.15,
	['weapon_marksmanpistol'] 		 = 0.15,
	['weapon_revolver'] 			 = 0.15,
	['weapon_revolver_mk2'] 		 = 0.15,
	['weapon_doubleaction'] 		 = 0.15,
	['weapon_snspistol_mk2'] 		 = 0.15,
	['weapon_raypistol'] 			 = 0.15,
	['weapon_ceramicpistol'] 		 = 0.15,
	['weapon_navyrevolver'] 		 = 0.15,
	['weapon_gadgetpistol'] 		 = 0.15,

	-- Submachine Guns
	['weapon_microsmg'] 			 = 0.15,
	['weapon_smg'] 				     = 0.15,
	['weapon_smg_mk2'] 				 = 0.15,
	['weapon_assaultsmg'] 			 = 0.15,
	['weapon_combatpdw'] 			 = 0.15,
	['weapon_machinepistol'] 		 = 0.15,
	['weapon_minismg'] 				 = 0.15,
	['weapon_raycarbine'] 			 = 0.15,

	-- Shotguns
	['weapon_pumpshotgun'] 			= 0.15,
	['weapon_sawnoffshotgun'] 		= 0.15,
	['weapon_assaultshotgun'] 		= 0.15,
	['weapon_bullpupshotgun'] 		= 0.15,
	['weapon_musket'] 				= 0.15,
	['weapon_heavyshotgun'] 		= 0.15,
	['weapon_dbshotgun'] 			= 0.15,
	['weapon_autoshotgun'] 			= 0.15,
	['weapon_pumpshotgun_mk2'] 		= 0.15,
	['weapon_combatshotgun'] 		= 0.15,

	-- Assault Rifles
	['weapon_assaultrifle'] 		= 0.15,
	['weapon_assaultrifle_mk2'] 	= 0.15,
	['weapon_carbinerifle'] 		= 0.15,
	['weapon_carbinerifle_mk2'] 	= 0.15,
	['weapon_advancedrifle'] 		= 0.15,
	['weapon_specialcarbine'] 		= 0.15,
	['weapon_bullpuprifle'] 		= 0.15,
	['weapon_compactrifle'] 		= 0.15,
	['weapon_specialcarbine_mk2'] 	= 0.15,
	['weapon_bullpuprifle_mk2'] 	= 0.15,
	['weapon_militaryrifle'] 		= 0.15,
    ['weapon_heavyrifle']           = 0.15,

	-- Light Machine Guns
	['weapon_mg'] 				    = 0.15,
	['weapon_combatmg'] 			= 0.15,
	['weapon_gusenberg'] 			= 0.15,
	['weapon_combatmg_mk2'] 		= 0.15,

	-- Sniper Rifles
	['weapon_sniperrifle'] 			= 0.15,
	['weapon_heavysniper'] 			= 0.15,
	['weapon_marksmanrifle'] 		= 0.15,
	['weapon_remotesniper'] 		= 0.15,
	['weapon_heavysniper_mk2'] 		= 0.15,
	['weapon_marksmanrifle_mk2'] 	= 0.15,

	-- Heavy Weapons
	['weapon_rpg'] 				    = 0.15,
	['weapon_grenadelauncher'] 		= 0.15,
	['weapon_grenadelauncher_smoke']= 0.15,
    ['weapon_emplauncher']          = 0.15,
	['weapon_minigun'] 				= 0.15,
	['weapon_firework'] 			= 0.15,
	['weapon_railgun'] 				= 0.15,
	['weapon_hominglauncher'] 		= 0.15,
	['weapon_compactlauncher'] 		= 0.15,
	['weapon_rayminigun'] 			= 0.15,

	-- Throwables
	['weapon_grenade'] 				= 0.15,
	['weapon_bzgas'] 				= 0.15,
	['weapon_molotov'] 				= 0.15,
	['weapon_stickybomb'] 			= 0.15,
	['weapon_proxmine'] 			= 0.15,
	['weapon_snowball'] 			= 0.15,
	['weapon_pipebomb'] 			= 0.15,
	['weapon_ball'] 				= 0.15,
	['weapon_smokegrenade'] 		= 0.15,
	['weapon_flare'] 				= 0.15,

	-- Miscellaneous
	['weapon_petrolcan'] 			= 0.15,
	['weapon_fireextinguisher'] 	= 0.15,
	['weapon_hazardcan'] 			= 0.15,
    ['weapon_fertilizercan'] 		= 0.15,

    -- Custom Weapons
    ['weapon_ak47'] 		    	= 0.15,
    ['weapon_de'] 	                = 0.15,
    ['weapon_fnx45'] 		    	= 0.15,
    ['weapon_glock17'] 		        = 0.15,
    ['weapon_m4'] 			        = 0.15,
    ['weapon_hk416'] 		    	= 0.15,
    ['weapon_mk14'] 		    	= 0.15,
    ['weapon_m110'] 		    	= 0.15,
    ['weapon_huntingrifle']         = 0.20,
    ['weapon_ar15'] 		    	= 0.15,
    ['weapon_m9'] 	                = 0.15,
    ['weapon_m70'] 		    	    = 0.15,
    ['weapon_m1911'] 		        = 0.15,
    ['weapon_mac10'] 		    	= 0.15,
    ['weapon_uzi'] 	                = 0.15,
    ['weapon_mp9'] 	                = 0.15,
    ['weapon_mossberg'] 		    = 0.15,
    ['weapon_remington'] 		    = 0.15,
    ['weapon_scarh'] 		    	= 0.15,
    ['weapon_shiv'] 	            = 0.15,
    ['weapon_katana'] 	            = 0.15,
    ['weapon_sledgehammer'] 	    = 0.15,

    -- Attachments
    ['pistol_defaultclip']          = 0.15,
    ['pistol_extendedclip']         = 0.15,
    ['pistol_flashlight']           = 0.15,
    ['pistol_suppressor']           = 0.15,
    ['pistol_luxuryfinish']         = 0.15,
    ['combatpistol_defaultclip']    = 0.15,
    ['combatpistol_extendedclip']   = 0.15,
    ['combatpistol_luxuryfinish']   = 0.15,
    ['appistol_defaultclip']        = 0.15,
    ['appistol_extendedclip']       = 0.15,
    ['appistol_luxuryfinish']       = 0.15,
    ['pistol50_defaultclip']        = 0.15,
    ['pistol50_extendedclip']       = 0.15,
    ['pistol50_luxuryfinish']       = 0.15,
    ['revolver_defaultclip']        = 0.15,
    ['revolver_vipvariant']         = 0.15,
    ['revolver_bodyguardvariant']   = 0.15,
    ['snspistol_defaultclip']       = 0.15,
    ['snspistol_extendedclip']      = 0.15,
    ['snspistol_grip']              = 0.15,
    ['heavypistol_defaultclip']     = 0.15,
    ['heavypistol_extendedclip']    = 0.15,
    ['heavypistol_grip']            = 0.15,
    ['vintagepistol_defaultclip']   = 0.15,
    ['vintagepistol_extendedclip']  = 0.15,

    ['microsmg_defaultclip']        = 0.15,
    ['microsmg_extendedclip']       = 0.15,
    ['microsmg_scope']              = 0.15,
    ['microsmg_luxuryfinish']       = 0.15,
    ['smg_defaultclip']             = 0.15,
    ['smg_extendedclip']            = 0.15,
    ['smg_suppressor']              = 0.15,
    ['smg_drum']                    = 0.15,
    ['smg_scope']                   = 0.15,
    ['smg_luxuryfinish']            = 0.15,
    ['assaultsmg_defaultclip']      = 0.15,
    ['assaultsmg_extendedclip']     = 0.15,
    ['assaultsmg_luxuryfinish']     = 0.15,
    ['minismg_defaultclip']         = 0.15,
    ['minismg_extendedclip']        = 0.15,
    ['machinepistol_defaultclip']   = 0.15,
    ['machinepistol_extendedclip']  = 0.15,
    ['machinepistol_drum']          = 0.15,
    ['combatpdw_defaultclip']       = 0.15,
    ['combatpdw_extendedclip']      = 0.15,
    ['combatpdw_drum']              = 0.15,
    ['combatpdw_grip']              = 0.15,
    ['combatpdw_scope']             = 0.15,

    ['shotgun_suppressor']          = 0.15,
    ['pumpshotgun_luxuryfinish']    = 0.15,
    ['sawnoffshotgun_luxuryfinish'] = 0.15,
    ['assaultshotgun_defaultclip']  = 0.15,
    ['assaultshotgun_extendedclip'] = 0.15,
    ['heavyshotgun_defaultclip']    = 0.15,
    ['heavyshotgun_extendedclip']   = 0.15,
    ['heavyshotgun_drum']           = 0.15,

    ['assaultrifle_defaultclip']    = 0.15,
    ['assaultrifle_extendedclip']   = 0.15,
    ['assaultrifle_drum']           = 0.15,
    ['rifle_flashlight']            = 0.15,
    ['rifle_grip']                  = 0.15,
    ['rifle_suppressor']            = 0.15,
    ['assaultrifle_luxuryfinish']   = 0.15,
    ['carbinerifle_defaultclip']    = 0.15,
    ['carbinerifle_extendedclip']   = 0.15,
    ['carbinerifle_drum']           = 0.15,
    ['carbinerifle_scope']          = 0.15,
    ['carbinerifle_luxuryfinish']   = 0.15,
    ['advancedrifle_defaultclip']   = 0.15,
    ['advancedrifle_extendedclip']  = 0.15,
    ['advancedrifle_luxuryfinish']  = 0.15,
    ['specialcarbine_defaultclip']  = 0.15,
    ['specialcarbine_extendedclip'] = 0.15,
    ['specialcarbine_drum']         = 0.15,
    ['specialcarbine_luxuryfinish'] = 0.15,
    ['bullpuprifle_defaultclip']    = 0.15,
    ['bullpuprifle_extendedclip']   = 0.15,
    ['bullpuprifle_luxuryfinish']   = 0.15,
    ['compactrifle_defaultclip']    = 0.15,
    ['compactrifle_extendedclip']   = 0.15,
    ['compactrifle_drum']           = 0.15,
    ['gusenberg_defaultclip']       = 0.15,
    ['gusenberg_extendedclip']      = 0.15,

    ['sniperrifle_defaultclip']     = 0.15,
    ['sniper_scope']                = 0.15,
    ['snipermax_scope']             = 0.15,
    ['sniper_grip']                 = 0.15,
    ['heavysniper_defaultclip']     = 0.15,
    ['marksmanrifle_defaultclip']   = 0.15,
    ['marksmanrifle_extendedclip']  = 0.15,
    ['marksmanrifle_scope']         = 0.15,
    ['marksmanrifle_luxuryfinish']  = 0.15,
}

-- Weapons Damage; modifier = 1.0 is default. Go below 1.0 and the damage will be reduced, go above 1.0 and damage will become higher.
-- Set disableCriticalHits to true to disable. Set it to false to enable.

Config.WeaponsDamage = {
    [`WEAPON_UNARMED`] = {model = `WEAPON_UNARMED`, modifier = 0.2, disableCriticalHits = true},
    [`WEAPON_NIGHTSTICK`] = {model = `WEAPON_NIGHTSTICK`, modifier = 0.1, disableCriticalHitsHits = true},
    [`WEAPON_FLASHLIGHT`] = {model = `WEAPON_NIGHTSTICK`, modifier = 0.1, disableCriticalHits = true},

    [`WEAPON_KNIFE`] = {model = `WEAPON_KNIFE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_KNUCKLE`] = {model = `WEAPON_KNUCKLE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_NIGHTSTICK`] = {model = `WEAPON_NIGHTSTICK`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_HAMMER`] = {model = `WEAPON_HAMMER`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_BAT`] = {model = `WEAPON_BAT`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_GOLFCLUB`] = {model = `WEAPON_GOLFCLUB`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_CROWBAR`] = {model = `WEAPON_CROWBAR`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_BOTTLE`] = {model = `WEAPON_BOTTLE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_DAGGER`] = {model = `WEAPON_DAGGER`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_HATCHET`] = {model = `WEAPON_HATCHET`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MACHETE`] = {model = `WEAPON_MACHETE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_SWITCHBLADE`] = {model = `WEAPON_SWITCHBLADE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_PROXMINE`] = {model = `WEAPON_PROXMINE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_BZGAS`] = {model = `WEAPON_BZGAS`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_SMOKEGRENADE`] = {model = `WEAPON_SMOKEGRENADE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MOLOTOV`] = {model = `WEAPON_MOLOTOV`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_REVOLVER`] = {model = `WEAPON_REVOLVER`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_POOLCUE`] = {model = `WEAPON_POOLCUE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_PIPEWRENCH`] = {model = `WEAPON_PIPEWRENCH`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_PISTOL`] = {model = `WEAPON_PISTOL`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_PISTOL_MK2`] = {model = `WEAPON_PISTOL_MK2`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_COMBATPISTOL`] = {model = `WEAPON_COMBATPISTOL`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_APPISTOL`] = {model = `WEAPON_APPISTOL`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_PISTOL50`] = {model = `WEAPON_PISTOL50`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_SNSPISTOL`] = {model = `WEAPON_SNSPISTOL`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_HEAVYPISTOL`] = {model = `WEAPON_HEAVYPISTOL`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_VINTAGEPISTOL`] = {model = `WEAPON_VINTAGEPISTOL`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_FLAREGUN`] = {model = `WEAPON_FLAREGUN`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MARKSMANPISTOL`] = {model = `WEAPON_MARKSMANPISTOL`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MICROSMG`] = {model = `WEAPON_MICROSMG`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MINISMG`] = {model = `WEAPON_MINISMG`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_SMG`] = {model = `WEAPON_SMG`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_SMG_MK2`] = {model = `WEAPON_SMG_MK2`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_ASSAULTSMG`] = {model = `WEAPON_ASSAULTSMG`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MG`] = {model = `WEAPON_MG`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_COMBATMG`] = {model = `WEAPON_COMBATMG`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_COMBATMG_MK2`] = {model = `WEAPON_COMBATMG_MK2`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_COMBATPDW`] = {model = `WEAPON_COMBATPDW`, modifier = 0.1, disableCriticalHits = true},
}

Config.RepairPoints = {
    [1] = {
        coords = vector4(11.17, -1098.84, 29.8, 156.87),
        type = "public", --public, job, gang, private
        --jobs = { ["police"] = 0 },
        --gangs = { ["ammu"] = 0, ["rrmc"] = 0 }, 
        --citizenids = {["JFD98238"] = true, ["HJS29340"] = true},
        repairCosts = {
            ["pistol"] = {cost = 2000, time = math.random(1,5)},
            ["smg"] = {cost = 4000, time = math.random(1,5)},
            ["mg"] = {cost = 6000, time = math.random(1,5)},
            ["shotgun"] = {cost = 6000, time = math.random(1,5)},
            ["rifle"] = {cost = 5000, time = math.random(1,5)},
            ["sniper"] = {cost = 7000, time = math.random(1,5)},
        },
        tableTimeout = false, -- Set to false if you don't want to use the table timeout. Time is in minutes
        IsRepairing = false,
        RepairingData = {},
        debug = false
    },
    [2] = {
        coords = vector4(14.13, -1099.94, 29.8, 160.38),
        type = "public", --public, job, gang, private
        --jobs = { ["police"] = 0 },
        --gangs = { ["ammu"] = 0, ["rrmc"] = 0 }, 
        --citizenids = {["JFD98238"] = true, ["HJS29340"] = true},
        repairCosts = {
            ["pistol"] = {cost = 2000, time = math.random(1,5)},
            ["smg"] = {cost = 4000, time = math.random(1,5)},
            ["mg"] = {cost = 6000, time = math.random(1,5)},
            ["shotgun"] = {cost = 6000, time = math.random(1,5)},
            ["rifle"] = {cost = 5000, time = math.random(1,5)},
            ["sniper"] = {cost = 7000, time = math.random(1,5)},
        },
        tableTimeout = 10, -- Set to false if you don't want to use the table timeout. Time is in minutes
        IsRepairing = false,
        RepairingData = {},
        debug = false
    },
    [3] = {
        coords = vector4(17.15, -1101.04, 29.8, 159.48),
        type = "public", --public, job, gang, private
        --jobs = { ["police"] = 0 },
        --gangs = { ["ammu"] = 0, ["rrmc"] = 0 }, 
        --citizenids = {["JFD98238"] = true, ["HJS29340"] = true},
        repairCosts = {
            ["pistol"] = {cost = 2000, time = math.random(1,3)},
            ["smg"] = {cost = 4000, time = math.random(1,3)},
            ["mg"] = {cost = 6000, time = math.random(1,3)},
            ["shotgun"] = {cost = 6000, time = math.random(1,3)},
            ["rifle"] = {cost = 5000, time = math.random(1,3)},
            ["sniper"] = {cost = 7000, time = math.random(1,3)},
        },
        tableTimeout = 10, -- Set to false if you don't want to use the table timeout. Time is in minutes
        IsRepairing = false,
        RepairingData = {},
        debug = false
    },
}

WeaponAttachments = {
    -- PISTOLS
    ['WEAPON_PISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL_VARMOD_LUXE',
            item = 'pistol_luxuryfinish',
        },
    },
    ['WEAPON_M9'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M9_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_M9_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_M1911'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_DE'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_FNX45'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_MP9'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MP9_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MP9_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
    },
    ['WEAPON_UZI'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_MAC10'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_AK47'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_AK47_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_AK47_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
    },
    ['WEAPON_M70'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M70_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
    },
    ['WEAPON_M110'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M110_CLIP_01',
            item = 'marksmanrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_M110_CLIP_02',
            item = 'marksmanrifle_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    ['WEAPON_HK416'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HK416_CLIP_01',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HK416_CLIP_02',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },

    ['WEAPON_COMBATPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_01',
            item = 'combatpistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_02',
            item = 'combatpistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER',
            item = 'combatpistol_luxuryfinish',
        },
    },
    ['WEAPON_APPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_01',
            item = 'appistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_02',
            item = 'appistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_APPISTOL_VARMOD_LUXE',
            item = 'appistol_luxuryfinish',
        },
    },
    ['WEAPON_PISTOL50'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_01',
            item = 'pistol50_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_02',
            item = 'pistol50_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL50_VARMOD_LUXE',
            item = 'pistol50_luxuryfinish',
        },
    },
    ['WEAPON_REVOLVER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_REVOLVER_CLIP_01',
            item = 'revolver_defaultclip',
        },
        ['vipvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_GOON',
            item = 'revolver_vipvariant',
            type = 'skin',
        },
        ['bodyguardvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_BOSS',
            item = 'revolver_bodyguardvariant',
            type = 'skin',
        },
    },
    ['WEAPON_SNSPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_01',
            item = 'snspistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_02',
            item = 'snspistol_extendedclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'COMPONENT_SNSPISTOL_VARMOD_LOWRIDER',
            item = 'snspistol_grip',
        },
    },
    ['WEAPON_HEAVYPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_01',
            item = 'heavypistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_02',
            item = 'heavypistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_HEAVYPISTOL_VARMOD_LUXE',
            item = 'heavypistol_grip',
        },
    },
    ['WEAPON_VINTAGEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_01',
            item = 'vintagepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_02',
            item = 'vintagepistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
            type = 'silencer',
        },
    },
    -- SMG'S
    ['WEAPON_MICROSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MICROSMG_VARMOD_LUXE',
            item = 'microsmg_luxuryfinish',
        },
    },
    ['WEAPON_SMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SMG_CLIP_01',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SMG_CLIP_02',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SMG_CLIP_03',
            item = 'smg_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO_02',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SMG_VARMOD_LUXE',
            item = 'smg_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_01',
            item = 'assaultsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_02',
            item = 'assaultsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER',
            item = 'assaultsmg_luxuryfinish',
        },
    },
    ['WEAPON_MINISMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_01',
            item = 'minismg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_02',
            item = 'minismg_extendedclip',
            type = 'clip',
        },
    },
    ['WEAPON_MACHINEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_01',
            item = 'machinepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_02',
            item = 'machinepistol_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_03',
            item = 'machinepistol_drum',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_COMBATPDW'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_01',
            item = 'combatpdw_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_02',
            item = 'combatpdw_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_03',
            item = 'combatpdw_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'combatpdw_grip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
    },
    -- SHOTGUNS
    ['WEAPON_PUMPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_SR_SUPP',
            item = 'shotgun_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER',
            item = 'pumpshotgun_luxuryfinish',
        },
    },
    ['WEAPON_SAWNOFFSHOTGUN'] = {
        ['luxuryfinish'] = {
            component = 'COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE',
            item = 'sawnoffshotgun_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_01',
            item = 'assaultshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_02',
            item = 'assaultshotgun_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_BULLPUPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_HEAVYSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_01',
            item = 'heavyshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_02',
            item = 'heavyshotgun_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_03',
            item = 'heavyshotgun_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_COMBATSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    -- RIFLES
    ['WEAPON_ASSAULTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_03',
            item = 'assaultrifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTRIFLE_VARMOD_LUXE',
            item = 'assaultrifle_luxuryfinish',
        },
    },
    ['WEAPON_CARBINERIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_01',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_02',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_03',
            item = 'carbinerifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_CARBINERIFLE_VARMOD_LUXE',
            item = 'carbinerifle_luxuryfinish',
        },
    },
    ['WEAPON_ADVANCEDRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_01',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_02',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE',
            item = 'advancedrifle_luxuryfinish',
        },
    },
    ['WEAPON_SPECIALCARBINE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_01',
            item = 'specialcarbine_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_02',
            item = 'specialcarbine_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_03',
            item = 'specialcarbine_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER',
            item = 'specialcarbine_luxuryfinish',
        },
    },
    ['WEAPON_BULLPUPRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    ['WEAPON_COMPACTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_01',
            item = 'compactrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_02',
            item = 'compactrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_03',
            item = 'compactrifle_drum',
            type = 'clip',
        },
    },
    ['WEAPON_HEAVYRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    -- MACHINE GUNS
    ['WEAPON_GUSENBERG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_01',
            item = 'gusenberg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_02',
            item = 'gusenberg_extendedclip',
            type = 'clip',
        },
    },
    -- LAUNCHERS
    ['WEAPON_EMPLAUNCHER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_EMPLAUNCHER_CLIP_01',
            item = 'emplauncher_defaultclip',
            type = 'clip',
        },
    },
    -- SNIPERS
    ['WEAPON_SNIPERRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNIPERRIFLE_CLIP_01',
            item = 'sniperrifle_defaultclip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
        ['grip'] = {
            component = 'COMPONENT_SNIPERRIFLE_VARMOD_LUXE',
            item = 'sniper_grip',
        },
    },
    ['WEAPON_HEAVYSNIPER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSNIPER_CLIP_01',
            item = 'heavysniper_defaultclip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
    },
    ['WEAPON_MARKSMANRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_01',
            item = 'marksmanrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_02',
            item = 'marksmanrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM',
            item = 'marksmanrifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MARKSMANRIFLE_VARMOD_LUXE',
            item = 'marksmanrifle_luxuryfinish',
        },
    },
}

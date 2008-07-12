AfflictedSpells = { 
	--[[ DRUIDS ]]--
	-- Innervate
	[29166] = {
		disabled = true,
		seconds = 20,
		cooldown = 360,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Feral Charge
	[16979] = {
		dontFade = true,
		seconds = 15,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Bash
	[5211] = 8983,
	[6798] = 8983,
	[8983] = {
		disabled = true,
		dontFade = true,
		seconds = 60,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Maim
	[22570] = {
		dontFade = true,
		seconds = 10,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	--[[ ROGUES ]]--
	-- Kick
	[1766] = 38768,
	[1767] = 38768,
	[1768] = 38768,
	[1769] = 38768,
	[38768] = {
		seconds = 10,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Cheat Death
	[45182] = {
		disabled = true,
		seconds = 3,
		cooldown = 60,
		showIn = "buffs",
		SPELL_AURA_APPLIEDBUFFENEMY = true,
	},

	-- Shadowstep
	[36554] = {
		seconds = 3,
		cdEnabled = true,
		cooldown = 30,
		resetOn = 14185,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Cloak of Shadows
	[31224] = {
		seconds = 5,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Sprint
	[2983] = 11305,
	[8696] = 11305,
	[11305] = {
		disabled = true,
		seconds = 15,
		cooldown = 210,
		resetOn = 14185,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Preparation
	[14185] = {
		disabled = true,
		dontFade = true,
		seconds = 600,
		showIn = "cooldowns",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Blind
	[2094] = {
		cooldown = 90,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Kidney Shot
	[408] = 8643,
	[8643] = {
		disabled = true,
		dontFade = true,
		seconds = 20,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Evasion
	[5277] = 26669,
	[26669] = {
		disabled = true,
		seconds = 15,
		cooldown = 210,
		resetOn = 14185,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	-- Vanish
	[1856] = 26889,
	[1857] = 26889,
	[26889] = {
		disabled = true,
		seconds = 10,
		cooldown = 210,
		resetOn = 14185,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Blade Flurry
	[13877] = {
		disabled = true,
		seconds = 15,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Adrenaline Rush
	[13750] = {
		disabled = true,
		seconds = 15,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	--[[ PALADINS ]]--
	-- Repentance
	[20066] = {
		disabled = true,
		dontFade = true,
		seconds = 60,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Hammer of Justice
	[853] = 10308,
	[5588] = 10308,
	[5589] = 10308,
	[10308] = {
		disabled = true,
		dontFade = true,
		seconds = 45,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Divine Shield
	[642] = 1020,
	[1020] = {
		seconds = 12,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Blessing of Protection
	[1022] = 10278,
	[5599] = 10278,
	[10278] = {
		seconds = 10,
		cooldown = 180,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Blessing of Freedom
	[1044] = {
		seconds = 14,
		cooldown = 25,
		cdEnabled = true,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Blessing of Sacrifice
	[6940] = 27148,
	[20729] = 27148,
	[27147] = 27148,
	[27148] = {
		seconds = 30,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	--[[ HUNTERS ]]--
	-- Viper sting
	[3034] = 27018,
	[14279] = 27018,
	[14280] = 27018,
	[27018] = {
		dontFade = true,
		seconds = 15,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Scare Beast
	[1513] = 14327,
	[14326] = 14327,
	[14327] = {
		dontFade = true,
		disabled = true,
		seconds = 30,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Scatter Shot
	[19503] = {
		dontFade = true,
		seconds = 30,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Bestial Wrath
	[19574] = {
		seconds = 18,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	
	-- Silencing Shot
	[34490] = {
		dontFade = true,
		seconds = 20,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Explosive Trap
	[13813] = 34600,
	[14316] = 34600,
	[14317] = 34600,
	[27025] = 34600,
	
	-- Freezing Trap
	[1499] = 34600,
	[14310] = 34600,
	[14311] = 34600,
	
	-- Frost Trap
	[13809] = 34600,
	
	-- Immolation Trap
	[13795] = 34600,
	[14302] = 34600,
	[14303] = 34600,
	[14304] = 34600,
	[14305] = 34600,
	[27023] = 34600,
	
	-- Snake Trap
	[34600] = {
		disabled = true,
		text = "Traps",
		resetOn = 23989,
		seconds = 60,
		cooldown = 30,
		dontFade = true,
		showIn = "spells",
		icon = "Interface\\Icons\\Spell_Frost_ChainsOfIce",
		SPELL_CREATE = true,
	},
	
	--[[ PRIESTS ]]--
	-- Shadow Word: Death
	[32379] = 32996,
	[32996] = {
		disabled = true,
		dontFade = true,
		seconds = 12,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Fear Ward
	[6346] = {
		disabled = true,
		dontFade = true,
		seconds = 180,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
		
	-- Psychic Scream
	[8122] = 10890,
	[8124] = 10890,
	[10888] = 10890,
	[10890] = {
		disabled = true,
		seconds = 23,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Power Infusion
	[10060] = {
		seconds = 15,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	

	-- Pain Suppression
	[33206] = {
		seconds = 8,
		cdEnabled = true,
		cooldown = 120,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
			
	-- Silence
	[15487] = {
		seconds = 45,
		dontFade = true,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
		
	--[[ WARRIORS ]]--
	-- Berserker Rage
	[18499] = {
		disabled = true,
		seconds = 10,
		cooldown = 30,
		cdEnabled = true,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Death Wish
	[12292] = {
		disabled = true,
		seconds = 30,
		cooldown = 180,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Pummel
	[6552] = 6554,
	[6554] = {
		seconds = 10,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Shield Bash
	[72] = 29704,
	[1671] = 29704,
	[1672] = 29704,
	[29704] = {
		seconds = 12,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Intercept
	[20252] = 25275,
	[20616] = 25275,
	[20617] = 25275,
	[25272] = 25275,
	[25275] = {
		seconds = 15,
		dontFade = true,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Spell Reflection
	[23920] = {
		disabled = true,
		seconds = 5,
		cooldown = 10,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Disarm
	[676] = {
		disabled = true,
		seconds = 10,
		cooldown = 60,
		cdEnabled = true,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Intervene
	[3411] = {
		dontFade = true,
		disabled = true,
		seconds = 30,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Intimidating Shout
	[5246] = {
		disabled = true,
		seconds = 180,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	--[[ WARLOCKS ]]--
	-- Spell lock
	[19244] = 19647,
	[19647] = {
		dontFade = true,
		seconds = 24,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Sacrifice (Void Walker)
	[7812] = 27273,
	[19438] = 27273,
	[19440] = 27273,
	[19441] = 27273,
	[19442] = 27273,
	[19443] = 27273,
	[27273] = {
		disabled = true,
		seconds = 30,
		showIn = "buffs",
		SPELL_AURA_APPLIEDBUFFENEMY = true,
	},
	
	-- Fel Domination
	[18708] = {
		disabled = true,
		seconds = 15,
		cooldown = 900,
		showIn = "buffs",
		SPELL_AURA_APPLIEDBUFFENEMY = true,
	},
	
	-- Devour Magic
	[19505] = 27277,
	[19731] = 27277,
	[19734] = 27277,
	[19736] = 27277,
	[27276] = 27277,
	[27277] = {
		disabled = true,
		dontFade = true,
		seconds = 8,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	--[[ SHAMANS ]]--
	-- Heroism
	[32182] = {
		disabled = true,
		dontFade = true,
		seconds = 40,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Bloodlust
	[2825] = {
		disabled = true,
		dontFade = true,
		seconds = 40,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Grounding Totem
	[8177] = {
		disabled = true,
		seconds = 45,
		cooldown = 15,
		showIn = "totems",
		SPELL_SUMMON = true,
	},
	
	-- Tremor Totem
	[8143] = {
		disabled = true,
		repeating = true,
		seconds = 3,
		showIn = "totems",
		SPELL_SUMMON = true,
	},
	
	-- Mana Tide Totem
	[16190] = {
		disabled = true,
		seconds = 12,
		showIn = "totems",
		SPELL_SUMMON = true,
	},
	
	-- Flame shock
	[8050] = 25454,
	[8052] = 25454,
	[8053] = 25454,
	[10447] = 25454,
	[10448] = 25454,
	[10448] = 25454,
	[25457] = 25454,
	[29228] = 25454,
	
	-- Frost shock
	[8056] = 25454,
	[8058] = 25454,
	[10472] = 25454,
	[10473] = 25454,
	[25464] = 25454,
	
	-- Earth shock
	[8042] = 25454,
	[8044] = 25454,
	[8045] = 25454,
	[10412] = 25454,
	[10413] = 25454,
	[10414] = 25454,
	[25454] = {
		text = "Earth Shock",
		seconds = 5,
		dontFade = true,
		showIn = "spells",
		icon = "Interface\\Icons\\Spell_Nature_EarthShock",
		SPELL_CAST_SUCCESS = true,
	},
	
	--[[ MAGES ]]--
	-- Counterspell
	[2139] = {
		dontFade = true,
		seconds = 24,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Ice Block
	[45438] = {
		seconds = 10,
		cooldown = 240,
		resetOn = 11958,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Cold Snap
	[11958] = {
		disabled = true,
		dontFade = true,
		seconds = 480,
		showIn = "cooldowns",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Hypothermia
	[41425] = {
		disabled = true,
		seconds = 30,
		showIn = "buffs",
		SPELL_AURA_APPLIEDDEBUFFENEMY = true,
	},
	
	-- Water Elemental
	[31687] = {
		disabled = true,
		seconds = 45,
		resetOn = 11958,
		showIn = "cooldowns",
		SPELL_SUMMON = true,
	},

	-- Freeze (Water Elemental)
	[33395] = {
		disabled = true,
		seconds = 25,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Blink
	[1953] = {
		seconds = 15,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Frost Nova
	[122] = 27088,
	[865] = 27088,
	[6131] = 27088,
	[10230] = 27088,
	[27088] = {
		disabled = true,
		cooldown = 21,
		resetOn = 11958,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},

	-- Icy Veins
	[12472] = {
		seconds = 20,
		resetOn = 11958,
		cooldown = 180,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	
	--[[ RACIALS ]]--
	-- Perception
	[20600] = {
		disabled = true,
		seconds = 20,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Escape Artist
	[20589] = {
		disabled = true,
		seconds = 105,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	--[[ TRINKETS ]]--
	-- Tremendous Fortitude
	[44055] = {
		seconds = 15,
		cooldown = 180,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Berserker's Call
	[43716] = {
		disabled = true,
		seconds = 20,
		cooldown = 120,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},

	-- Bloodlust Brooch
	[35166] = {
		disabled = true,
		seconds = 20,
		cooldown = 120,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- The Skull of Gul'dan
	[40396] = {
		disabled = true,
		seconds = 20,
		cooldown = 120,
		showIn = "buffs",
		SPELL_CAST_SUCCESS = true,
	},
	
	--[[ ENGINEERING BULLSHIT ]]--
	-- Rocket Boots
	[30452] = {
		disabled = true,
		seconds = 3,
		cooldown = 300,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
	
	-- Nigh Invulnerability Belt
	[30458] = {
		disabled = true,
		seconds = 8,
		cooldown = 300,
		showIn = "spells",
		SPELL_CAST_SUCCESS = true,
	},
}
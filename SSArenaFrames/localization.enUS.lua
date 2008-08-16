SSAFLocals = {
	["SSArena Frames"] = "SSArena Frames",
	
	["The Arena battle has begun!"] = "The Arena battle has begun!",
	
	["%s's pet, %s %s"] = "%s's pet, %s %s",
	["%s's pet, %s"] = "%s's pet, %s",

	["%s's %s"] = "%s's %s",
	["(.+)%'s Minion"] = "(.+)%'s Minion",
	["(.+)%'s Pet"] = "(.+)%'s Pet",
	
	["Pet"] = "Pet",
	["Minion"] = "Minion",

	["Water Elemental"] = "Water Elemental",
	
	["Arena Preparation"] = "Arena Preparation",
	["ALT + Drag to move the frame anchor."] = "ALT + Drag to move the frame anchor.",

	-- For syncing and display and such
	["CLASSES"] = {
		["MAGE"] = "Mage",
		["WARRIOR"] = "Warrior",
		["SHAMAN"] = "Shaman",
		["PALADIN"] = "Paladin",
		["PRIEST"] = "Priest",
		["DRUID"] = "Druid",
		["ROGUE"] = "Rogue",
		["HUNTER"] = "Hunter",
		["WARLOCK"] = "Warlock",
	},
		
	-- GUI
	["All"] = "All",
	["CTRL"] = "CTRL",
	["SHIFT"] = "SHIFT",
	["ALT"] = "ALT",
	
	["Any button"] = "Any button",
	["Left button"] = "Left button",
	["Right button"] = "Right button",
	["Middle button"] = "Middle button",
	["Button 4"] = "Button 4",
	["Button 5"] = "Button 5",
	
	["General"] = "General",
	["Action #%d"] = "Action #%d",
	
	-- Color
	["Color"] = "Color",
	
	["Minion bar color"] = "Minion bar color",
	["Pet bar color"] = "Pet bar color",
	["Text color"] = "Text color",
	
	-- Mana
	["Mana"] = "Mana",

	["Power bar height"] = "Power bar heght",
	["Show power bars"] = "Show power bars",
	
	-- Display
	["Display"] = "Display",

	["Show target icons"] = "Show target icons",
	["Adds mini icons to the right of the arena frames with the class of the person targeting an enemy."] = "Adds mini icons to the right of the arena frames with the class of the person targeting an enemy.",

	["Show class icon"] = "Show class icon",
	["Adds the class icon, or the pet icon to the left of the frame row."] = "Adds the class icon, or the pet icon to the left of the frame row.",

	["Show row number"] = "Show row number",
	["Adds the row number to the left of the name, this can be used as a quick way of identifying people rather then full name."] = "Adds the row number to the left of the name, this can be used as a quick way of identifying people rather then full name.",	
	
	-- Frame
	["Frame"] = "Frame",
	
	["Bar texture"] = "Bar texture",
	
	["Scale"] = "Scale",
	
	["Lock frames"] = "Lock frames",
	["Prevents the arena frame from being moved."] = "Prevents the arena frame from being moved.",
	
	-- General
	["Show talent guess"] = "Show talent guess",
	["Shows the enemies talents using the spells that they use, this is not completely accurate but for most specializations it'll be fairly close."] = "Shows the enemies talents using the spells that they use, this is not completely accurate but for most specializations it'll be fairly close.",

	["Report enemies to battleground chat"] = "Report enemies to battleground chat",
	["Sends information on the enemy when you notice them for the first time in the match."] = "Sends information on the enemy when you notice them for the first time in the match.",

	["Show minions"] = "Show minions",
	["Shows summoned minions in the arena frame."] = "Shows summoned minions in the arena frame.",

	["Show pets"] = "Show pets",
	["Shows tamed pets in the arena frames."] = "Shows tamed pets in the arena frames.",
	
	-- Click Actions
	["Click Actions"] = "Click Actions",
	
	["Enable this action"] = "Enable this action",
	["Sets this specific modifier/key combo to be ran."] = "Sets this specific modifier/key combo to be ran.",
	
	["Action name"] = "Action name",
	["Lets you give a specific name to this click action so it's easier to identify it in the configuration."] = "Lets you give a specific name to this click action so it's easier to identify it in the configuration.",
	
	["Modifier key"] = "Modifier key",
	["Mouse button"] = "Mouse button",
	
	["Enable for class"] = "Enable for class",
	["Allows you to set which classes this click action should be enabled for."] = "Allows you to set which classes this click action should be enabled for.",
	
	["Macro text"] = "Macro text",
	["Macro script to run when the specific modifier key and mouse button combination are used."] = "Macro script to run when the specific modifier key and mouse button combination are used.",
}

-- Add DKs if it's WoTLK
if( select(4, GetBuildInfo()) >= 30000 ) then
	SSAFLocals["CLASSES"]["DEATHKNIGHT"] = "Death Knight"
end

BINDING_HEADER_SSAF = "SSArena Frames"
BINDING_NAME_ARENATAR1 = "Target enemy #1"
BINDING_NAME_ARENATAR2 = "Target enemy #2"
BINDING_NAME_ARENATAR3 = "Target enemy #3"
BINDING_NAME_ARENATAR4 = "Target enemy #4"
BINDING_NAME_ARENATAR5 = "Target enemy #5"
BINDING_NAME_ARENATAR6 = "Target enemy #6"
BINDING_NAME_ARENATAR7 = "Target enemy #7"
BINDING_NAME_ARENATAR8 = "Target enemy #8"
BINDING_NAME_ARENATAR9 = "Target enemy #9"
BINDING_NAME_ARENATAR10 = "Target enemy #10"
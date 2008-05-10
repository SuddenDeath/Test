if( not Afflicted ) then return end

local Bars = Afflicted:NewModule("Bars", "AceEvent-3.0")
local methods = {"CreateDisplay", "ClearTimers", "CreateTimer", "RemoveTimer", "ReloadVisual", "UnitDied", "TimerExists"}
local SML, GTBLib
local barData = {}

function Bars:OnInitialize()
	SML = Afflicted.SML
	GTBLib = LibStub:GetLibrary("GTB-Beta1")
	self.GTB = GTBLib

	self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

-- We delay this until PEW to fix UIScale issues
function Bars:PLAYER_ENTERING_WORLD()
	for key, data in pairs(Afflicted.db.profile.anchors) do
		local frame = Bars[key]
		if( frame ) then
			frame:Show()
		end
	end
	
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")
end

-- Dragging functions
local function OnDragStart(self)
	if( IsAltKeyDown() ) then
		self.isMoving = true
		self:StartMoving()
	end
end

local function OnDragStop(self)
	if( self.isMoving ) then
		self.isMoving = nil
		self:StopMovingOrSizing()
		
		local anchor = Afflicted.db.profile.anchors[self.type]
		if( not anchor.position ) then
			anchor.position = { x = 0, y = 0 }
		end
		
		local scale = self:GetEffectiveScale()
		anchor.position.x = self:GetLeft() * scale
		anchor.position.y = self:GetTop() * scale
	end
end

local function OnShow(self)
	local position = Afflicted.db.profile.anchors[self.type].position
	if( position ) then
		local scale = self:GetEffectiveScale()
		self:ClearAllPoints()
		self:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", position.x / scale, position.y / scale)
	else
		self:ClearAllPoints()
		self:SetPoint("CENTER", UIParent, "CENTER")
	end
end

local function showTooltip(self)
	GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
	GameTooltip:SetText(AfflictedLocals["ALT + Drag to move the frame anchor."], nil, nil, nil, nil, 1)
end

local function hideTooltip(self)
	GameTooltip:Hide()
end

-- PUBLIC METHODS
-- Create our main display frame
local backdrop = {bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\ChatFrame\\ChatFrameBackground", edgeSize = 0.80,
		insets = {left = 1, right = 1, top = 1, bottom = 1}}

function Bars:CreateDisplay(type)
	local anchorData = Afflicted.db.profile.anchors[type]
	local frame = CreateFrame("Frame", nil, UIParent)
	frame.type = type

	frame:SetWidth(Afflicted.db.profile.barWidth)
	frame:SetHeight(12)
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScale(anchorData.scale)
	frame:SetBackdrop(backdrop)
	frame:SetBackdropColor(0, 0, 0, 1.0)
	frame:SetBackdropBorderColor(0.75, 0.75, 0.75, 1.0)
	frame:SetScript("OnDragStart", OnDragStart)
	frame:SetScript("OnDragStop", OnDragStop)
	frame:SetScript("OnShow", OnShow)
	frame:SetScript("OnEnter", showTooltip)
	frame:SetScript("OnLeave", hideTooltip)
	frame:Hide()

	-- Display name
	frame.text = frame:CreateFontString(nil, "OVERLAY")
	frame.text:SetPoint("CENTER", frame)
	frame.text:SetFontObject(GameFontHighlight)
	frame.text:SetText(anchorData.text)

	-- Visbility
	if( not Afflicted.db.profile.showAnchors ) then
		frame:SetAlpha(0)
		frame:EnableMouse(false)
	end
	

	-- Create the group instance for this anchor
	frame.group = GTBLib:RegisterGroup(string.format("Afflicted (%s)", anchorData.text), SML:Fetch(SML.MediaType.STATUSBAR, Afflicted.db.profile.barName))
	frame.group:RegisterOnFade(Bars, "OnBarFade")
	frame.group:SetScale(anchorData.scale)
	frame.group:SetWidth(Afflicted.db.profile.barWidth)
	frame.group:SetDisplayGroup(anchorData.redirectTo ~= "" and anchorData.redirectTo or nil)
	frame.group:SetBarGrowth(anchorData.growUp and "UP" or "DOWN")
	

	if( not anchorData.growUp ) then
		frame.group:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 0, 0)
	else
		frame.group:SetPoint("BOTTOMLEFT", frame, "TOPLEFT", 0, 0)
	end
	
	return frame
end

-- Return an object to access our visual style
function Bars:LoadVisual()
	if( not GTBLib ) then
		SML = Afflicted.SML
		GTBLib = LibStub:GetLibrary("GTB-Beta1")
		self.GTB = GTBLib
	end

	local obj = {}
	for _, func in pairs(methods) do
		obj[func] = self[func]
	end
	
	-- Create anchors
	for name, data in pairs(Afflicted.db.profile.anchors) do
		if( data.enabled ) then
			Bars[name] = obj:CreateDisplay(name)
		end
	end
	
	return obj
end

-- Clear all running timers for this anchor type
function Bars:ClearTimers(type)
	local anchorFrame = Bars[type]
	if( not anchorFrame ) then
		return
	end
	
	anchorFrame.group:UnregisterAllBars()
end

-- Checks if we have a timer running for this person
function Bars:TimerExists(spellData, spellID, sourceGUID, destGUID)
	return (barData[spellData.linkedTo .. sourceGUID])
end

-- Unit died, removed their timers
function Bars:UnitDied(diedGUID)
	for id in pairs(barData) do
		local spellID, sourceGUID, destGUID = string.split(":", id)
		if( destGUID == diedGUID or sourceGUID == diedGUID ) then
			--ChatFrame1:AddMessage(string.format("Unit died [%s] dest [%s] source [%s]", diedGUID, destGUID, sourceGUID))
			for key in pairs(Afflicted.db.profile.anchors) do
				Bars[key].group:UnregisterBar(id)
			end
		end
	end
end

-- Create a new timer
function Bars:CreateTimer(spellData, eventType, spellID, spellName, sourceGUID, sourceName, destGUID)
	local anchorFrame = Bars[spellData.showIn]
	if( not anchorFrame ) then
		return
	end
		
	local id = spellID .. ":" .. sourceGUID .. ":" .. destGUID
	local text = spellName

	if( Afflicted.db.profile.barNameOnly and sourceName ~= "" ) then
		text = sourceName
	elseif( sourceName ~= "" ) then
		text = string.format("%s - %s", spellName, sourceName)
	else
		text = spellName
	end

	
	-- We can only pass one argument, so we do this to prevent creating and dumping tables and such
	barData[id] = string.format("%s,%s,%s,%s,%s", eventType, spellID, spellName, sourceGUID, sourceName)
	barData[spellName .. sourceGUID] = true

	anchorFrame.group:SetTexture(SML:Fetch(SML.MediaType.STATUSBAR, Afflicted.db.profile.barName))
	anchorFrame.group:RegisterBar(id, spellData.seconds, text, spellData.icon)
	anchorFrame.group:SetRepeatingTimer(id, spellData.repeating or false)
	
	-- Start a cooldown timer
	if( spellData.cdEnabled and spellData.cooldown > 0 ) then
		local anchorFrame = Bars[spellData.cdInside]
		if( not anchorFrame ) then
			return
		end

		local id = id .. ":CD"
		local text
		
		if( Afflicted.db.profile.barNameOnly and sourceName ~= "" ) then
			text = string.format("[CD] %s", sourceName)
		elseif( sourceName ~= "" ) then
			text = string.format("[CD] %s - %s", spellName, sourceName)
		else
			text = string.format("[CD] %s", spellName)
		end

		anchorFrame.group:SetTexture(SML:Fetch(SML.MediaType.STATUSBAR, Afflicted.db.profile.barName))
		anchorFrame.group:RegisterBar(id, spellData.cooldown, text, spellData.icon)
	end
end

-- Bar timer ran out
function Bars:OnBarFade(barID)
	if( barID and barData[barID] ) then
		local eventType, spellID, spellName, sourceGUID, sourceName = string.split(",", barData[barID])
		Afflicted:AbilityEnded(eventType, tonumber(spellID), spellName, sourceGUID, sourceName, true)

		barData[barID] = nil
		barData[spellName .. sourceGUID] = nil
	end
end

-- Remove a specific anchors timer by spellID/sourceGUID
function Bars:RemoveTimer(anchorName, spellID, sourceGUID)
	local anchorFrame = Bars[anchorName]
	if( not anchorFrame ) then
		return
	end

	return anchorFrame.group:UnregisterBar(spellID .. ":" .. sourceGUID)
end

function Bars:ReloadVisual()
	-- Update anchors and icons inside
	for key, data in pairs(Afflicted.db.profile.anchors) do
		local frame = Bars[key]
		if( frame ) then
			frame.group:SetScale(data.scale)
			frame.group:SetDisplayGroup(data.redirectTo ~= "" and data.redirectTo or nil)
			frame.group:SetBarGrowth(data.growUp and "UP" or "DOWN")
			frame.group:SetWidth(Afflicted.db.profile.barWidth)

			frame:SetWidth(Afflicted.db.profile.barWidth)
			frame:SetScale(data.scale)

			if( not data.growUp ) then
				frame.group:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 0, 0)
			else
				frame.group:SetPoint("BOTTOMLEFT", frame, "TOPLEFT", 0, 0)
			end
			
			OnShow(frame)
		
			if( not Afflicted.db.profile.showAnchors ) then
				frame:SetAlpha(0)
				frame:EnableMouse(false)
			else
				frame:SetAlpha(1)
				frame:EnableMouse(true)
			end
		end
	end
end
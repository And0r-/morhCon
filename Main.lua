local MCA = LibStub("AceAddon-3.0"):NewAddon("MorphConAddon")


function MCA:OnInitialize()
    -- Called when the addon is loaded
end

function MCA:OnEnable()
	-- Called when the addon is enabled
	print("Addon geladen")
end


-----------------------------------------------------------------------------------------------
-- Add Console


local MCA = LibStub("AceAddon-3.0"):NewAddon("MorphConAddon", "AceConsole-3.0")


function MCA:OnInitialize()
    -- Called when the addon is loaded
    -- ++++++++++++
	self:RegisterChatCommand("rl", function() ReloadUI() end)
end

function MCA:OnEnable()
	-- Called when the addon is enabled
	self:Print("Addon geladen")
end


-----------------------------------------------------------------------------------------------
-- Add Event

local MCA = LibStub("AceAddon-3.0"):NewAddon("MorphConAddon", "AceConsole-3.0", "AceEvent-3.0")


function MCA:OnInitialize()
    -- Called when the addon is loaded
	self:RegisterChatCommand("rl", function() ReloadUI() end)
end

function MCA:OnEnable()
	-- Called when the addon is enabled
	self:Print("Addon geladen")
	-- ++++++++++++++
	self:RegisterEvent("BANKFRAME_OPENED")
end

-- +++++++++++++
function MCA:BANKFRAME_OPENED()
	-- Get ItemID from first Bankslot
	local itemId = GetContainerItemID(-1,1)

	if itemId == 6948 then
		self:Print("Gefunden")
	else
		self:Print("Woooo ist das Item?")
	end
end

------------------------------------------------------------------------------------------------------------------------

--Config Gui:



local MCA = LibStub("AceAddon-3.0"):NewAddon("MorphConAddon", "AceConsole-3.0", "AceEvent-3.0")
MCA.db = {itemId=6948}

local options = { 
	type = "group",
	handler = MCA,
	args = {
		item = {
			name = "ItemId",
			desc = "Bitte nur ItemId eingeben",
			type = "input",
			get = "GetItemId",
			set = "SetItemId",
		},
  	},
}


function MCA:GetItemId(info)
	return tostring(self.db.itemId)
end

function MCA:SetItemId(info, value)
	self.db.itemId = tonumber(value)
end

function MCA:OnInitialize()
    -- Called when the addon is loaded
	self:RegisterChatCommand("rl", function() ReloadUI() end)

    LibStub("AceConfig-3.0"):RegisterOptionsTable("MorphConFig", options)
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MorphConFig", "MorphConAddon")
end

function MCA:OnEnable()
	-- Called when the addon is enabled
	self:Print("Addon geladen")
	self:RegisterEvent("BANKFRAME_OPENED")
end


function MCA:BANKFRAME_OPENED()
	-- Get ItemID from first Bankslot
	local itemId = GetContainerItemID(-1,1)

	if itemId == self.db.itemId then
		self:Print("Gefunden")
	else
		self:Print("Woooo ist das Item?")
	end
end


-----------------------------------------------------------------------------------------------------------------------------------------


 Database:

local MCA = LibStub("AceAddon-3.0"):NewAddon("MorphConAddon", "AceConsole-3.0", "AceEvent-3.0")

local dbDefaults = {
	profile = {
		itemId = 6948
	}
}

local options = { 
	type = "group",
	handler = MCA,
	args = {
		item = {
			name = "ItemId",
			desc = "Bitte nur ItemId eingeben",
			type = "input",
			get = "GetItemId",
			set = "SetItemId",
		},
  	},
}


function MCA:GetItemId(info)
	return tostring(self.db.profile.itemId)
end

function MCA:SetItemId(info, value)
	self.db.profile.itemId = tonumber(value)
end

function MCA:OnInitialize()
    -- Called when the addon is loaded
	self:RegisterChatCommand("rl", function() ReloadUI() end)

	self.db = LibStub("AceDB-3.0"):New("MCADB", dbDefaults, true)

    LibStub("AceConfig-3.0"):RegisterOptionsTable("MorphConFig", options)
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MorphConFig", "MorphConAddon")
end

function MCA:OnEnable()
	-- Called when the addon is enabled
	self:Print("Addon geladen")
	self:RegisterEvent("BANKFRAME_OPENED")
end


function MCA:BANKFRAME_OPENED()
	-- Get ItemID from first Bankslot
	local itemId = GetContainerItemID(-1,1)

	if itemId == self.db.profile.itemId then
		self:Print("Gefunden")
	else
		self:Print("Woooo ist das Item?")
	end
end


----------------------------------------------------------------------------------------------------------------------


-- Translation:

local MCA = LibStub("AceAddon-3.0"):NewAddon("MorphConAddon", "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("MCA")

local dbDefaults = {
	profile = {
		itemId = 6948
	}
}

local options = { 
	type = "group",
	handler = MCA,
	args = {
		item = {
			name = "ItemId",
			desc = "Bitte nur ItemId eingeben",
			type = "input",
			get = "GetItemId",
			set = "SetItemId",
		},
  	},
}


function MCA:GetItemId(info)
	return tostring(self.db.profile.itemId)
end

function MCA:SetItemId(info, value)
	self.db.profile.itemId = tonumber(value)
end

function MCA:OnInitialize()
    -- Called when the addon is loaded
	self:RegisterChatCommand("rl", function() ReloadUI() end)

	self.db = LibStub("AceDB-3.0"):New("MCADB", dbDefaults, true)

    LibStub("AceConfig-3.0"):RegisterOptionsTable("MorphConFig", options)
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MorphConFig", "MorphConAddon")
end

function MCA:OnEnable()
	-- Called when the addon is enabled
	self:Print("Addon geladen")
	self:RegisterEvent("BANKFRAME_OPENED")
end

function MCA:BANKFRAME_OPENED()
	-- Get ItemID from first Bankslot
	local itemId = GetContainerItemID(-1,1)
	print(itemId)

	if itemId then
		print("ist ".. itemId .." == ".. self.db.profile.itemId)
	end

	if itemId == self.db.profile.itemId then
		self:Print(L["Gefunden"])
	else
		self:Print(L["Woooo ist das Item?"])
	end
end




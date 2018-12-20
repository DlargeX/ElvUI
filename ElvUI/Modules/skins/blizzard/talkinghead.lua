local E, L, V, P, G = unpack(select(2, ...)); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.talkinghead ~= true then return end

	local TalkingHeadFrame = _G.TalkingHeadFrame

	TalkingHeadFrame:StripTextures(true)
	TalkingHeadFrame.MainFrame:StripTextures(true)
	TalkingHeadFrame.PortraitFrame:StripTextures(true)

	TalkingHeadFrame.BackgroundFrame.TextBackground:SetAtlas(nil)
	TalkingHeadFrame.PortraitFrame.Portrait:SetAtlas(nil)
	TalkingHeadFrame.MainFrame.Model.PortraitBg:SetAtlas(nil)

	S:HandleCloseButton(TalkingHeadFrame.MainFrame.CloseButton)
end

S:AddCallbackForAddon("Blizzard_TalkingHeadUI", "TalkingHead", LoadSkin)

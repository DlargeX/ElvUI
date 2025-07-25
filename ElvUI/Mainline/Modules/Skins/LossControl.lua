local E, L, V, P, G = unpack(ElvUI)
local S = E:GetModule('Skins')

local _G = _G
local CreateFrame = CreateFrame
local hooksecurefunc = hooksecurefunc

function S:LossOfControlFrame()
	if not (E.private.skins.blizzard.enable and E.private.skins.blizzard.losscontrol) then return end

	--/run LossOfControlFrame.fadeTime = 2000; LossOfControlFrame_SetUpDisplay(LossOfControlFrame, true, 'CONFUSE', 2094, 'Disoriented', [[Interface\Icons\Spell_Shadow_MindSteal]], 72101.9765625, 7.9950003623962, 8, 0, 5, 2)
	local LossOfControlFrame = _G.LossOfControlFrame
	local IconBackdrop = CreateFrame('Frame', nil, LossOfControlFrame)
	IconBackdrop:SetTemplate()
	IconBackdrop:SetOutside(LossOfControlFrame.Icon)
	IconBackdrop:OffsetFrameLevel(-1, LossOfControlFrame)

	LossOfControlFrame.Icon:SetTexCoord(.1, .9, .1, .9)
	LossOfControlFrame:StripTextures()
	LossOfControlFrame.AbilityName:ClearAllPoints()
	LossOfControlFrame:Size(LossOfControlFrame.Icon:GetWidth() + 50)

	hooksecurefunc('LossOfControlFrame_SetUpDisplay', function(frame)
		frame.Icon:ClearAllPoints()
		frame.Icon:Point('CENTER', frame, 'CENTER', 0, 0)

		frame.AbilityName:ClearAllPoints()
		frame.AbilityName:Point('BOTTOM', frame, 0, -28)
		frame.AbilityName.scrollTime = nil
		frame.AbilityName:FontTemplate(nil, 20, 'OUTLINE')

		frame.TimeLeft.NumberText:ClearAllPoints()
		frame.TimeLeft.NumberText:Point('BOTTOM', frame, 4, -58)
		frame.TimeLeft.NumberText.scrollTime = nil
		frame.TimeLeft.NumberText:FontTemplate(nil, 20, 'OUTLINE')

		frame.TimeLeft.SecondsText:ClearAllPoints()
		frame.TimeLeft.SecondsText:Point('BOTTOM', frame, 0, -80)
		frame.TimeLeft.SecondsText.scrollTime = nil
		frame.TimeLeft.SecondsText:FontTemplate(nil, 20, 'OUTLINE')

		-- always stop shake animation on start
		if frame.Anim:IsPlaying() then
			frame.Anim:Stop()
		end
	end)
end

S:AddCallback('LossOfControlFrame')

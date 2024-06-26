local E, L, V, P, G = unpack(ElvUI)
local UF = E:GetModule('UnitFrames')

local CreateFrame = CreateFrame

function UF:Construct_InfoPanel(frame)
	local infoPanel = CreateFrame('Frame', '$parent_InfoPanel', frame)
	infoPanel:SetFrameLevel(8) -- Health is 10, power is 5 or 15 by default; also changed by Threat.lua
	infoPanel:Hide()
	infoPanel:SetSize(100,10)
	infoPanel:CreateBackdrop(nil, true, nil, nil, true)

	return infoPanel
end

function UF:Configure_InfoPanel(frame)
	local db = frame.db
	local isShown = frame.USE_INFO_PANEL

	frame.InfoPanel:SetShown(isShown)

	if isShown then
		frame.InfoPanel:ClearAllPoints()

		local BORDER_SPACING = UF.BORDER + UF.SPACING
		local TRIPLE_SPACING = UF.SPACING * 3

		if frame.ORIENTATION == 'RIGHT' and not (frame.unitframeType == 'arena') then
			frame.InfoPanel:Point('BOTTOMRIGHT', frame, 'BOTTOMRIGHT', -UF.BORDER - UF.SPACING, BORDER_SPACING)
			if frame.USE_POWERBAR and not frame.USE_INSET_POWERBAR and not frame.POWERBAR_DETACHED and frame.POWERBAR_SHOWN then
				frame.InfoPanel:Point('TOPLEFT', frame.Power.backdrop, 'BOTTOMLEFT', UF.BORDER, -TRIPLE_SPACING)
			else
				frame.InfoPanel:Point('TOPLEFT', frame.Health.backdrop, 'BOTTOMLEFT', UF.BORDER, -TRIPLE_SPACING)
			end
		else
			frame.InfoPanel:Point('BOTTOMLEFT', frame, 'BOTTOMLEFT', BORDER_SPACING, BORDER_SPACING)
			if frame.USE_POWERBAR and not frame.USE_INSET_POWERBAR and not frame.POWERBAR_DETACHED and frame.POWERBAR_SHOWN then
				frame.InfoPanel:Point('TOPRIGHT', frame.Power.backdrop, 'BOTTOMRIGHT', -UF.BORDER, -TRIPLE_SPACING)
			else
				frame.InfoPanel:Point('TOPRIGHT', frame.Health.backdrop, 'BOTTOMRIGHT', -UF.BORDER, -TRIPLE_SPACING)
			end
		end

		if db.infoPanel.transparent then
			frame.InfoPanel.backdrop:SetTemplate('Transparent', nil, nil, nil, true)
		else
			frame.InfoPanel.backdrop:SetTemplate(nil, true, nil, nil, true)
		end
	end
end

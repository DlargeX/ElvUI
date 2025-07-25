local E, L, V, P, G = unpack(ElvUI)
local UF = E:GetModule('UnitFrames')

local unpack = unpack
local CreateFrame = CreateFrame

function UF:Construct_Threat(frame)
	local threat = CreateFrame('Frame', nil, frame)

	--Main ThreatGlow
	threat.MainGlow = frame:CreateShadow(4, true)
	threat.MainGlow:SetFrameStrata('BACKGROUND')
	threat.MainGlow:SetParent(frame)
	threat.MainGlow:Hide()

	--Secondary ThreatGlow, for power frame when using power offset
	threat.PowerGlow = frame:CreateShadow(4, true)
	threat.PowerGlow:SetFrameStrata('BACKGROUND')
	threat.PowerGlow:SetParent(frame)
	threat.PowerGlow:Hide()

	threat.TextureIcon = threat:CreateTexture(nil, 'OVERLAY')
	threat.TextureIcon:Size(8)
	threat.TextureIcon:SetTexture(E.media.blankTex)
	threat.TextureIcon:Hide()

	threat.PostUpdate = UF.UpdateThreat
	return threat
end

function UF:Configure_Threat(frame)
	local threat = frame.ThreatIndicator
	if not threat then return end

	local db = frame.db
	local threatStyle = db and db.threatStyle
	if threatStyle and threatStyle ~= 'NONE' then
		if not frame:IsElementEnabled('ThreatIndicator') then
			frame:EnableElement('ThreatIndicator')
		end

		local unit = frame.unitframeType
		threat.feedbackUnit = db.threatPlayer and (unit == 'target' or unit == 'focus') and 'player' or nil

		if threatStyle == 'GLOW' then
			threat:SetFrameStrata('BACKGROUND')
			threat.MainGlow:ClearAllPoints()
			threat.MainGlow:SetAllPoints(frame.TargetGlow)

			if frame.USE_POWERBAR_OFFSET then
				threat.PowerGlow:ClearAllPoints()
				threat.PowerGlow:SetAllPoints(frame.TargetGlow.powerGlow)
			end
		elseif threatStyle:match('^ICON') then
			threat:SetFrameStrata('LOW')
			threat:SetFrameLevel(75) --Inset power uses 50, we want it to appear above that

			local point = threatStyle:gsub('ICON', '')
			threat.TextureIcon:ClearAllPoints()
			threat.TextureIcon:Point(point, frame.Health, point)
		elseif threatStyle == 'HEALTHBORDER' and frame.InfoPanel then
			frame.InfoPanel:SetFrameLevel(8) -- Back to default
		elseif threatStyle == 'INFOPANELBORDER' and frame.InfoPanel then
			frame.InfoPanel:SetFrameLevel(20) -- Health is 10, power is 5 or 15 by default
		end
	elseif frame:IsElementEnabled('ThreatIndicator') then
		frame:DisableElement('ThreatIndicator')
	end
end

do
	local function GetTable(backdrop)
		if not backdrop.forcedThreatBorders then
			backdrop.forcedThreatBorders = {}
		end

		return backdrop.forcedThreatBorders
	end

	function UF:ThreatBorderColor(backdrop, lock, r, g, b)
		local c = GetTable(backdrop)
		c[1], c[2], c[3] = r, g, b

		backdrop.forcedBorderColors = lock and c or nil
		backdrop:SetBackdropBorderColor(r, g, b)
	end
end

do
	local classPowers = {
		MONK = 'Stagger',
		DRUID = 'AdditionalPower',
		PRIEST = 'AdditionalPower',
		SHAMAN = 'AdditionalPower',
		DEATHKNIGHT = 'Runes'
	}

	local myClassPower = classPowers[E.myclass]
	function UF:ThreatClassBarBorderColor(parent, status, r, g, b)
		local classPower = myClassPower and parent[myClassPower]
		if classPower then UF:ThreatBorderColor(classPower.backdrop, status, r, g, b) end
		if parent.ClassPower then UF:ThreatBorderColor(parent.ClassPower.backdrop, status, r, g, b) end
		if parent.AlternativePower then UF:ThreatBorderColor(parent.AlternativePower.backdrop, status, r, g, b) end
		if parent.EclipseBar then UF:ThreatBorderColor(parent.EclipseBar.backdrop, status, r, g, b) end
	end
end

function UF:ThreatHandler(threat, parent, threatStyle, status, r, g, b)
	if threatStyle == 'GLOW' then
		threat.MainGlow:SetShown(status)
		threat.MainGlow:SetBackdropBorderColor(r, g, b)

		threat.PowerGlow:SetShown(parent.USE_POWERBAR_OFFSET and status)
		threat.PowerGlow:SetBackdropBorderColor(r, g, b)
	elseif threatStyle == 'BORDERS' then
		local cb = parent.db.castbar and parent.Castbar
		if cb and parent.db.castbar.overlayOnFrame ~= 'None' then
			UF:ThreatBorderColor(cb.backdrop, status, r, g, b)
			UF:ThreatBorderColor(cb.ButtonIcon.bg, status, r, g, b)
		end

		if parent.InfoPanel then
			UF:ThreatBorderColor(parent.InfoPanel.backdrop, status, r, g, b)
		end

		if parent.Power then
			UF:ThreatBorderColor(parent.Power.backdrop, status, r, g, b)
		end

		UF:ThreatBorderColor(parent.Health.backdrop, status, r, g, b)
		UF:ThreatClassBarBorderColor(parent, status, r, g, b)
	elseif threatStyle == 'HEALTHBORDER' then
		local cb = parent.db.castbar and parent.Castbar
		if cb and parent.db.castbar.overlayOnFrame == 'Health' then
			UF:ThreatBorderColor(cb.backdrop, status, r, g, b)
			UF:ThreatBorderColor(cb.ButtonIcon.bg, status, r, g, b)
		end

		UF:ThreatBorderColor(parent.Health.backdrop, status, r, g, b)
	elseif threatStyle == 'INFOPANELBORDER' then
		local cb = parent.db.castbar and parent.Castbar
		if cb and parent.db.castbar.overlayOnFrame == 'InfoPanel' then
			UF:ThreatBorderColor(cb.backdrop, status, r, g, b)
			UF:ThreatBorderColor(cb.ButtonIcon.bg, status, r, g, b)
		end

		if parent.InfoPanel then
			UF:ThreatBorderColor(parent.InfoPanel.backdrop, status, r, g, b)
		end
	elseif threatStyle ~= 'NONE' and threat.TextureIcon then
		threat.TextureIcon:SetShown(status)
		threat.TextureIcon:SetVertexColor(r, g, b)
	end
end

function UF:UpdateThreat(unit, status, r, g, b)
	local parent = self:GetParent()

	local db = parent.db
	if not db then return end

	if (unit and parent.unit == unit) and status and status > (db.threatPrimary and 1 or 0) then
		UF:ThreatHandler(self, parent, db.threatStyle, status, r, g, b)
	else
		UF:ThreatHandler(self, parent, db.threatStyle, nil, unpack(E.media.unitframeBorderColor))
	end
end

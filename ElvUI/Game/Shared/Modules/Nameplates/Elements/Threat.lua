local E, L, V, P, G = unpack(ElvUI)
local NP = E:GetModule('NamePlates')

local UnitIsUnit = UnitIsUnit
local UnitIsTapDenied = UnitIsTapDenied

function NP:ThreatIndicator_PreUpdate(unit, pass)
	local targetUnit, db = unit..'target', NP.db.threat
	local isTank = E.myrole == 'TANK' or E.GroupRoles.player == 'TANK'
	local offTank = isTank and (E:UnitExists(targetUnit) and not UnitIsUnit(targetUnit, 'player')) and ((db.beingTankedByPet and E.ThreatPets[NP:UnitNPCID(targetUnit)]) or (db.beingTankedByTank and E:UnitTankedByGroup(targetUnit)))
	local useSolo = not E.IsInGroup and db.useSoloColor

	if pass then
		return isTank, offTank, useSolo
	else
		self.__owner.threatScale = nil

		self.useSolo = useSolo
		self.offTank = offTank
		self.isTank = isTank
	end
end

function NP:ThreatIndicator_PostUpdate(unit, status)
	local nameplate, colors, db = self.__owner, NP.db.colors.threat, NP.db.threat

	nameplate.threatStatus = status -- export for plugins
	nameplate.threatHealth = nil

	if not status then
		nameplate.threatScale = 1
		NP:ScalePlate(nameplate, 1)
	elseif status and db.enable and db.useThreatColor and not UnitIsTapDenied(unit) then
		local Color, Scale
		if status == 3 then -- securely tanking
			Color = (self.useSolo and colors.soloColor) or (self.isTank and colors.goodColor) or colors.badColor
			Scale = (self.useSolo and db.goodScale) or (self.isTank and db.goodScale) or db.badScale
		elseif status == 2 then -- insecurely tanking
			Color = (self.offTank and colors.offTankColorBadTransition) or (self.isTank and colors.badTransition) or colors.goodTransition
			Scale = 1
		elseif status == 1 then -- not tanking but threat higher than tank
			Color = (self.offTank and colors.offTankColorGoodTransition) or (self.isTank and colors.goodTransition) or colors.badTransition
			Scale = 1
		else -- not tanking at all
			Color = (self.offTank and colors.offTankColor) or (self.isTank and colors.badColor) or colors.goodColor
			Scale = (self.offTank and db.goodScale) or (self.isTank and db.badScale) or db.goodScale
		end

		if not db.skipGoodColor or (Color ~= colors.goodColor) then
			NP:SetStatusBarColor(nameplate.Health, Color.r, Color.g, Color.b)
			nameplate.threatHealth = true
		end

		if Scale then
			nameplate.threatScale = Scale

			NP:ScalePlate(nameplate, Scale)
		end
	end
end

function NP:Construct_ThreatIndicator(nameplate)
	local ThreatIndicator = nameplate.RaisedElement:CreateTexture(nil, 'OVERLAY')
	ThreatIndicator:Size(16)
	ThreatIndicator:Hide()
	ThreatIndicator:Point('CENTER', nameplate.RaisedElement, 'TOPRIGHT')

	ThreatIndicator.feedbackUnit = 'player'
	ThreatIndicator.PreUpdate = NP.ThreatIndicator_PreUpdate
	ThreatIndicator.PostUpdate = NP.ThreatIndicator_PostUpdate

	return ThreatIndicator
end

function NP:Update_ThreatIndicator(nameplate)
	local db = NP.db.threat
	if nameplate.frameType == 'ENEMY_NPC' and db.enable then
		if not nameplate:IsElementEnabled('ThreatIndicator') then
			nameplate:EnableElement('ThreatIndicator')
		end

		nameplate.ThreatIndicator:SetAlpha(db.indicator and 1 or 0)
	else
		nameplate.threatHealth = nil

		if nameplate:IsElementEnabled('ThreatIndicator') then
			nameplate:DisableElement('ThreatIndicator')
		end
	end
end

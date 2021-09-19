local xPosPlayer = {
    P1 = -62,
    P2 = 62
}

local function setDiffBG(pn)
  return function(self,param)
    local short = ToEnumShortString(pn);
    local st = GAMESTATE:GetCurrentStyle():GetStepsType()
    if self.ParamSong then
      local steps = GAMESTATE:GetCurrentSteps(pn)
      if steps then
        local sDiff = steps:GetDifficulty()
			  local diff = self.ParamSong:GetOneSteps( st, sDiff)
        local diffname = GAMESTATE:GetCurrentSteps(pn):GetDifficulty()
        if diff then
  				self:diffuse(CustomDifficultyToColor(diffname));
  			else
  				self:diffuse(color("1,1,1,0"))
  			end;
  		else
  			self:diffuse(color("1,1,1,0"))
  		end;
  	end;
  end;
end;

local function setDiff(pn)
  return function(self,param)
    local short = ToEnumShortString(pn);
  	local st = GAMESTATE:GetCurrentStyle():GetStepsType()
  	if self.ParamSong then
  		local steps = GAMESTATE:GetCurrentSteps(pn)
  		if steps then
  			local sDiff = steps:GetDifficulty()
  			local diff = self.ParamSong:GetOneSteps( st, sDiff)
  			local diffname = GAMESTATE:GetCurrentSteps(pn):GetDifficulty()
  			if diff then
  				if self:GetName() == diffname then
  						self:settext( diff:GetMeter() )
  						self:visible(true)
  				else
  					self:visible(false)
  				end;
  			else
  				self:settext("")
  			end;
  		else
  			self:settext("")
  		end;
  	end;
  end;
end;

--Lifted from default, appears to have been written by Kyzentun
local filter_color= color("0,0,0,1")
local this_pn

local args= {
	--the screen filter
	Def.Sprite {
		InitCommand=function(self)
			if GAMESTATE:GetCurrentStyle() == 'StepsType_Dance_Double' then
				self:Load(THEME:GetPathG("NoteField","board/dance_filter0000_filter_double.png"));
			else
				self:Load(THEME:GetPathG("NoteField","board/dance_filter0000_filter.png"));
			end;
		end,
		PlayerStateSetCommand= function(self, param)
			local pn = param.PlayerNumber
			local style= GAMESTATE:GetCurrentStyle(pn)
			local alf= getenv("ScreenFilter"..ToEnumShortString(pn)) or 0
			local width = style:GetWidth(pn)+65
			self:setsize(width, _screen.h*4096)
			if screen == "ScreenDemonstration" then
				self:diffusealpha(0.5)
			else
				self:diffusealpha(alf/100)
			end
			self:hibernate(0)
		end,
	};
}

return Def.ActorFrame(args)

local pn = ...

local function base_x()
	if pn == PLAYER_1 then
		return _screen.cx-360
	elseif pn == PLAYER_2 then
		return _screen.cx+360
	else
	  error("Pass a valid player number, dingus.",2)
	end
end

return Def.ActorFrame{
    InitCommand=function(s)
        s:xy(base_x(),SCREEN_TOP+27):draworder(99)
    end,
    Name="LifeFrame",
	-- Def.Sprite{
        -- Texture="gauge0000_base",
        -- OnCommand=function(s) s:scaletoclipped(442,31):x(-1):y(10) end,
	-- };
	Def.Sprite{
        Texture="stream/gauge0000_gauge_normal (stretch)",
        OnCommand=function(s) s:scaletoclipped(442,30):y(10)
            :MaskDest():ztestmode("ZTestMode_WriteOnFail"):customtexturerect(0,0,1,1)
            :texcoordvelocity(pn=="PlayerNumber_P2" and 0.6 or -0.6,0)
        end,
        HealthStateChangedMessageCommand=function(self, param)
			if param.PlayerNumber == pn then
				if param.HealthState == "HealthState_Danger" then
					self:Load(THEME:GetPathB("","ScreenGameplay decorations/lifeframe/stream/gauge0000_gauge_danger_eff (stretch).png"))
				elseif param.HealthState == "HealthState_Hot" then
					self:Load(THEME:GetPathB("","ScreenGameplay decorations/lifeframe/stream/gauge0000_gauge_rainbow (stretch).png"))
		  		else
					self:Load(THEME:GetPathB("","ScreenGameplay decorations/lifeframe/stream/gauge0000_gauge_normal (stretch).png"))
		  		end;
		  		--self:scaletoclipped(442,30)
			end;
		end;
    };
    Def.Sprite{
        Name="LifeFrame"..pn,
        InitCommand=function(s) s:xy(pn==PLAYER_1 and 0 or 0,8):rotationy(pn==PLAYER_2 and 180 or 0) end,
        BeginCommand=function(self)
            if GAMESTATE:PlayerIsUsingModifier(pn,'battery') or GAMESTATE:GetPlayMode() == 'PlayMode_Oni' then
            self:Load(THEME:GetPathB("ScreenGameplay","decorations/lifeframe/gauge0000_frame_4life.png"))  
          else
              self:Load(THEME:GetPathB("ScreenGameplay","decorations/lifeframe/gauge0000_frame_normal.png"))
          end;
        end
    }
}
local function pReadPref(pn) return ReadPrefFromFile("OptionRowScreenFilter"..ToEnumShortString(pn)); end;

local pn = ({...})[1]

local ScreenFilter = pReadPref(pn);

local Filter;
if GAMESTATE:GetCurrentStyle():GetStepsType() == 'StepsType_Dance_Double' then
	Filter = THEME:GetPathB("ScreenGameplay","underlay/ScreenFilter/dance_filter0000_filter_double.png")
else
	Filter = THEME:GetPathB("ScreenGameplay","underlay/ScreenFilter/dance_filter0000_filter.png")
end;

local Position;
if PREFSMAN:GetPreference('Center1Player') and GAMESTATE:GetNumPlayersEnabled() == 1 and GAMESTATE:GetNumSidesJoined() == 1 then 
	Position = _screen.cx
else
	Position = pn == PLAYER_1 and ScreenGameplay_P1X() or ScreenGameplay_P2X()
end;

local Darkness;
	if ScreenFilter == "OFF"	 then Darkness = 0
elseif ScreenFilter == "DARK"	 then Darkness = 0.3
elseif ScreenFilter == "DARKER"	 then Darkness = 0.6
elseif ScreenFilter == "DARKEST" then Darkness = 0.9
else								  Darkness = 0
end;

local function FilterUpdate(self)
		if (GAMESTATE:GetSongBeat() >= GAMESTATE:GetCurrentSong():GetLastBeat()) 	then self:visible(false);
	elseif (GAMESTATE:GetSongBeat() >= GAMESTATE:GetCurrentSong():GetFirstBeat()-8) then self:visible(true);
	else self:visible(false);
	end;
end;

return Def.Sprite { InitCommand=function(s) s:x(Position):y(_screen.cy):Load(Filter):diffusealpha(Darkness) end, };

--if GetUserPref("OptionRowBeatBars")=='false' then t.InitCommand=cmd(SetUpdateFunction,FilterUpdate); end;
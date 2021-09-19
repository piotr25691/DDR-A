return Def.ActorFrame{	
	--Background
	Def.Sprite {
		OnCommand=function(s)
			if GAMESTATE:GetCurrentSong() then	
				if GAMESTATE:GetCurrentSong():HasBackground() then
					s:LoadFromSongBackground(GAMESTATE:GetCurrentSong())
				else
					s:Load(THEME:GetPathG("Common", "fallback background"))
				end;
			end;
		s:Center()
		s:zoomto(SCREEN_WIDTH,SCREEN_HEIGHT)
	--	s:zoomto(SCREEN_WIDTH+38,SCREEN_HEIGHT+38;) 4:3 size
		end,
	};
	Def.Quad{
		InitCommand=function(s) s:FullScreen():diffuse(color("0,0,0,0.5")) end,
	};
};
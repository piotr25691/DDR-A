return Def.ActorFrame{
	InitCommand=function(s) s:zoom(1):y(SCREEN_CENTER_Y):diffusealpha(0.8) end,
	Def.Sprite{
		Texture = THEME:GetPathB("ScreenGameplay","underlay/ScreenFilter/dance_filter0000_filter.png"),
		InitCommand=function(s) s:x(SCREEN_CENTER_X-360) end,
	};
	Def.Sprite{
		Texture = THEME:GetPathB("ScreenGameplay","underlay/ScreenFilter/dance_filter0000_filter.png"),
		InitCommand=function(s) s:x(SCREEN_CENTER_X+360) end,
	};
}
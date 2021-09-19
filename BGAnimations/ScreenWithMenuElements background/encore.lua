local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("scex_encoreextra_bg")..{
	OnCommand=cmd(FullScreen);
	};
	LoadActor("scex_encore_bill")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+90;y,SCREEN_TOP-70;zoom,2.6);
	};
	LoadActor("scex_encore_flare")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-150;y,SCREEN_CENTER_Y-100;zoom,4;diffusealpha,0.5;);
	};
	--DOT RIGHT UP
	LoadActor("scex_encoreextra_light01")..{
	OnCommand=cmd(x,SCREEN_RIGHT-330;y,SCREEN_CENTER_Y-60;zoom,1);
	};
	--[[LoadActor("scex_encoreextra_light02")..{
	OnCommand=cmd(x,SCREEN_RIGHT-330;y,SCREEN_CENTER_Y-60;zoom,1);
	};]]
	--DOT RIGHT MIDDLE
	LoadActor("scex_encoreextra_light01")..{
	OnCommand=cmd(x,SCREEN_RIGHT-370;y,SCREEN_CENTER_Y+140;zoom,0.5);
	};
	--[[LoadActor("scex_encoreextra_light02")..{
	OnCommand=cmd(x,SCREEN_RIGHT-370;y,SCREEN_CENTER_Y+140;zoom,0.5);
	};]]
	--DOT MIDDLE DOWN
	LoadActor("scex_encoreextra_light01")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+160;zoom,0.5);
	};
	--[[LoadActor("scex_encoreextra_light02")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+160;zoom,0.5);
	};]]
	--DOT LEFT DOWN
	LoadActor("scex_encoreextra_light01")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-130;y,SCREEN_CENTER_Y+55;zoom,0.5);
	};
	--[[LoadActor("scex_encoreextra_light02")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-130;y,SCREEN_CENTER_Y+55;zoom,0.5);
	};]]
	--DOT LEFT UP
	LoadActor("scex_encoreextra_light01")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_CENTER_Y-160;zoom,1);
	};
	--[[LoadActor("scex_encoreextra_light02")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_CENTER_Y-160;zoom,1;diffusealpha,0.5);
	};]]
	
};

return t;
local RSC = math.random(1,3);
local t = Def.ActorFrame{
	LoadActor(THEME:GetPathB("","ModDate"));
	LoadActor(THEME:GetPathS("","Announcer/ScreenSelectCharacters "..RSC))..{
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

--P1
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(x,SCREEN_CENTER_X-320;y,SCREEN_CENTER_Y+14);
	OffCommand=cmd(sleep,0.2;linear,0.2;zoomy,0);
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG01"))..{
			InitCommand=cmd(shadowlength,0;zoomy,1)
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG02") ) .. {
			InitCommand=cmd(y,-40)
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_top") ) .. {
			InitCommand=function(s) s:valign(1):y(-238) end,
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_head_1p")) .. {
			InitCommand=cmd(y,-263);
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_bottom")) .. {
			InitCommand=cmd(valign,0;y,224);
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/"..lang.."_sceawi_scene_guide_keyoperation")) .. {
			InitCommand=function(s) s:x(0):y(270):zoom(1) end,
		};
	};

--P2
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+14);
	OffCommand=cmd(sleep,0.2;linear,0.2;zoomy,0);
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG01"))..{
			InitCommand=cmd(shadowlength,0;zoomy,1)
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG02") ) .. {
			InitCommand=cmd(y,-40)
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_top") ) .. {
			InitCommand=function(s) s:valign(1):y(-238) end,
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_head_2p")) .. {
			InitCommand=cmd(y,-263);
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_bottom")) .. {
			InitCommand=cmd(valign,0;y,224);
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/"..lang.."_sceawi_scene_guide_keyoperation")) .. {
			InitCommand=function(s) s:x(0):y(270):zoom(1) end,
		};
	};
	
	
for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
t[#t+1] = Def.ActorFrame{
	InitCommand=function(s) s:xy(pn==PLAYER_1 and _screen.cx-320 or _screen.cx+320,_screen.cy+14) end,
	OffCommand=function(s) s:sleep(0.2):linear(0.2):zoomy(0) end,
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/Tex_0018")) .. {
			InitCommand=cmd(y,-200);
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/Arrow.png") ) .. {
			InitCommand=cmd(bounce;effectmagnitude,4,0,0;effectperiod,0.9;x,-140;y,-200;zoom,1;);
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/Arrow.png"))..{
			InitCommand=cmd(bounce;effectmagnitude,-4,0,0;effectperiod,0.9;x,140;y,-200;zoomx,-1);
		};
	};
end;


if GAMESTATE:IsPlayerEnabled(PLAYER_1) and not GAMESTATE:IsPlayerEnabled(PLAYER_2) then
t[#t+1] = Def.ActorFrame{
		InitCommand=function(s) s:xy(_screen.cx+320,_screen.cy+14) end,
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_press_button") ) .. {
			InitCommand=cmd(y,-30;diffuseshift;effectcolor1,Color('White');effectcolor2,color("#A5A6A5"));
			OffCommand=cmd(linear,0.1;zoomy,0;diffusealpha,0);
		};
	};
end;

if GAMESTATE:IsPlayerEnabled(PLAYER_2) and not GAMESTATE:IsPlayerEnabled(PLAYER_1) then
t[#t+1] = Def.ActorFrame{
		InitCommand=function(s) s:xy(_screen.cx-320,_screen.cy+14) end,
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_press_button") ) .. {
			InitCommand=cmd(y,-30;diffuseshift;effectcolor1,Color('White');effectcolor2,color("#A5A6A5"));
			OffCommand=cmd(linear,0.1;zoomy,0;diffusealpha,0);
		};
	};
end;

return t
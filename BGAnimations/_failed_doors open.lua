local t = Def.ActorFrame{};

--Hacky way to get the transition.
t[#t+1] = Def.ActorFrame {
	LoadActor("DoorOpen") .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	
	
};


t[#t+1] = LoadActor(THEME:GetPathB("","_door/scsh_back03_gray"))..{
	InitCommand=cmd(FullScreen;Center;diffusealpha,1;zoom,3.5);
	OnCommand=cmd(faderight,0;fadeleft,0;sleep,0.2;linear,0.1;diffusealpha,0;faderight,1;fadeleft,1);
};

t[#t+1] = Def.ActorFrame{
  Def.Quad{
    InitCommand=cmd(zoom,1.5;halign,1;x,SCREEN_CENTER_X+80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
    OnCommand=cmd(faderight,0.2;sleep,0.2;linear,0.1;diffusealpha,0.75;linear,0.3;addx,-(SCREEN_CENTER_X-150);diffusealpha,0;);
  };
  Def.Quad{
    InitCommand=cmd(zoom,1.5;halign,0;x,SCREEN_CENTER_X-80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
    OnCommand=cmd(fadeleft,0.2;sleep,0.2;linear,0.1;diffusealpha,0.75;linear,0.3;addx,(SCREEN_CENTER_X+150);diffusealpha,0;);
  };
}

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_gray"))..{
		InitCommand=cmd(x,200;y,SCREEN_TOP+32;zoom,1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_gray"))..{
		InitCommand=cmd(x,237;y,SCREEN_TOP+32;zoom,1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_gray"))..{
		InitCommand=cmd(x,-200;y,SCREEN_TOP+32;zoomx,-1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_gray"))..{
		InitCommand=cmd(x,-237;y,SCREEN_TOP+32;zoomx,-1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_gray"))..{
		InitCommand=cmd(x,2000;y,SCREEN_BOTTOM-32;zoomy,-1;);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_gray"))..{
		InitCommand=cmd(x,237;y,SCREEN_BOTTOM-32;zoomy,-1;);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_gray"))..{
		InitCommand=cmd(x,-200;y,SCREEN_BOTTOM-32;zoomx,1;zoom,-1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_gray"))..{
		InitCommand=cmd(x,-237;y,SCREEN_BOTTOM-32;zoomx,1;zoom,-1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,99;diffusealpha,0;);
	};
}
----------------------------------------------------------------------------
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_gray"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+98;zoom,1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_gray"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-98;zoomy,-1;);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_gray"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+98;zoomx,-1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-99;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_gray"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-98;zoomx,1;zoom,-1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,99;diffusealpha,0;);
	};
}



--Glow
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	OnCommand=cmd(queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_gray"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+175;diffusealpha,0;zoomx,-1;linear,1.5;diffusealpha,1;);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-115;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_gray"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-175;diffusealpha,0;zoomy,-1;linear,1.5;diffusealpha,1;);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,115;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_gray"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+175;diffusealpha,0;zoom,1;linear,1.5;diffusealpha,1;);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,115;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_gray"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-175;zoomy,-1;diffusealpha,0;zoom,-1;linear,1.5;diffusealpha,1;);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,115;diffusealpha,0;);
	};	
};
t[#t+1] = LoadActor(THEME:GetPathB("","_door/scene_choice_stage_bg_red"))..{
	InitCommand=cmd(zoom,1;blend,Blend.Add;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OnCommand=cmd(linear,0.1;zoomx,1.5;zoomy,0);
	};
	
t[#t+1] = LoadActor(THEME:GetPathB("","_door/scene_choice_failed"))..{
	InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	OnCommand=cmd(linear,0.09;zoomx,1.2;zoomy,0);
};

t[#t+1] = LoadActor(THEME:GetPathB("","_door/scene_choice_failed"))..{
	InitCommand=cmd(zoom,1;blend,Blend.Add;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OnCommand=cmd(linear,0.09;zoomx,1.2;zoomy,0);
};
return t

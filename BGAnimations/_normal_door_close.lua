local t = Def.ActorFrame{};

--Hacky way to get the transition.
t[#t+1] = Def.ActorFrame {
	LoadActor("DoorClose") .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};


t[#t+1] = LoadActor(THEME:GetPathB("","_door/scsh_back03_blue"))..{
	InitCommand=cmd(FullScreen;Center;diffusealpha,0);
	OnCommand=cmd(faderight,1;fadeleft,1;sleep,0.3;linear,0.1;diffusealpha,1;faderight,0;fadeleft,0);
};

t[#t+1] = Def.ActorFrame{
  Def.Quad{
    InitCommand=cmd(diffusealpha,0);
    OnCommand=cmd(sleep,1.5);
  };
}

t[#t+1] = Def.ActorFrame{
  Def.Quad{
    InitCommand=cmd(halign,1;x,SCREEN_CENTER_X+80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
    OnCommand=cmd(faderight,0.2;sleep,0.3;linear,0.1;diffusealpha,0.75;linear,0.3;addx,-(SCREEN_CENTER_X-150);diffusealpha,0;);
  };
  Def.Quad{
    InitCommand=cmd(halign,0;x,SCREEN_CENTER_X-80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
    OnCommand=cmd(fadeleft,0.2;sleep,0.3;linear,0.1;diffusealpha,0.75;linear,0.3;addx,(SCREEN_CENTER_X+150);diffusealpha,0;);
  };
}

--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,200;y,SCREEN_TOP+21;diffusealpha,0;;zoom,1);
    OnCommand=cmd(addy,-99;sleep,0.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,237;y,SCREEN_TOP+21;diffusealpha,0;;zoom,1);
    OnCommand=cmd(addy,-99;sleep,0.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,200;y,SCREEN_BOTTOM-21;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,0.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,237;y,SCREEN_BOTTOM-21;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,0.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
	
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,-200;y,SCREEN_TOP+21;diffusealpha,0;;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,0.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,-237;y,SCREEN_TOP+21;diffusealpha,0;;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,0.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,-200;y,SCREEN_BOTTOM-21;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,0.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,-237;y,SCREEN_BOTTOM-21;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,0.2;linear,0.1;addy,-110;diffusealpha,1;);
	};

}
---------------------------------------------------------------------------------------
--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+87;diffusealpha,0;;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,0.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-87;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,0.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+87;diffusealpha,0;;zoom,1);
    OnCommand=cmd(addy,-99;sleep,0.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-87;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,0.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
}

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+87;diffusealpha,0;zoomx,-1;);
    OnCommand=cmd(addy,-99;sleep,0.2;linear,0.1;addy,180;diffusealpha,1;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-87;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,0.2;linear,0.1;addy,-180;diffusealpha,1;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+87;diffusealpha,0;zoom,1);
    OnCommand=cmd(addy,-99;sleep,0.2;linear,0.1;addy,180;diffusealpha,1;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-87;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,0.2;linear,0.1;addy,-180;diffusealpha,1;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	};
}

return t

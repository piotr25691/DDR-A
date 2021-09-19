local t = Def.ActorFrame {};


t[#t+1] = Def.ActorFrame{
	Def.Sprite{
		Texture="_door/scsh_back03_blue";
		InitCommand=function(self)
			self:FullScreen()
		end;
	};
};



--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,200;y,SCREEN_TOP+32;zoom,1);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,237;y,SCREEN_TOP+32;zoom,1);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,200;y,SCREEN_BOTTOM-32;zoomy,-1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,237;y,SCREEN_BOTTOM-32;zoomy,-1;);
	};
}
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,-200;y,SCREEN_TOP+32;zoomx,-1);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,-237;y,SCREEN_TOP+32;zoomx,-1);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,-200;y,SCREEN_BOTTOM-32;zoomx,1;zoom,-1);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,-237;y,SCREEN_BOTTOM-32;zoomx,1;zoom,-1);
	};
}
-------------------------------------------------------------------
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+98;zoom,1);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-98;zoomy,-1;);
	};
}
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+98;zoomx,-1);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-98;zoomx,1;zoom,-1);
	};
}



--Glow
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	OnCommand=cmd(queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+175;diffusealpha,0;zoomx,-1;linear,1.5;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-175;diffusealpha,0;zoomy,-1;linear,1.5;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+175;diffusealpha,0;zoom,1;linear,1.5;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-175;zoomy,-1;diffusealpha,0;zoom,-1;linear,1.5;diffusealpha,1;);
	};	
};

return t;

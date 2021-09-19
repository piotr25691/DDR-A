local song = GAMESTATE:GetCurrentSong();
local t = Def.ActorFrame{};
local dt = 1.235;
--nt = 3.604 --fct = 4.872

--Door
t[#t+1] = Def.ActorFrame {
LoadActor("../DoorClose") .. {
  OnCommand=cmd(sleep,dt;queuecommand,"Play");
  PlayCommand=cmd(play);
};


LoadActor(THEME:GetPathB("","_door/scsh_back03_blue"))..{
	InitCommand=cmd(FullScreen;Center;diffusealpha,0);
	OnCommand=cmd(faderight,1;fadeleft,1;sleep,1.3;linear,0.1;diffusealpha,1;faderight,0;fadeleft,0);
};


Def.Quad{
	InitCommand=cmd(diffusealpha,0);
	OnCommand=cmd(sleep,1.5);
};



Def.Quad{
	InitCommand=cmd(halign,1;x,SCREEN_CENTER_X+80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
	OnCommand=cmd(faderight,0.2;sleep,1.3;linear,0.1;diffusealpha,0.75;linear,0.3;addx,-(SCREEN_CENTER_X-150);diffusealpha,0;);
};

Def.Quad{
	InitCommand=cmd(halign,0;x,SCREEN_CENTER_X-80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
	OnCommand=cmd(fadeleft,0.2;sleep,1.3;linear,0.1;diffusealpha,0.75;linear,0.3;addx,(SCREEN_CENTER_X+150);diffusealpha,0;);
};

		
		--Animated grid
		LoadActor(THEME:GetPathB("","_door/scsh_hamnicam_blue"))..{
			InitCommand=cmd(FullScreen);
			OnCommand=function(self)
				local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
				local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
				self:customtexturerect(0,0,w,h);
				self:texcoordvelocity(2.5,0);
				self:cropright(.5);
				self:diffusealpha(0);
				self:sleep(dt);
				self:sleep(0.701);
				self:linear(0.2);
				self:diffusealpha(0.3);
				self:sleep(0.734);
				self:linear(0.099);
				self:diffusealpha(0);
			end;
		};

		LoadActor(THEME:GetPathB("","_door/scsh_hamnicam_blue"))..{
			InitCommand=cmd(FullScreen);
			OnCommand=function(self)
				local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
				local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
				self:customtexturerect(0,0,w,h);
				self:texcoordvelocity(-2.5,0);
				self:cropleft(.5);
				self:diffusealpha(0);
				self:sleep(dt);
				self:sleep(0.701);
				self:linear(0.2);
				self:diffusealpha(0.3);
				self:sleep(0.734);
				self:linear(0.099);
				self:diffusealpha(0);
			end;
		};
}
		--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,200;y,SCREEN_TOP+21;diffusealpha,0;;zoom,1);
    OnCommand=cmd(addy,-99;sleep,1.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,237;y,SCREEN_TOP+21;diffusealpha,0;;zoom,1);
    OnCommand=cmd(addy,-99;sleep,1.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,200;y,SCREEN_BOTTOM-21;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,1.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,237;y,SCREEN_BOTTOM-21;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,1.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
	
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,-200;y,SCREEN_TOP+21;diffusealpha,0;;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,1.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,-237;y,SCREEN_TOP+21;diffusealpha,0;;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,1.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_line_blue"))..{
		InitCommand=cmd(x,-200;y,SCREEN_BOTTOM-21;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,1.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back01_blue"))..{
		InitCommand=cmd(x,-237;y,SCREEN_BOTTOM-21;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,1.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
}
---------------------------------------------------------------------------------------
--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+87;diffusealpha,0;;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,1.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-87;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,1.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+87;diffusealpha,0;;zoom,1);
    OnCommand=cmd(addy,-99;sleep,1.2;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-87;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,1.2;linear,0.1;addy,-110;diffusealpha,1;);
	};
}

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+87;diffusealpha,0;zoomx,-1;);
    OnCommand=cmd(addy,-99;sleep,1.2;linear,0.1;addy,180;diffusealpha,1;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-87;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,1.2;linear,0.1;addy,-180;diffusealpha,1;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+87;diffusealpha,0;zoom,1);
    OnCommand=cmd(addy,-99;sleep,1.2;linear,0.1;addy,180;diffusealpha,1;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-87;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,1.2;linear,0.1;addy,-180;diffusealpha,1;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,5);
	};
}


	
t[#t+1] = LoadActor(THEME:GetPathB("","_door/scene_choice_stage_bg.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,Blend.Add);
	OnCommand=function(self)
		self:diffusealpha(0):zoom(2):sleep(dt):linear(0.264):diffusealpha(1):zoom(1);
	end;
};

if not GAMESTATE:IsCourseMode() and song:GetDisplayFullTitle() == "Tohoku EVOLVED" or song:GetDisplayFullTitle() == "COVID" then
	t[#t+1] = Def.ActorFrame {
	--Left
		LoadActor(THEME:GetPathB("","_door/scene_choice_prayfor"))..{
			OnCommand=cmd(zoom,1;x,SCREEN_LEFT-556;y,SCREEN_CENTER_Y;sleep,dt;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		};
	--Right
		LoadActor(THEME:GetPathB("","_door/scene_choice_prayfor"))..{
			OnCommand=cmd(zoom,1;x,SCREEN_RIGHT+556;y,SCREEN_CENTER_Y;sleep,dt;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		};
	--Glow
		LoadActor(THEME:GetPathB("","_door/scene_choice_prayfor"))..{
			OnCommand=cmd(zoom,1;diffusealpha,0;blend,Blend.Add;diffuseshift;effectperiod,0.55;effectcolor1,color("1,1,1,1");effectcolor2,color("0.5,0.5,0.5,1");
			diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,dt;sleep,0.116;linear,0.217;diffusealpha,0.5;);
		};
	}
else
	t[#t+1] = Def.ActorFrame {
	--Left
		LoadActor(THEME:GetPathB("","_door/scene_choice_clear"))..{
			OnCommand=cmd(zoom,1;x,SCREEN_LEFT-556;y,SCREEN_CENTER_Y;sleep,dt;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		};
	--Right
		LoadActor(THEME:GetPathB("","_door/scene_choice_clear"))..{
			OnCommand=cmd(zoom,1;x,SCREEN_RIGHT+556;y,SCREEN_CENTER_Y;sleep,dt;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		};
	--Glow
		LoadActor(THEME:GetPathB("","_door/scene_choice_clear"))..{
			OnCommand=cmd(zoom,1;diffusealpha,0;blend,Blend.Add;diffuseshift;effectperiod,0.55;effectcolor1,color("1,1,1,1");effectcolor2,color("0.5,0.5,0.5,1");
			diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,dt;sleep,0.116;linear,0.217;diffusealpha,0.5;);
		};
	}
end


return t;
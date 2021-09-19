local Image = Def.ActorFrame{
	LoadActor("pad") ..{
		InitCommand=cmd(diffusealpha,0;zoomx,1);
		OnCommand=cmd(zoom,0;sleep,0.5;linear,0.1;diffusealpha,1.0;zoom,1;smooth,0.1;zoom,0.9;smooth,0.1;zoom,1);
		GainFocusCommand=cmd(linear,0.2;x,-16;y,-14);
		LoseFocusCommand=cmd(linear,0.2;x,-100;y,51);
	};
	LoadActor("pad") ..{
		InitCommand=cmd(blend,Blend.Add;diffusealpha,0;zoomx,1;x,-16);
		GainFocusCommand=cmd(smooth,0.3;y,-14;diffusealpha,0.5;diffuseramp;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");effectperiod,0.43);
		LoseFocusCommand=cmd(diffusealpha,0;stoptweening;y,51);
	};
	LoadActor("scsest_modele_dp") ..{
		InitCommand=cmd(diffusealpha,0;zoomx,1);
		OnCommand=cmd(sleep,0.6;linear,0.1;diffusealpha,1;zoomy,0.8;linear,0.1;zoomy,1;zoomx,1.2;linear,0.1;zoomx,1);
		GainFocusCommand=cmd(linear,0.2;x,-16;y,-14);
		LoseFocusCommand=cmd(linear,0.2;x,-100;y,55);
	};
	LoadActor(THEME:GetPathG("","_blank"))..{
		GainFocusCommand=cmd(queuecommand,"Play");
		PlayCommand=function(self)
			if self:GetVisible() then
			SOUND:PlayOnce(THEME:GetPathS("","Announcer/ScreenSelectStyle Double"));
			end;
		end;
	};
};

local t = Def.ActorFrame{
	Image;
};

 

	
t[#t+1] = Def.ActorFrame{
  LoadActor(lang.."_title small")..{
    InitCommand=cmd(diffusealpha,0;x,166;y,-190;zoom,1.75);
    MenuLeftP1MessageCommand=cmd(playcommand,"Change1");
    MenuLeftP2MessageCommand=cmd(playcommand,"Change1");
    MenuRightP1MessageCommand=cmd(playcommand,"Change1");
    MenuRightP2MessageCommand=cmd(playcommand,"Change1");
    MenuUpP1MessageCommand=cmd(playcommand,"Change1");
    MenuUpP2MessageCommand=cmd(playcommand,"Change1");
    MenuDownP1MessageCommand=cmd(playcommand,"Change1");
    MenuDownP2MessageCommand=cmd(playcommand,"Change1");
    OnCommand=function(self)
        self:playcommand("Change1")
    end;
    Change1Command=function(self)
      local env = GAMESTATE:Env()
      if env.DOUBLESELECT then
        self:queuecommand("GainFocus")
      else
        self:finishtweening():linear(0.1):cropright(1):sleep(0.3):queuecommand("Change2")
      end;
    end;
    Change2Command=cmd(zoomy,1.75;cropright,1;diffusealpha,1;linear,0.2;cropright,0;queuecommand,"Animate");
    GainFocusCommand=function(self)
      local env = GAMESTATE:Env()
      env.DOUBLESELECT = true
      self:stoptweening():linear(0.1):zoomy(0)
    end;
    LoseFocusCommand=function(self)
      local env = GAMESTATE:Env()
      env.DOUBLESELECT = false
    end;
    AnimateCommand=cmd(linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,0;sleep,1;queuecommand,"Animate");
    OffCommand=cmd(stoptweening;smooth,0.2;zoom,0;diffusealpha,0;);
  };
};

return t;

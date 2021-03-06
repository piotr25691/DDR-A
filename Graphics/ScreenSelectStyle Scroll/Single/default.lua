local Image = Def.ActorFrame{
	LoadActor("pad") ..{
		InitCommand=cmd(diffusealpha,0;zoomx,1);
		OnCommand=cmd(zoom,0;sleep,0.5;linear,0.1;diffusealpha,1.0;zoom,1;smooth,0.1;zoom,0.9;smooth,0.1;zoom,1);
		GainFocusCommand=cmd(linear,0.2;x,-18;y,-18);
		LoseFocusCommand=cmd(linear,0.2;x,-40;y,61);
	};
	LoadActor("pad") ..{
		InitCommand=cmd(blend,Blend.Add;diffusealpha,0;zoomx,1);
		OnCommand=cmd(zoom,0;sleep,0.5;linear,0.1;diffusealpha,1.0;zoom,1;smooth,0.1;zoom,0.9;smooth,0.1;zoom,1);
		GainFocusCommand=cmd(smooth,0.3;xy,-18,-18;diffusealpha,0.5;diffuseramp;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0");effectperiod,0.43);
		LoseFocusCommand=cmd(diffusealpha,0;stoptweening;xy,-40,61);
	};
	LoadActor("scsest_modele_sp") ..{
		InitCommand=cmd(diffusealpha,0;zoomx,1);
		OnCommand=cmd(sleep,0.6;linear,0.1;diffusealpha,1;zoomy,0.8;linear,0.1;zoomy,1;zoomx,1.2;linear,0.1;zoomx,1);
		GainFocusCommand=cmd(linear,0.2;x,-24;y,-5);
		LoseFocusCommand=cmd(linear,0.2;x,-28;y,68);
	};
	LoadActor(THEME:GetPathG("","_blank"))..{
		GainFocusCommand=cmd(queuecommand,"Play");
		PlayCommand=function(self)
			if self:GetVisible() then
			SOUND:PlayOnce(THEME:GetPathS("","Announcer/ScreenSelectStyle Single"));
			end;
		end;
	};
};

local t = Def.ActorFrame{
	Image;
};

t[#t+1] = Def.ActorFrame{
  LoadActor(lang.."_title small")..{
    InitCommand=cmd(diffusealpha,0;x,158;y,-190;zoom,1.75;);
    MenuLeftP1MessageCommand=cmd(playcommand,"Change1");
    MenuLeftP2MessageCommand=cmd(playcommand,"Change1");
    MenuRightP1MessageCommand=cmd(playcommand,"Change1");
    MenuRightP2MessageCommand=cmd(playcommand,"Change1");
    MenuUpP1MessageCommand=cmd(playcommand,"Change1");
    MenuUpP2MessageCommand=cmd(playcommand,"Change1");
    MenuDownP1MessageCommand=cmd(playcommand,"Change1");
    MenuDownP2MessageCommand=cmd(playcommand,"Change1");
    OnCommand=function(self)
      if GAMESTATE:GetNumPlayersEnabled() == 2 then
        local env = GAMESTATE:Env()
        env.SINGLESELECT = false
        self:playcommand("Change1")
      else
        self:queuecommand("GainFocus")
      end;
    end;
    Change1Command=function(self)
      local env = GAMESTATE:Env()
      if env.SINGLESELECT then
        self:queuecommand("GainFocus")
      else
        self:finishtweening():linear(0.1):cropright(1):sleep(0.3):queuecommand("Change2")
      end;
    end;
    Change2Command=cmd(zoomy,1.75;cropright,1;diffusealpha,1;linear,0.2;cropright,0;queuecommand,"Animate");
    GainFocusCommand=function(self)
      local env = GAMESTATE:Env()
      env.SINGLESELECT = true
      self:stoptweening():linear(0.1):zoomy(0)
    end;
    LoseFocusCommand=function(self)
      local env = GAMESTATE:Env()
      env.SINGLESELECT = false
    end;
    AnimateCommand=cmd(linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,0;sleep,1;queuecommand,"Animate");
    OffCommand=cmd(stoptweening;smooth,0.2;zoom,0;diffusealpha,0;);
  };
};

return t;

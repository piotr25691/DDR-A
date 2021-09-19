local t = Def.ActorFrame{};

local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
	Stage_1st		= 1,
	Stage_2nd		= 2,
	Stage_3rd		= 3,
	Stage_4th		= 4,
	Stage_5th		= 5,
	Stage_6th		= 6,
};

if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
	sStage = "Stage_Final";
else
	sStage = sStage;
end;

if GAMESTATE:IsExtraStage() then
t[#t+1] = Def.ActorFrame{
  InitCommand=cmd(xy,SCREEN_LEFT+127,SCREEN_TOP+56);
  Def.ActorFrame{
	  OnCommand=function(s) s:zoomy(0):sleep(0.3):linear(0.1):zoomy(1) end,
		
		LoadActor("mode_nm_bs_mult_ex.png")..{
			InitCommand=cmd(y,-2;zoomx,0.98;zoomy,0.94);
		};
	};
};
else
t[#t+1] = Def.ActorFrame{
  InitCommand=cmd(xy,SCREEN_LEFT+127,SCREEN_TOP+56);
  Def.ActorFrame{
	  OnCommand=function(s) s:zoomy(0):sleep(0.3):linear(0.1):zoomy(1) end,
		
		LoadActor("mode_nm_bs_mult.png")..{
			InitCommand=cmd(y,-2;zoomx,0.98;zoomy,0.94);
		};
	};
};
end;

t[#t+1] = Def.ActorFrame{
  InitCommand=cmd(xy,SCREEN_LEFT+127,SCREEN_TOP+56);
  Def.ActorFrame{
	  OnCommand=function(s) s:zoomy(0):sleep(0.3):linear(0.1):zoomy(1) end,
	LoadActor("expl_wido_tate_line_vertical.png")..{
	  InitCommand=cmd(x,-99;zoomy,0.76);
	};
	LoadActor("expl_wido_tate_line_vertical.png")..{
	  InitCommand=cmd(x,-99;zoomy,0.76);
	};
	LoadActor("expl_wido_tate_line_vertical.png")..{
	  InitCommand=cmd(x,98;zoomy,0.76);
	};
	LoadActor("expl_wido_tate_line_vertical.png")..{
	  InitCommand=cmd(x,98;zoomy,0.76);
	};
	LoadActor("expl_wido_tate_line_horizontal.png")..{
	  InitCommand=cmd(y,-32;zoomx,2.4);
	};
	LoadActor("expl_wido_tate_line_horizontal.png")..{
	  InitCommand=cmd(y,-32;zoomx,2.4);
	};
	LoadActor("expl_wido_tate_line_horizontal.png")..{
	  InitCommand=cmd(y,28;zoomx,2.4);
	};
	LoadActor("expl_wido_tate_line_horizontal.png")..{
	  InitCommand=cmd(y,28;zoomx,2.4);
	};
	LoadActor("mode_nm_bs_cross.png")..{
	  InitCommand=cmd(xy,-99,-32);
	};
	LoadActor("mode_nm_bs_cross.png")..{
	  InitCommand=cmd(xy,-99,28);
	};
	LoadActor("mode_nm_bs_cross.png")..{
	  InitCommand=cmd(xy,98,28);
	};
	LoadActor("mode_nm_bs_cross.png")..{
	  InitCommand=cmd(xy,98,-32);
	}; 
	LoadActor("mode_name_musicselect.png")..{
	  InitCommand=cmd(xy,-40,-19);
	};
	LoadActor("mode_nm_bs_deco_line.png")..{
	  InitCommand=cmd(xy,-35,-16);
	};
	LoadActor("mode_nm_bs_demo_shp.png")..{
	  InitCommand=cmd(xy,33,-26;zoom,0.9);
	};
  };
  Def.Sprite{
		InitCommand=cmd(xy,0,6);
		OnCommand=function(self)
			if GAMESTATE:GetPlayMode() == 'PlayMode_Regular' then
				self:Load(THEME:GetPathB("", "ScreenSelectMusic overlay/mode/Stage " .. ToEnumShortString(sStage) ));
				self:diffusealpha(0):sleep(0.2):linear(0.2):diffusealpha(1);
			end;
		end;
	};
};

--Stage BG
t[#t+1] = Def.ActorFrame {
	LoadActor( "stageeffect01" )..{
		InitCommand=cmd(x,SCREEN_LEFT+123;y,SCREEN_TOP+77;zoom,14;);
		OnCommand=cmd(zoomy,0;linear,0.1;zoomy,1.5;customtexturerect,0,0,20,1;texcoordvelocity,5,0);
		OffCommand=cmd(linear,0.1;zoomy,1.5);
		
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "stageeffect02" )..{
		InitCommand=cmd(x,SCREEN_LEFT+113;y,SCREEN_TOP+79;zoom,14;);
		OnCommand=cmd(zoomy,0;linear,0.1;zoomy,1.5;customtexturerect,0,0,10,1;texcoordvelocity,-1,0;playcommand,"Animate");
		OffCommand=cmd(stopeffect;stoptweening;linear,0.1;zoomy,1.5);
		AnimateCommand=cmd(linear,0.3;addx,20;linear,1.5;addx,-20;linear,0.6;addx,5;linear,1.3;addx,-5;linear,0.6;addx,15;linear,0.5;addx,-15;queuecommand,"Animate");
	}
};

return t;

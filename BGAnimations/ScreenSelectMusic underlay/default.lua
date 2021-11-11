local dufficulty_wnidow = LoadActor("00di_x_dufficulty_wnidow_base");
local grooverader = LoadActor("00di_grooverader");
local rival_window = LoadActor("00di_x_rival_window");
local rival_window_square = LoadActor("00di_grop_rival_window_square");
local midd_deco1 = LoadActor("up_module_midd_deco1");
local bold = LoadActor("up_module_up_bold");
local square = LoadActor("up_module_up_square");
local line = LoadActor("up_module_up_line");
local deco1 = LoadActor("up_module_up_deco1");
local under_line2 = LoadActor("up_module_under_line2");
local deco_bold = LoadActor("up_module_up_deco_bold");
local scrollbar_down_base = LoadActor("scrollbar_down_base");
local scrollbar_down_line = LoadActor("scrollbar_down_line");
local scrollbar_up_base = LoadActor("scrollbar_up_base");
local scrollbar_up_line = LoadActor("scrollbar_up_line");
local scrollbar_lane_base = LoadActor("scrollbar_lane_base");
local scrollbar_lane_line = LoadActor("scrollbar_lane_line");

return Def.ActorFrame{
  InitCommand=function(s) s:diffusealpha(1) end,
  Def.ActorFrame{
    Name="PanelBackers";
    Def.ActorFrame{
      InitCommand=function(s) s:y(_screen.cy-142) end,
      dufficulty_wnidow..{
        InitCommand=function(s) s:halign(0):x(SCREEN_LEFT-9) end,
      };
      dufficulty_wnidow..{
        InitCommand=function(s) s:halign(0):x(SCREEN_RIGHT+9):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:y(_screen.cy-72):diffusealpha(0.5) end,
      midd_deco1..{
        InitCommand=function(s) s:halign(0):x(SCREEN_LEFT+313) end,
      };
      midd_deco1..{
        InitCommand=function(s) s:halign(0):x(SCREEN_RIGHT-310):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:y(_screen.cy-229):diffusealpha(0.5) end,
      bold..{
        InitCommand=function(s) s:halign(0):x(SCREEN_LEFT-105) end,
      };
      bold..{
        InitCommand=function(s) s:halign(0):x(SCREEN_RIGHT+105):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:y(_screen.cy-169):diffusealpha(0.5) end,
      deco_bold..{
        InitCommand=function(s) s:halign(0):x(SCREEN_LEFT+295) end,
      };
      deco_bold..{
        InitCommand=function(s) s:halign(0):x(SCREEN_RIGHT-295):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:y(_screen.cy-186):diffusealpha(0.5) end,
      square..{
        InitCommand=function(s) s:halign(0):x(SCREEN_LEFT+305) end,
      };
      square..{
        InitCommand=function(s) s:halign(0):x(SCREEN_RIGHT-303):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:y(_screen.cy-325):diffusealpha(0.5) end,
      deco1..{
        InitCommand=function(s) s:halign(0):x(SCREEN_LEFT+292) end,
      };
      deco1..{
        InitCommand=function(s) s:halign(0):x(SCREEN_RIGHT-290):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:y(_screen.cy-311):diffusealpha(0.5) end,
      line..{
        InitCommand=function(s) s:halign(0):x(SCREEN_LEFT+304) end,
      };
      line..{
        InitCommand=function(s) s:halign(0):x(SCREEN_RIGHT-302):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:y(_screen.cy+83):diffusealpha(0.5) end,
      under_line2..{
        InitCommand=function(s) s:halign(0):x(SCREEN_LEFT-277) end,
      };
      under_line2..{
        InitCommand=function(s) s:halign(0):x(SCREEN_RIGHT+279):zoomx(-1) end,
      };
    };
    Def.ActorFrame{
      InitCommand=function(s) s:y(SCREEN_BOTTOM-14) end,
      rival_window_square..{
        InitCommand=function(s) s:align(0.37,0.48):x(SCREEN_LEFT) end,
      };
      rival_window_square..{
        InitCommand=function(s) s:align(0.37,0.48):x(SCREEN_RIGHT):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:y(SCREEN_BOTTOM-14) end,
      rival_window..{
        InitCommand=function(s) s:align(0.114,0.6):x(SCREEN_LEFT) end,
      };
      rival_window..{
        InitCommand=function(s) s:align(0.114,0.6):x(SCREEN_RIGHT):zoomx(-1) end,
      };
    };
    Def.ActorFrame{
      InitCommand=function(s) s:y(SCREEN_BOTTOM+10) end,
      grooverader..{
        InitCommand=function(s) s:align(0.26,2.18):x(SCREEN_LEFT-4) end,
      };
      grooverader..{
        InitCommand=function(s) s:align(0.26,2.18):x(SCREEN_RIGHT+4):zoomx(-1) end,
      };
    };
	Def.ActorFrame{
      InitCommand=function(s) s:halign(0):y(_screen.cy-3):x(SCREEN_RIGHT-288):diffusealpha(1) end,
      scrollbar_lane_base;
      scrollbar_lane_line;
    };
	Def.ActorFrame{
      InitCommand=function(s) s:halign(0):y(_screen.cy-140):x(SCREEN_RIGHT-320):diffusealpha(1) end,
      scrollbar_up_base;
      scrollbar_up_line;
    };
	Def.ActorFrame{
      InitCommand=function(s) s:halign(0):y(_screen.cy+123):x(SCREEN_RIGHT-240):diffusealpha(1) end,
      scrollbar_down_base;
      scrollbar_down_line;
    };
  };
};

return Def.ActorFrame{
	LoadActor(THEME:GetPathS("Doors","Open")) .. {
		OnCommand=cmd(play);
	};
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/ddra_bg_hd"))..{
		InitCommand=cmd(FullScreen);
		OnCommand=cmd(linear,0.05;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back_inter_blue"))..{
		InitCommand=function(self)
			self:FullScreen():diffusealpha(0.4)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(2,8.3,w,h);
			self:texcoordvelocity(0,0);
		end;
		OnCommand=cmd(linear,0.05;diffusealpha,0);
	};
	Def.ActorFrame{
		InitCommand=cmd(CenterX);	
	--UP
		LoadActor(THEME:GetPathB("","_door/scch_frame_green.png"))..{
			InitCommand=cmd(x,378;y,SCREEN_TOP+163;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-163;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/scch_frame_green.png"))..{
			InitCommand=cmd(x,-378;y,SCREEN_TOP+163);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-163;diffusealpha,0);
		};
	--FLASH
		LoadActor(THEME:GetPathB("","_door/scch_edge_flash_green.png"))..{
			InitCommand=cmd(x,379;y,SCREEN_TOP+51;zoom,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-51;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/scch_edge_flash_green.png"))..{
			InitCommand=cmd(x,-379;y,SCREEN_TOP+51;zoomy,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-51;diffusealpha,0);
		};
	--DOWN
		LoadActor(THEME:GetPathB("","_door/scch_frame_green.png"))..{
			InitCommand=cmd(x,378;y,SCREEN_BOTTOM-126;zoom,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+126;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/scch_frame_green.png"))..{
			InitCommand=cmd(x,-378;y,SCREEN_BOTTOM-126;zoomy,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+126;diffusealpha,0);
		};
	--FLASH
		LoadActor(THEME:GetPathB("","_door/scch_edge_flash_green.png"))..{
			InitCommand=cmd(x,379;y,SCREEN_BOTTOM-51;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+51;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/scch_edge_flash_green.png"))..{
			InitCommand=cmd(x,-379;y,SCREEN_BOTTOM-51);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+51;diffusealpha,0);
		};
	--DECORATIONS
	--LEFT
		LoadActor(THEME:GetPathB("","_door/coch_hud_side01.png"))..{
			InitCommand=cmd(x,-470;y,SCREEN_CENTER_Y-63);
			OnCommand=cmd(linear,0.45;zoom,2;addx,-470;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_side02.png"))..{
			InitCommand=cmd(x,-538;y,SCREEN_CENTER_Y-63);
			OnCommand=cmd(linear,0.45;zoom,2;addx,-470;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_side03.png"))..{
			InitCommand=cmd(x,-565;y,SCREEN_CENTER_Y-137);
			OnCommand=cmd(linear,0.45;zoom,2;addx,-470;diffusealpha,0);
		};
	--RIGHT
		LoadActor(THEME:GetPathB("","_door/coch_hud_side01.png"))..{
			InitCommand=cmd(x,470;y,SCREEN_CENTER_Y-63;zoomx,-1);
			OnCommand=cmd(linear,0.45;zoomx,-2;zoomy,2;addx,470;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_side02.png"))..{
			InitCommand=cmd(x,538;y,SCREEN_CENTER_Y-63;zoomx,-1);
			OnCommand=cmd(linear,0.45;zoomx,-2;zoomy,2;addx,470;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_side03.png"))..{
			InitCommand=cmd(x,565;y,SCREEN_CENTER_Y-137;zoomx,-1);
			OnCommand=cmd(linear,0.45;zoomx,-2;zoomy,2;addx,470;diffusealpha,0);
		};
	--Up
		LoadActor(THEME:GetPathB("","_door/coch_hud_top02.png"))..{
			InitCommand=cmd(x,225;y,111;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,-111;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_top02.png"))..{
			InitCommand=cmd(x,-225;y,111);
			OnCommand=cmd(linear,0.45;y,-111;diffusealpha,0);
		};
	--Down
		LoadActor(THEME:GetPathB("","_door/coch_hud_under01.png"))..{
			InitCommand=cmd(x,426;y,SCREEN_BOTTOM-66;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+66;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_under01.png"))..{
			InitCommand=cmd(x,-426;y,SCREEN_BOTTOM-66;);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+66;diffusealpha,0);
		};
	--Up
		LoadActor(THEME:GetPathB("","_door/coch_hud_top01.png"))..{
			InitCommand=cmd(x,288;y,SCREEN_TOP+24;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-24;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_top01.png"))..{
			InitCommand=cmd(x,-288;y,SCREEN_TOP+24);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-24;diffusealpha,0);
		};
	--Down
		LoadActor(THEME:GetPathB("","_door/coch_hud_under02.png"))..{
			InitCommand=cmd(x,168;y,SCREEN_BOTTOM-179;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+179;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_under02.png"))..{
			InitCommand=cmd(x,-168;y,SCREEN_BOTTOM-179;);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+179;diffusealpha,0);
		};
	--Down
		LoadActor(THEME:GetPathB("","_door/coch_hud_under03.png"))..{
			InitCommand=cmd(x,262;y,SCREEN_BOTTOM-108;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+108;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_under03.png"))..{
			InitCommand=cmd(x,-262;y,SCREEN_BOTTOM-108;);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+108;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_centeru.png"))..{
			InitCommand=cmd(y,SCREEN_BOTTOM-75;);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+75;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_door/coch_hud_centerup.png"))..{
			InitCommand=cmd(y,SCREEN_TOP+40;);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-40;diffusealpha,0);
		};
	--LIGHT UP
		LoadActor(THEME:GetPathB("","_door/cosh_burst_flare_green.png"))..{
			InitCommand=cmd(zoomx,1.4;zoomy,0.7;x,SCREEN_LEFT+20;y,SCREEN_TOP+38;blend,Blend.Add;diffusealpha,1;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0.9");effectperiod,0.02);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-38;diffusealpha,0);
		};
	--LIGHT DOWN
		LoadActor(THEME:GetPathB("","_door/cosh_burst_flare_green.png"))..{
			InitCommand=cmd(zoomx,1.4;zoomy,0.7;x,SCREEN_LEFT;y,SCREEN_BOTTOM+20;blend,Blend.Add;diffusealpha,1;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0.9");effectperiod,0.02);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+20;diffusealpha,0);
		};
	};
	LoadActor(THEME:GetPathB("","_door/cosh_burst_flare_green")) .. {
			InitCommand=cmd(Center;FullScreen;blend,Blend.Add;diffusealpha,0.5);
			OnCommand=cmd(linear,0.55;diffusealpha,0;zoom,9*1);
		};
};
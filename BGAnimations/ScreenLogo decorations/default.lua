return Def.ActorFrame{
	LoadActor("deti_logo")..{
		InitCommand=cmd(CenterX;y,_screen.cy-52;zoom,0.86);
	};
	
	LoadActor("copyright2019")..{
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-147;zoom,0.8);
	};
	
	Def.Quad{
		InitCommand=cmd(diffuse,Color("White");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;);
		OnCommand=cmd(linear,0.25;diffusealpha,0;sleep,9.5;linear,0.25;diffusealpha,1;);
	};
	
	LoadActor(THEME:GetPathB("","_Arcade decorations"));
	
	LoadActor(THEME:GetPathB("","ModDate"));
	
	LoadActor(THEME:GetPathS("Screenlogo","Voice"))..{
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};
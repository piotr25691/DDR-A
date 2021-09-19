return Def.ActorFrame {
	--LoadActor(THEME:GetPathB("","_bluebg"));
	LoadActor(THEME:GetPathG("ScreenWithMenuElements","header/base"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,-40;zoom,1);
		OnCommand=cmd(linear,0.25;y,30);
		OffCommand=cmd(linear,0.25;addy,-40);
	};
	LoadActor(THEME:GetPathG("ScreenWithMenuElements","header/text/EDIT MODE"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,-40;zoom,1);
		OnCommand=cmd(linear,0.25;y,24);
		OffCommand=cmd(linear,0.25;addy,-40);
	};
	LoadActor("Back") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(zoomx,0;linear,0.25;zoomx,1);
		OffCommand=cmd(sleep,0.3;linear,0.25;zoomx,0);
	};
	LoadActor("bar_long") .. {
		InitCommand = cmd(zoom,0.6;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-60);
	};
};

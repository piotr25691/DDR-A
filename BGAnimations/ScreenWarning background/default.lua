return Def.ActorFrame {
  InitCommand=cmd();
	Def.ActorFrame {
		Def.Quad{
			InitCommand=cmd(diffuse,color("#CC0000");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;sleep,1;linear,0.25;diffusealpha,1;);
		};
		LoadActor(lang.."_dewa_warning")..{
			InitCommand=cmd(FullScreen;sleep,3;linear,0.25;diffusealpha,0;);
		};
		Def.Quad{
			InitCommand=cmd(diffuse,Color("White");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;sleep,0.5;linear,0.25;diffusealpha,0;);
		};
    };
};
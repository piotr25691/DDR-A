return Def.ActorFrame {
	InitCommand=function(self)
		self:x(0);
		self:y(-9);
	end;
	LoadActor("coti_base_tri.png")..{
		InitCommand=cmd(zoom,1);
		OffCommand=cmd(linear,0.25;zoom,1.1;diffusealpha,0);
	};
	LoadActor("coti_base_tri_line.png")..{
		OnCommand=cmd(playcommand,"Animate");
		AnimateCommand=cmd(zoom,0.75;diffusealpha,1;linear,0.2;zoom,1.1;diffusealpha,1;linear,0.2;diffusealpha,0;sleep,0.6;queuecommand,"Animate");
		OffCommand=cmd(stoptweening,linear,0.25;zoom,1.15;diffusealpha,0);
	};
	
	Def.ActorFrame{
		OnCommand=cmd(playcommand,"Animate");
		AnimateCommand=cmd(diffusealpha,1;linear,0.4;diffusealpha,0;sleep,0.6;queuecommand,"Animate");
		OffCommand=cmd(stoptweening;linear,0.25;zoom,1.1;diffusealpha,0);
		Def.Sprite{
			Texture="coti_base_tri_center_light.png",
		};
		Def.Sprite{
			Texture="coti_base_tri_eff.png",
		};	
	}
	
	
}
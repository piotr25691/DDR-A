local t = LoadFallbackB();


t[#t+1] = Def.ActorFrame {
  LoadActor(THEME:GetPathS("","Profile_start"))..{
		OnCommand=cmd(play);
	};
};

t[#t+1] = Def.ActorFrame {
  LoadActor(THEME:GetPathS("","Profile_In"))..{
		OnCommand=cmd(play);
	};
};

t[#t+1] = LoadActor( THEME:GetPathS("","Profile_start") )..{
			OffCommand=cmd(play);
};

t[#t+1] = LoadActor("_bluebg");
  
return t

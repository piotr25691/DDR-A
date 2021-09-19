local t = LoadFallbackB();

t[#t+1] = Def.ActorFrame {
  LoadActor(THEME:GetPathB("","ModDate"));
  LoadActor(THEME:GetPathS("","Profile_In"))..{
		OnCommand=cmd(play);
	};
};

return t

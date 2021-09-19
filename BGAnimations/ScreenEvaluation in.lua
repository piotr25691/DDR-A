local t = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenEvaluation","Score"))..{
		StartTransitioningCommand=cmd(stop;sleep,0.5;play);
	};
};

if (STATSMAN:GetCurStageStats():AllFailed()) then
	t[#t+1]=LoadActor(THEME:GetPathB("","_failed_doors open.lua"));
else
	t[#t+1]=LoadActor(THEME:GetPathB("","_cleared_doors open.lua"));
end



return t;

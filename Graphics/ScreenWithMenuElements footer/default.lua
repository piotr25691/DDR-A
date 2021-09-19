local screenName = Var "LoadingScreen"
local t = Def.ActorFrame{};

t[#t+1] = LoadActor("coopgu_ope_base") .. {
	InitCommand=cmd(y,7;zoom,1);
	OffCommand=cmd(linear,0.2;zoomy,0);
};

if screenName == "ScreenSelectMusic" then
t[#t+1] = Def.ActorFrame{
  LoadActor(THEME:GetPathG("ScreenWithMenuElements","footer/selmus.lua"));
};
end

if screenName == "ScreenEvaluationNormal" then
t[#t+1] = Def.ActorFrame{
  LoadActor(THEME:GetPathG("ScreenWithMenuElements","footer/eval.lua"));
};
end

if screenName == "ScreenEvaluationSummary" then
t[#t+1] = Def.ActorFrame{
  LoadActor(THEME:GetPathG("ScreenWithMenuElements","footer/skip.lua"));
};
end

return t;
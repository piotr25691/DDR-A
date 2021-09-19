local t = Def.ActorFrame{};
local screenName = Var "LoadingScreen"
local disp_stage = "Stage_1st";
local Stage = GAMESTATE:GetCurrentStage();
local StageIndex = GAMESTATE:GetCurrentStageIndex();
local FinalIndex = PREFSMAN:GetPreference("SongsPerPlay");

if not PREFSMAN:GetPreference("EventMode") then
	if GAMESTATE:HasEarnedExtraStage() then
		if StageIndex == FinalIndex+1 then
			t[#t+1] = LoadActor(THEME:GetPathB("","ScreenWithMenuElements background/encore.lua"));
		end;
	end;
end;


return t;
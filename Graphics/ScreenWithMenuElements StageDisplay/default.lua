local t = Def.ActorFrame{};
local disp_stage = "Stage_1st";
local Stage = GAMESTATE:GetCurrentStage();
local StageIndex = GAMESTATE:GetCurrentStageIndex();
local FinalIndex = PREFSMAN:GetPreference("SongsPerPlay");

if PREFSMAN:GetPreference("EventMode") then
	disp_stage = "Stage_Event";
	--Final
	elseif StageIndex == FinalIndex then
	disp_stage = "Stage_Final";
	--Extra1
	elseif StageIndex == FinalIndex+1 then
	disp_stage = "Stage_Extra1";
	--Extra2
	elseif StageIndex == FinalIndex+2 then
	disp_stage = "Stage_Extra2";
else
	if StageIndex == 1 then
		disp_stage = "Stage_1st";
	elseif StageIndex == 2 then
		disp_stage = "Stage_2nd";
	elseif StageIndex == 3 then
		disp_stage = "Stage_3rd";
	elseif StageIndex == 4 then
		disp_stage = "Stage_4th";
	elseif StageIndex == 5 then
		disp_stage = "Stage_5th";
	elseif StageIndex == 6 then
		disp_stage = "Stage_6th";
	end;
end;

t[#t+1] = LoadActor("Eval_"..disp_stage)..{
	InitCommand = function(self)
	self:zoomx(1.6);
	self:zoomy(1.3);
	self:x(SCREEN_LEFT+190);
	self:y(SCREEN_TOP+17);
	end;
};

return t;

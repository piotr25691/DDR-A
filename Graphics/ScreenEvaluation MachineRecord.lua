local Player = ...
assert(Player,"MachineRecord needs Player")
local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(Player);
local record = stats:GetMachineHighScoreIndex()
local hasMachineRecord = record ~= -1
local t = Def.ActorFrame {};

if PREFSMAN:GetPreference("PercentageScoring")==false then
t[#t+1] = LoadActor("dum02_rsnew0")..{
	BeginCommand=function(self)
		self:visible(hasMachineRecord);
	end;
};
else
t[#t+1] = LoadActor("dum02_rsnew1")..{
	BeginCommand=function(self)
		self:visible(hasMachineRecord);
	end;
};
end;
--[[if hasMachineRecord then
t[#t+1] = LoadActor( THEME:GetPathS("ScreenEvaluation", "NewRecord") ) .. {
		BeginCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};	
end]]

return t;
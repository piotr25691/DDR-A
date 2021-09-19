local Player = ...
assert(Player,"PersonalRecord needs Player")
local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(Player);
local record = stats:GetPersonalHighScoreIndex()
local hasPersonalRecord = record ~= -1
local t = Def.ActorFrame {};

if PREFSMAN:GetPreference("PercentageScoring")==false then
t[#t+1] = LoadActor("dum02_rsnew0")..{
	BeginCommand=function(self)
		self:visible(hasPersonalRecord);
	end;
};
else
t[#t+1] = LoadActor("dum02_rsnew1")..{
	BeginCommand=function(self)
		self:visible(hasPersonalRecord);
	end;
};
end;
if hasPersonalRecord then
t[#t+1] = LoadActor( THEME:GetPathS("ScreenEvaluation", "NewRecord") ) .. {
		BeginCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};	
end;

return t;

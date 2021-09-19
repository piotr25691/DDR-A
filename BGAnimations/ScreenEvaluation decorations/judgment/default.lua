local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame{
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("0,0,0,1"))
			self:setsize(458,30)
			self:y(-107);
		end;
	};
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("0,0,0,1"))
			self:setsize(458,29)
			self:y(108);
		end;
	};
	LoadActor("scre_maxcombo")..{
		InitCommand=cmd(xy,-87,-108);
	};
};

if not PREFSMAN:GetPreference("PercentageScoring") then
	t[#t+1] = LoadActor("scre_exscore")..{
		InitCommand=cmd(xy,-74,108);
	};
else
	t[#t+1] = LoadActor("scre_score")..{
		InitCommand=cmd(xy,-74,108);
	};
end;

t[#t+1] = Def.ActorFrame{
	LoadActor("scre_judge_marvelous")..{
		InitCommand=cmd(xy,-71,-75);
	};
	LoadActor("scre_judge_perfect")..{
		InitCommand=cmd(xy,-71,-44);
	};
	LoadActor("scre_judge_great")..{
		InitCommand=cmd(xy,-71,-13);
	};
	LoadActor("scre_judge_good")..{
		InitCommand=cmd(xy,-71,18);
	};
	LoadActor("scre_judge_ok")..{
		InitCommand=cmd(xy,-71,48);
	};
	LoadActor("scre_judge_miss")..{
		InitCommand=cmd(xy,-71,76);
	};
};

if GetUserPrefB("UserPrefGameplayShowFastSlow") then
t[#t+1] = Def.ActorFrame{
	LoadActor("scre_fsbase_fast")..{
		InitCommand=cmd(xy,176,8);
	};
	LoadActor("scre_judge_fast")..{
		InitCommand=cmd(xy,131,-11);
	};
	LoadActor("scre_fsbase_slow")..{
		InitCommand=cmd(xy,176,65);
	};
	LoadActor("scre_judge_slow")..{
		InitCommand=cmd(xy,133,47);
	};
};
end;

return t
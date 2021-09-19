local player = ...;

local Combo = 	STATSMAN:GetCurStageStats():GetPlayerStageStats(player):MaxCombo();

local Marvelous = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W1");
local Perfect = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W2");
local Great = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W3");
local Good = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W4");
local Ok = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_Held");
local Miss = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_Miss") + STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W5");

local Fast=getenv("numFast"..ToEnumShortString(player));
local Slow=getenv("numSlow"..ToEnumShortString(player));

local Score = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetScore();
local EXScore = math.floor(STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetPossibleDancePoints())*(STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetPercentDancePoints())+0.5


local Large = Def.BitmapText{
	Font="_itc avant garde pro bk 20px",
	InitCommand=function(s) s:zoom(1.2) end,
};

local Judge = Def.BitmapText{
	Font="_helveticaneuelt pro 55 roman 17px",
	InitCommand=function(s) s:zoom(1.3):halign(1)
		:DiffuseAndStroke(Color.Black,Color.White)
	end,
};


local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame{
	Large..{
		Name="MaxCombo",
		InitCommand=function(s)
			s:xy(15,-107):halign(1)
			:settextf(Combo)
		end,
	};
	Judge..{
		Name="Marvelous",
		InitCommand=function(s)
			s:xy(18,-76):halign(1)
			:settextf(Marvelous)
		end,
	};
	Judge..{
		Name="Perfect",
		InitCommand=function(s)
			s:xy(18,-45):halign(1)
			:settextf(Perfect)
		end,
	};
	Judge..{
		Name="Great",
		InitCommand=function(s)
			s:xy(18,-15):halign(1)
			:settextf(Great)
		end,
	};
	Judge..{
		Name="Good",
		InitCommand=function(s)
			s:xy(18,15):halign(1)
			:settextf(Good)
		end,
	};
	Judge..{
		Name="Ok",
		InitCommand=function(s)
			s:xy(18,45):halign(1)
			:settextf(Ok)
		end,
	};
	Judge..{
		Name="Miss",
		InitCommand=function(s)
			s:xy(18,75):halign(1)
			:settextf(Miss)
		end,
	};
}

if not PREFSMAN:GetPreference("PercentageScoring") and PREFSMAN:GetPreference("DancePointsForOni") then
t[#t+1] = Def.ActorFrame{
Large..{
		Name="EXScore",
		InitCommand=function(s)
			s:xy(18,107):halign(1)
			:settextf("%4d",EXScore)
		end,
	};
}
else
t[#t+1] = Def.ActorFrame{
Large..{
		Name="Score",
		InitCommand=function(s)
			s:xy(58,107):halign(1)
			:settextf("%4d",Score)
		end,
	};
}
end;

if GetUserPrefB("UserPrefGameplayShowFastSlow") then
t[#t+1] = Def.ActorFrame{
	Judge..{
		Name="Fast",
		InitCommand=function(s)
			s:xy(130,11):halign(1)
			:settextf(Fast)
		end,
	};
	Judge..{
		Name="Slow",
		InitCommand=function(s)
			s:xy(130,70):halign(1)
			:settextf(Slow)
		end,
	};
};
end;

return t

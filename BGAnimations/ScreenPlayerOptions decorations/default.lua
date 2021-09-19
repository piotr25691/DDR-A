local t = Def.ActorFrame{
	InitCommand=function(s) s:queuecommand("Tick") end,
	TickCommand=function(s)
		if getenv("Timer") == 80 then
			s:queuecommand("Remove")
		end
		s:sleep(1):queuecommand("Tick")
	end,
	RemoveCommand=function(s)
		SCREENMAN:GetTopScreen():PostScreenMessage('SM_GoToPrevScreen',1);
	end,
	Def.Quad{
		InitCommand=function(s) s:diffuse(color("0,0,0,0.5")):FullScreen() end,
		OnCommand=function(s) s:diffusealpha(0):sleep(0.1):linear(0.2):diffusealpha(0.5) end,
		OffCommand=function(s) s:linear(0.2):diffusealpha(0) end,
	};
};


local RSO = math.random(1,2);
t[#t+1] = Def.ActorFrame {
	LoadActor("swoosh") .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	LoadActor(THEME:GetPathS("","Announcer/ScreenSelectOptions "..RSO))..{
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

if GAMESTATE:IsHumanPlayer(PLAYER_1) then
	t[#t+1] = LoadActor("options.lua",PLAYER_1);
end;

if GAMESTATE:IsHumanPlayer(PLAYER_2) then
	t[#t+1] = LoadActor("options.lua",PLAYER_2);
end;

return t;

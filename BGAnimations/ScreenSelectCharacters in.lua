local RSC = math.random(1,3);

return Def.ActorFrame{
    OnCommand=function(s) s:sleep(1) end,
	
	LoadActor(THEME:GetPathS("","Announcer/ScreenSelectCharacters "..RSC))..{
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};
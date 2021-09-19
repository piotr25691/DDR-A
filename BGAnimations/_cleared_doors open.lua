local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong();

--Hacky way to get the transition.
t[#t+1] = LoadActor(THEME:GetPathS("ScreenEvaluation","Swoosh"))..{
	OnCommand=cmd(queuecommand,"Play");
	PlayCommand=cmd(play);
};

t[#t+1] = LoadActor("_doors open");

t[#t+1] = LoadActor(THEME:GetPathB("","_door/scene_choice_stage_bg.png"))..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,Blend.Add;zoom,1);
	OnCommand=cmd(linear,0.1;zoomx,1.5;zoomy,0);
};


if song:GetDisplayFullTitle() == "Tohoku EVOLVED" or song:GetDisplayFullTitle() == "COVID" then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("","_door/scene_choice_prayfor"))..{
		InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(linear,0.09;zoom,1.2;zoomy,0);
    };
};
else
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("","_door/scene_choice_clear"))..{
		InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(linear,0.09;zoom,1.2;zoomy,0);
    };
};

end

return t

local t = Def.ActorFrame {};
local Stage = GAMESTATE:GetCurrentStage();
		
if GAMESTATE:IsExtraStage() then
t[#t+1] = LoadActor(THEME:GetPathB("","ScreenWithMenuElements background/ddra_bg_endy_hd"))..{
		OnCommand=cmd(FullScreen);
	};
end;

t[#t+1] = LoadActor("deco.lua");

return t;

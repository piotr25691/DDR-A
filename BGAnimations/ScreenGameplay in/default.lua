local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong();

if not GAMESTATE:IsDemonstration() then
	if GAMESTATE:IsExtraStage() then
		t[#t+1] = LoadActor("doors_extra");
	else
		t[#t+1] = LoadActor("doors_normal");
	end;
	t[#t+1] = LoadActor("jacket");
end;

return t
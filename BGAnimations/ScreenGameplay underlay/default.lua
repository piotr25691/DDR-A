local t = Def.ActorFrame{};

local pn = ({...})[1]

local x_table = {
  PlayerNumber_P1 = {SCREEN_CENTER_X-90, SCREEN_RIGHT-354},
  PlayerNumber_P2 = {SCREEN_CENTER_X+90, SCREEN_LEFT+354}
}

local HasVideo = FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."avi") == false and FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."mp4") == false 

for _, pn in ipairs(GAMESTATE:GetEnabledPlayers()) do
	if HasVideo then
		if GetUserPref("OptionRowCutin")=='ON' then
			if FILEMAN:DoesFileExist("/Characters/"..GAMESTATE:GetCharacter(pn):GetDisplayName().."/Cut-In") then
				t[#t+1] = LoadActor("Cutin", pn)..{
					OnCommand=cmd(setsize,200,SCREEN_HEIGHT);
					InitCommand=function(self)
						self:CenterY()
						if GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_TwoPlayersTwoSides" or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
							self:x(SCREEN_CENTER_X);
						elseif IsUsingCenter1Player then
							if GAMESTATE:GetCurrentStyle():GetStepsType() == "StepsType_Dance_Double" then
								if GetScreenAspectRatio() < 1.7 then
									self:visible(false);
								else
									self:x(x_table[pn][1]);
								end;
							end;
						else
							self:x(x_table[pn][2]);
						end;
					end;
				};
			end;
		end;
	end;
	t[#t+1] = LoadActor("ScreenFilter",pn);	
end;

t[#t+1] = LoadActor("ScreenGameplay Danger");

return t;
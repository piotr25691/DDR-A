local t = Def.ActorFrame{};
local pn = ({...})[1] --only argument to file
local Video = FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."avi") == false and FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."mp4") == false
local style = GAMESTATE:GetCurrentStyle():GetStyleType()
local st = GAMESTATE:GetCurrentStyle():GetStepsType();
local x_table = {
  PlayerNumber_P1 = {SCREEN_CENTER_X-90, SCREEN_RIGHT-354},
  PlayerNumber_P2 = {SCREEN_CENTER_X+90, SCREEN_LEFT+354}
}


--toasty loader
if GetUserPref("OptionRowCutin")=='ON' then
	if Video then
	--use ipairs here because i think it expects P1 is loaded before P2
		for _, pn in ipairs(GAMESTATE:GetEnabledPlayers()) do
			if FILEMAN:DoesFileExist("/Characters/"..GAMESTATE:GetCharacter(pn):GetDisplayName().."/Cut-In") then
			   if GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Yuni's Nocturnal Days" then
				t[#t+1] = Def.ActorFrame{
					LoadActor("Cutin/Yuni.lua", pn)..{
						OnCommand=cmd(setsize,200,SCREEN_HEIGHT);
						InitCommand=function(self)
							self:CenterY()
								if style == "StyleType_TwoPlayersTwoSides" or 
									GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
									self:x(SCREEN_CENTER_X);
								elseif IsUsingCenter1Player then
									if st == "StepsType_Dance_Double" then
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
				};
			else
				t[#t+1] = Def.ActorFrame{
					LoadActor("Cutin", pn)..{
						OnCommand=cmd(setsize,200,SCREEN_HEIGHT);
						InitCommand=function(self)
							self:CenterY()
								if style == "StyleType_TwoPlayersTwoSides" or 
									GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
									self:x(SCREEN_CENTER_X);
								elseif IsUsingCenter1Player then
									if st == "StepsType_Dance_Double" then
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
				};
			end;
			end;
		end;
	end;
end;

t[#t+1] = LoadActor("ScreenFilter");
t[#t+1] = LoadActor("ScreenGameplay Danger");


return t;

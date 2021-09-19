local yval = SCREEN_BOTTOM-60
local t = Def.ActorFrame{
    CurrentSongChangedMessageCommand=function(s) s:queuecommand("Set") end,
};

if not GAMESTATE:IsDemonstration() then
t[#t+1] = Def.ActorFrame{
    InitCommand=function(s) s:draworder(99) end,
    Def.ActorFrame{
        Name="TextBanner",
        InitCommand=function(s) s:xy(_screen.cx,yval+2) end,
        Def.Sprite{
            Texture="dance_song_info0000_base",
        };
		--Song
        Def.BitmapText{
            Font="_arial black 28px",
            InitCommand=function(s) s:zoom(0.9):maxwidth(374):x(2):y(-9) end,
            CurrentSongChangedMessageCommand=function(s)
                local song = GAMESTATE:GetCurrentSong()
                if song then
                    s:settext(song:GetDisplayFullTitle())
                end
            end,
        };
		--Artist
        Def.BitmapText{
            Font="_arial black 28px",
            InitCommand=function(s) s:zoom(0.7):maxwidth(360):y(17) end,
            CurrentSongChangedMessageCommand=function(s)
                local song = GAMESTATE:GetCurrentSong()
                if song then
                    s:settext(song:GetDisplayArtist())
                end
            end,
        }
    };
};
end

--Players
for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
    t[#t+1] = Def.ActorFrame{
        InitCommand=function(s) s:x(pn==PLAYER_1 and SCREEN_LEFT+192 or SCREEN_RIGHT-192):draworder(10) end,
        Def.ActorFrame{
            InitCommand=function(s)
                s:y(GAMESTATE:PlayerIsUsingModifier(pn,'reverse') and SCREEN_TOP+70 or (yval-29)):zoomx(1.02)
            end,
			--Graphic
			Def.ActorFrame{
			InitCommand=function(s) s:xy(pn==PLAYER_1 and 72 or 89,-1) end,
            Def.Sprite{
				Texture="dance_score0000_level_base_none",
				InitCommand=function(s) 
                        s:rotationx(GAMESTATE:PlayerIsUsingModifier(pn,'reverse') and 180 or 0)
					end,
                }
            };
			Def.BitmapText{
            Font="_dispatrox 32px",
            InitCommand=function(s)
				if GetUserPref("OptionRowBPM")=='BPM' then
					s:settext("BPM"):diffuse(color("#feec0a"))
					s:xy(pn==PLAYER_1 and 30 or 46,0):zoom(0.72):maxwidth(180)
				else
					s:settext(string.upper(PROFILEMAN:GetPlayerName(pn))):diffuse(color("#feec0a"))
					s:xy(pn==PLAYER_1 and 76 or 92,0):zoom(0.72):maxwidth(180)
				end;
				
            end,
        };
            Def.ActorFrame{
                InitCommand=function(s) s:x(pn==PLAYER_1 and -80 or -62) end,
                Def.Sprite{
                    Texture="dance_score0000_frame_difficulty",
                    InitCommand=function(s) 
                        s:rotationx(GAMESTATE:PlayerIsUsingModifier(pn,'reverse') and 180 or 0)
                    end,
                };
			--Difficulty Name
                Def.BitmapText{
                    Font="_commador extended 32px",
                    InitCommand=function(s) s:halign(1):zoomy(0.6):zoomx(0.76):playcommand("Set") end,
                    SetCommand=function(s)
                        local diff = GAMESTATE:GetCurrentSteps(pn):GetDifficulty()
                        local sDifficulty = ToEnumShortString( diff );
                        if diff then
                            s:settext(THEME:GetString("CustomDifficulty",sDifficulty))
                            :diffuse(CustomDifficultyToColor(diff))
                            if sDifficulty == 'Edit' then
                                s:maxwidth(126)
                            end
                            local meter = tonumber(GAMESTATE:GetCurrentSteps(pn):GetMeter())
                            local sDiffWidth = 0;
		                    local sMeterWidth = 0;

		                    if meter <= 0 then
		                    	sMeterWidth = 18;
		                    elseif meter <= 9 then
		                    	sMeterWidth = 18 ;
		                    elseif meter <= 99 then
		                    	sMeterWidth = 0;
		                    else
		                    	sMeterWidth = -18;
                            end;
                            if sDifficulty == 'Beginner' then
                                sDiffWidth = 85;
                            elseif sDifficulty == 'Easy' then
                                sDiffWidth = 52;
                            elseif sDifficulty == 'Medium' then
                                sDiffWidth = 84;
                            elseif sDifficulty == 'Hard' then
                                sDiffWidth = 62;
                            elseif sDifficulty == 'Challenge' then
                                sDiffWidth = 86;
                            else
                                sDiffWidth = 86;
                            end;
                            local totalWidth = sDiffWidth+sMeterWidth;
                            local additionXPos = totalWidth/2-42;
                            s:xy(25+additionXPos,2)
                        end
                    end
                };
				--Number
                Def.BitmapText{
                    Font="_squareslab711 lt bt Bold 24px",
                    InitCommand=function(s) s:halign(0):zoomx(1.3):zoomy(0.9) end,
                    SetCommand=function(s)
                        local meter = GAMESTATE:GetCurrentSteps(pn):GetMeter();
                        local diff = GAMESTATE:GetCurrentSteps(pn):GetDifficulty()
                        if GAMESTATE:IsCourseMode() then
                            diff = GAMESTATE:GetCurrentTrail(pn):GetTrailEntry(GAMESTATE:GetCourseSongIndex()):GetSteps():GetDifficulty();
                            meter = GAMESTATE:GetCurrentTrail(pn):GetTrailEntry(GAMESTATE:GetCourseSongIndex()):GetSteps():GetMeter();
                        end
                        local sDifficulty = ToEnumShortString(diff)

                        local sDiffWidth = 0;
				        local sMeterWidth = 0;
	
				        if meter <= 0 then
				        	sMeterWidth = 18;
				        elseif meter <= 9 then
				        	sMeterWidth = 18 ;
				        elseif meter <= 99 then
				        	sMeterWidth = 0;
				        else
				        	sMeterWidth = -18;
				        end;

				        if sDifficulty == 'Beginner' then
				        	sDiffWidth = 85;
				        elseif sDifficulty == 'Easy' then
				        	sDiffWidth = 52;
				        elseif sDifficulty == 'Medium' then
				        	sDiffWidth = 84;
				        elseif sDifficulty == 'Hard' then
				        	sDiffWidth = 62;
				        elseif sDifficulty == 'Challenge' then
				        	sDiffWidth = 86;
				        else
				        	sDiffWidth = 86;
				        end;

				        local totalWidth = sDiffWidth+sMeterWidth;
                        local additionXPos = totalWidth/2-42;
                        
                        s:settext(meter):xy(30+additionXPos,0)
                    end,
                };
            };
            
        };
        Def.ActorFrame{
            InitCommand=function(s) s:y(yval+3) end,
            Def.Sprite{
                Texture="dance_score0000_frame_score",
            };
        };
    };
end

if PREFSMAN:GetPreference("PercentageScoring") and PREFSMAN:GetPreference("DancePointsForOni") then
	for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
		t[#t+1] = Def.ActorFrame{
			InitCommand=function(s) s:x(pn==PLAYER_1 and SCREEN_LEFT+12 or SCREEN_CENTER_X+250):draworder(10) end,
			Def.ActorFrame{
				InitCommand=function(s)
					s:y((yval+2)):zoom(1)
				end,
				--Graphic
				Def.ActorFrame{
				InitCommand=function(s) s:xy(pn==PLAYER_1 and 72 or 89,-1) end,
				Def.Sprite{
					Texture="dance_score0000_score_ex",
					}
				};
			}
		}
	end;
end;

--[[if PREFSMAN:GetPreference("PercentageScoring")==true and PREFSMAN:GetPreference("DancePointsForOni")==true then
-- if true then
	LoadFont("_Newsanse Heavy")..{
		InitCommand=cmd(visible,GAMESTATE:IsHumanPlayer(PLAYER_1);x,SCREEN_CENTER_X-440-100;y,SCREEN_CENTER_Y+305;diffusealpha,1;shadowlength,1;zoomx,1.2;zoomy,1;diffuse,Color("Yellow"));
		OnCommand=function(self)
			self:settext("EX");
		end;
	};	
	LoadFont("_Newsanse Heavy")..{
		InitCommand=cmd(visible,GAMESTATE:IsHumanPlayer(PLAYER_2);x,SCREEN_CENTER_X+440-100;y,SCREEN_CENTER_Y+305;diffusealpha,1;shadowlength,1;zoomx,1.2;zoomy,1;diffuse,Color("Yellow"));
		OnCommand=function(self)
			self:settext("EX");
		end;
	};	
end;]]

return t;
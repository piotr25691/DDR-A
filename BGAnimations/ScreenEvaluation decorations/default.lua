local t = Def.ActorFrame{
    StandardDecorationFromFile("Header","Header");
	StandardDecorationFromFile("StageDisplay","StageDisplay");
    StandardDecorationFromFileOptional("Footer","Footer");
}

if GAMESTATE:HasEarnedExtraStage() then
t[#t+1] = LoadActor( THEME:GetPathS("","_silent") ) .. {
		PlayCommand=cmd(play);
		OnCommand=cmd(queuecommand,"Play");
	};
else
t[#t+1] = LoadActor( THEME:GetPathS("","_systembgm3") ) .. {
		OnCommand=cmd(sleep,2.4;queuecommand,"Play");
		PlayCommand=cmd(play);
	};
end;

--P1
for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame{
		InitCommand=function(s) s:xy(pn==PLAYER_1 and _screen.cx-319 or _screen.cx+319,_screen.cy+268):zoom(0.9) end,
		OffCommand=function(s) s:sleep(0.2):linear(0.2):addx(pn==PLAYER_1 and -700 or 700)  end,
		Def.Sprite{
            Texture="scre_eamu_offbase00",
        };
		Def.Sprite{
			Texture=lang.."_scre_eamu_base00",
        };
	};
end;

--Machine Record
for pn in ivalues(PlayerNumber) do
	local MetricsName = "MachineRecord" .. PlayerNumberToString(pn);
	t[#t+1] = LoadActor( THEME:GetPathG(Var "LoadingScreen", "MachineRecord"), pn ) .. {
		InitCommand=function(self) 
			self:player(pn); 
			self:name(MetricsName); 
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
		end;
	};
end

--Personal Record
for pn in ivalues(PlayerNumber) do
	local MetricsName = "PersonalRecord" .. PlayerNumberToString(pn);
	t[#t+1] = LoadActor( THEME:GetPathG(Var "LoadingScreen", "PersonalRecord"), pn ) .. {
		InitCommand=function(self) 
			self:player(pn); 
			self:name(MetricsName); 
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
		end;
	};
end

for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
	if not PREFSMAN:GetPreference("PercentageScoring") and PREFSMAN:GetPreference("DancePointsForOni") then
	t[#t+1] = Def.ActorFrame{
        InitCommand=function(s) s:xy(pn==PLAYER_1 and _screen.cx-310 or _screen.cx+330,_screen.cy-60) end,
        OffCommand=function(s) s:sleep(0.2):linear(0.2):diffusealpha(0) end,
        Def.Sprite{
            Texture="mdx02_rs_score",
            InitCommand=function(s) s:xy(-124,-36) end,
        };
    };
	else
	t[#t+1] = Def.ActorFrame{
        InitCommand=function(s) s:xy(pn==PLAYER_1 and _screen.cx-310 or _screen.cx+330,_screen.cy-60) end,
        OffCommand=function(s) s:sleep(0.2):linear(0.2):diffusealpha(0) end,
        Def.Sprite{
            Texture="mdx02_rs_ex",
            InitCommand=function(s) s:xy(-124,-36) end,
        };
    };
	end;
end


for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
	if not PREFSMAN:GetPreference("PercentageScoring") and PREFSMAN:GetPreference("DancePointsForOni") then
    t[#t+1] = Def.ActorFrame{
        InitCommand=function(s) s:xy(pn==PLAYER_1 and _screen.cx-310 or _screen.cx+310,_screen.cy-60) end,
        OffCommand=function(s) s:sleep(0.2):linear(0.2):diffusealpha(0) end,
        Def.RollingNumbers{
            File="ScreenEvaluation ScoreNumber",
            InitCommand=function(s)
                s:x(0):playcommand("Set")
            end,
            OffCommand=function(s) s:sleep(0.067):zoom(0) end,
            SetCommand=function(s)
                local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetScore();
			    s:Load("RollingNumbersEvaluation"):targetnumber(score);
            end,
        };
    };
	else
	t[#t+1] = Def.ActorFrame{
        InitCommand=function(s) s:xy(pn==PLAYER_1 and _screen.cx-310 or _screen.cx+310,_screen.cy-60) end,
        OffCommand=function(s) s:sleep(0.2):linear(0.2):diffusealpha(0) end,
        Def.RollingNumbers{
            File="ScreenEvaluation ScoreNumber",
            InitCommand=function(s)
                s:x(0):playcommand("Set")
            end,
            OffCommand=function(s) s:sleep(0.067):zoom(0) end,
            SetCommand=function(s)
                local exscore = (STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetPossibleDancePoints())*(STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetPercentDancePoints());
			    s:Load("RollingNumbersEvaluation"):targetnumber(exscore);
            end,
        };
    };
	end;
end;

for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
--Grade
t[#t+1] = LoadActor("grade")..{
	InitCommand=cmd(diffusealpha,1;draworder,11;addy,-15-10-40-15+4;addx,33);
	OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
};
--Style
    t[#t+1] = Def.ActorFrame{
        Name="StepsDisplay",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and _screen.cx-200 or _screen.cx+200,_screen.cy-301) end,
        OffCommand=function(s) s:linear(0.25):diffusealpha(0) end,
        Def.BitmapText{
            Font="_itc avant garde std bk 20px",
            InitCommand=function(self)
                self:shadowlength(1)
				self:x(2)
                local style = GAMESTATE:GetCurrentStyle()
                if style:GetStyleType() == "StyleType_OnePlayerTwoSides" then
                    self:settext("DOUBLE");
                    self:diffuse(color("#f78c03"));
                elseif style:GetStyleType() == "StyleType_OnePlayerOneSide" then
                    self:settext("SINGLE");
                    self:diffuse(color("#01b4ff"));
                elseif style:GetStyleType() == "StyleType_TwoPlayersTwoSides" then
                    self:settext("VERSUS");
                    self:diffuse(color("#f700d7"));
                end;
            end,
        };
		--Difficult
        Def.BitmapText{
            Font="_itc avant garde std bk 20px",
            InitCommand=function(self)
                self:y(25):shadowlength(1)
                local diffname = GAMESTATE:GetCurrentSteps(pn):GetDifficulty();
				self:settext(THEME:GetString("CustomDifficulty",ToEnumShortString(diffname)));
				self:diffuse(GameColor.Difficulty[diffname])
            end,
        };
		--Steps Number
        Def.BitmapText{
            Font="_itc avant garde std bk 20px",
            InitCommand=function(self)
                self:y(54):shadowlength(0):zoom(1.4):diffuse(Color.Black)
                local meter = GAMESTATE:GetCurrentSteps(pn):GetMeter();
				self:settext(meter);
            end,
        };
    }
end

for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
--Player1
	t[#t+1] = Def.ActorFrame{ 
		Def.Sprite{
			Texture="coopgu_bar_player",
			InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT+60 or SCREEN_RIGHT-60,_screen.cy-271):zoomx(pn==PLAYER_1 and 1 or -1) end,
			OffCommand=function(s) s:sleep(0.2):linear(0.2):addx(pn==PLAYER_1 and -300 or 300) end,
		};
--Name
		Def.BitmapText{
			Font="_dispatrox 32px",
			InitCommand=function(s) 
				s:xy(pn==PLAYER_1 and _screen.cx-490 or _screen.cx+490,_screen.cy-270)
				s:horizalign(pn==PLAYER_1 and right or left)
				s:settext(string.upper(PROFILEMAN:GetPlayerName(pn)))
				s:draworder(50):maxwidth(150):diffuse(color("#feec0a")):zoom(0.8);
			end,
			OffCommand=function(s) s:sleep(0.2):linear(0.2):addx(pn==PLAYER_1 and -300 or 300) end,
        };
};
end;

-- If single player
if #GAMESTATE:GetEnabledPlayers() == 1 then
	--P1 Frame
	t[#t+1] = LoadActor("frame", GAMESTATE:GetMasterPlayerNumber(),PLAYER_1,(GAMESTATE:GetMasterPlayerNumber() ~= PLAYER_1))..{
		InitCommand=cmd(xy,SCREEN_CENTER_X-246,_screen.cy+128);
	};
	--P2 Frame
	t[#t+1] = LoadActor("frame", GAMESTATE:GetMasterPlayerNumber(),PLAYER_2,(GAMESTATE:GetMasterPlayerNumber() ~= PLAYER_2))..{
		InitCommand=cmd(xy,SCREEN_CENTER_X+252,_screen.cy+128);
	};
else --If multiplayer
	--P1 Frame
	t[#t+1] = LoadActor("frame", PLAYER_1,PLAYER_1,false)..{
		InitCommand=cmd(xy,SCREEN_CENTER_X-246,_screen.cy+128);
	};
	--P2 Frame
	t[#t+1] = LoadActor("frame", PLAYER_2,PLAYER_2,false)..{
		InitCommand=cmd(xy,SCREEN_CENTER_X+252,_screen.cy+128);
	};

end;

for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = LoadActor(THEME:GetPathB("GameDecoration","3 Stars"))..{
		InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_CENTER_X-83.7 or SCREEN_RIGHT-233.7,_screen.cy-21) end,
		OffCommand=function(s) s:sleep(0.2):linear(0.2):addx(pn==PLAYER_1 and -700 or 700) end,
	};
end;

t[#t+1] = LoadActor(THEME:GetPathB("GameDecoration","9 Stars"))..{
	InitCommand=function(s) s:xy(_screen.cx,_screen.cy+276) end,
	OffCommand=function(s) s:linear(0.2):zoomx(1):zoomy(0) end,
};

return Def.ActorFrame{
    t;
    Def.ActorFrame{
        Name="Jacket";
        InitCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-199;diffusealpha,1;draworder,1);
        Def.Sprite {
		OnCommand=function(self)
		local course = GAMESTATE:GetCurrentCourse();
		if GAMESTATE:IsCourseMode() then
			if course then
				self:LoadBackground(course:GetBannerPath());
				self:setsize(216,216);
			else
				-- default to the Banner of the first song in the course
				self:Load(THEME:GetPathG("","Common fallback jacket"));
				self:setsize(216,216);
			end
		else
			local song = GAMESTATE:GetCurrentSong();
				if song then
					if song:HasJacket() then
						self:diffusealpha(1);
						self:LoadBackground(song:GetJacketPath());
						self:setsize(216,216);
					elseif song:HasBackground() then
						self:diffusealpha(1);
						self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
						self:setsize(216,216);
					elseif song:HasBanner() then
						self:diffusealpha(1);
						self:LoadFromSongBanner(GAMESTATE:GetCurrentSong());
						self:setsize(216,216);
					else
						self:Load(THEME:GetPathG("","Common fallback jacket"));
						self:setsize(216,216);
					end;
				else
					self:diffusealpha(0);	
			end;
		end;
		end;
	OffCommand=cmd(sleep,0.2;bouncebegin,0.175;zoomy,0);
	};
};

--Song Info
    Def.ActorFrame{
        Name="songinfo",
        InitCommand=function(s) s:xy(_screen.cx,_screen.cy-60) end,
        OffCommand=function(s) s:linear(0.2):zoomy(0) end,
        Def.Sprite{Texture="scre_song_info",};
        Def.BitmapText{
            Font="_arial black 28px",
            InitCommand=function(s)
                s:maxwidth(300):zoom(0.9)
                local song = GAMESTATE:GetCurrentSong()
                local course = GAMESTATE:GetCurrentCourse()
                if song then
                    s:settext(song:GetDisplayFullTitle()):y(-9)
                else
                    s:settext(course:GetDisplayTitle())
                end
            end,
        };
		
--Artist		
        Def.BitmapText{
            Font="_arial black 28px",
            InitCommand=function(s)
                s:maxwidth(390):y(13):x(2):zoom(0.7)
                local song = GAMESTATE:GetCurrentSong()
                if song then
                    s:settext(song:GetDisplayArtist())
                else
                    s:settext("")
                end
            end,
        };
    };
}




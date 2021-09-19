local pn = ...

local function RivalScore(pn,rival)
    local t=Def.ActorFrame {
        CurrentSongChangedMessageCommand=function(s) s:finishtweening():queuecommand("Set") end,
        ["CurrentSteps" .. ToEnumShortString(pn) .. "ChangedMessageCommand"]=function(s) s:finishtweening():queuecommand("Set") end,
        Def.BitmapText{
            Font="_geo 9 20px",
            InitCommand=function(self)
                self:xy(pn==PLAYER_1 and -50 or -65,8);
                self:halign(0)
                self:diffuse(Color("Black"));
                if (rival ~= 1) then
                    self:diffuse(Color("White"));
                end;
            end;
            SetCommand=function(self)
                local SongOrCourse, StepsOrTrail;
                if GAMESTATE:IsCourseMode() then
                    SongOrCourse = GAMESTATE:GetCurrentCourse();
                    StepsOrTrail = GAMESTATE:GetCurrentTrail(pn);
                else
                    SongOrCourse = GAMESTATE:GetCurrentSong();
                    StepsOrTrail = GAMESTATE:GetCurrentSteps(pn);
                end;
    
                local profile, scorelist;
                if SongOrCourse and StepsOrTrail then
                    local st = StepsOrTrail:GetStepsType();
                    local diff = StepsOrTrail:GetDifficulty();
                    local courseType = GAMESTATE:IsCourseMode() and SongOrCourse:GetCourseType() or nil;
                    local profile;
                    if rival == 1 then
                        profile = PROFILEMAN:GetProfile(pn)
                    else
                        profile = PROFILEMAN:GetMachineProfile();
                    end
                    scorelist = profile:GetHighScoreList(SongOrCourse,StepsOrTrail);
                    assert(scorelist)
                    local scores = scorelist:GetHighScores();
                    
                    if scores[rival] then
                            self:settext(string.upper(PROFILEMAN:GetPlayerName(pn)))
							self:maxwidth(120)
                    else
                        self:settext("")
                    end;
                end;
            end;
        };
        Def.RollingNumbers {
            File = THEME:GetPathF("_geo 95","20px");
            InitCommand=function(self)
                self:x(pn==PLAYER_1 and 140 or 125);
                self:halign(0.85)
                self:diffuse(Color("Black"));
                if (rival ~= 1) then
                    self:diffuse(Color("White"));
                end;
            end;
            BeginCommand=cmd(playcommand,"Set");
            SetCommand=function(self)
                local SongOrCourse, StepsOrTrail;
                if GAMESTATE:IsCourseMode() then
                    SongOrCourse = GAMESTATE:GetCurrentCourse();
                    StepsOrTrail = GAMESTATE:GetCurrentTrail(pn);
                else
                    SongOrCourse = GAMESTATE:GetCurrentSong();
                    StepsOrTrail = GAMESTATE:GetCurrentSteps(pn);
                end;
    
                local profile, scorelist;
                local topscore=0;
                if SongOrCourse and StepsOrTrail then
                    local st = StepsOrTrail:GetStepsType();
                    local diff = StepsOrTrail:GetDifficulty();
                    local courseType = GAMESTATE:IsCourseMode() and SongOrCourse:GetCourseType() or nil;
                    local profile;
                    if rival == 1 then
                        profile = PROFILEMAN:GetProfile(pn)
                    else
                        profile = PROFILEMAN:GetMachineProfile();
                    end
    
                    scorelist = profile:GetHighScoreList(SongOrCourse,StepsOrTrail);
                    assert(scorelist)
                    local scores = scorelist:GetHighScores();
                    
                    if scores[rival] then
                        if scores[rival]:GetScore() > 1 then
                            topscore = scores[rival]:GetScore();
                            self:visible(true)
                        else
                            topscore = 0
                            self:visible(false)
                        end
                    else
                        topscore = 0
                        self:visible(false)
                    end;
                    assert(topscore);
                    
                end;
                self:Load("RollingNumbersSongData");
                self:targetnumber(topscore);
            end;
        };
    };
    return t;
end

return Def.ActorFrame{
    Def.Sprite{
        Texture="scms_rival_tab",
        InitCommand=function(s) s:valign(0):zoomx(pn==PLAYER_1 and 1 or -1):zoomy(1):xy(pn==PLAYER_1 and 111 or -111, 15) end,
    };
	Def.Sprite{
        Texture="rival_window_headder_target",
        InitCommand=function(s) s:valign(0):zoom(1):xy(pn==PLAYER_1 and 111 or -111,18) end,
    };
	Def.Sprite{
        Texture="scms_rival_frame",
        InitCommand=function(s) s:valign(0):zoomx(pn==PLAYER_1 and 1 or -1):zoomy(1):xy(pn==PLAYER_1 and -8 or 8, 30) end,
    };
	Def.BitmapText{
      Font="_avenirnext lt pro bold Bold 20px",
        InitCommand=function(s) s:valign(0):draworder(99):diffuse(Color.Black):zoom(0.75):maxwidth(350):xy(pn==PLAYER_1 and -2 or 2,SCREEN_TOP+238):settext("Press [pad] L+U to display TARGET SCORE.") end,
    };
-------------------------------HIGH SCCORE-----------------------------------------------------------------
	--base
    Def.Sprite{
        Texture="scms_rival_base_hiscore",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and 8 or -8,SCREEN_TOP+61):zoomx(1):zoomy(0.9) end,
    };
	--word
	Def.Sprite{
        Texture=lang.."_scriwi_hiscore",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-100 or SCREEN_LEFT-115,SCREEN_TOP+62):zoom(1) end,
    };
-------------------------------2ND SCCORE-----------------------------------------------------------------
	--base
	Def.Sprite{
        Texture="scms_rival_base_player_win",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and 8 or -8,SCREEN_TOP+88):zoomx(1):zoomy(0.9):diffusealpha(0.7) end,
    };
	--base word
	Def.Sprite{
        Texture="scms_rival_base_player_win",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-99 or SCREEN_LEFT-114,SCREEN_TOP+88):zoomx(0.29):zoomy(0.9) end,
    };
	--word
	Def.Sprite{
        Texture=lang.."_scriwi_area_no1",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-100 or SCREEN_LEFT-115,SCREEN_TOP+88):zoom(1) end,
    };
-------------------------------3RD SCCORE-----------------------------------------------------------------
	--base
	Def.Sprite{
        Texture="scms_rival_base_player_win",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and 8 or -8,SCREEN_TOP+113):zoomx(1):zoomy(0.9):diffusealpha(0.7) end,
    };
	--base word
	Def.Sprite{
        Texture="scms_rival_base_player_win",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-99 or SCREEN_LEFT-114,SCREEN_TOP+113):zoomx(0.29):zoomy(0.9) end,
    };
	--word
	Def.Sprite{
        Texture=lang.."_scriwi_thismachine_no1",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-100 or SCREEN_LEFT-115,SCREEN_TOP+113):zoom(1) end,
    };
-------------------------------4TH SCCORE-----------------------------------------------------------------
	--base
	Def.Sprite{
        Texture="scms_rival_base_draw",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and 8 or -8,SCREEN_TOP+138):zoomx(1):zoomy(0.9):diffusealpha(0.7) end,
    };
	--base word
	Def.Sprite{
        Texture="scms_rival_base_draw",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-99 or SCREEN_LEFT-114,SCREEN_TOP+138):zoomx(0.29):zoomy(0.9) end,
    };
	--word
	Def.Sprite{
        Texture="scriwi_rival1",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-100 or SCREEN_LEFT-115,SCREEN_TOP+138):zoom(1) end,
    };
-------------------------------5TH SCCORE-----------------------------------------------------------------
	--base
	Def.Sprite{
        Texture="scms_rival_base_draw",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and 8 or -8,SCREEN_TOP+163):zoomx(1):zoomy(0.9):diffusealpha(0.7) end,
    };
	--base word
	Def.Sprite{
        Texture="scms_rival_base_draw",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-99 or SCREEN_LEFT-114,SCREEN_TOP+163):zoomx(0.29):zoomy(0.9) end,
    };
	--word
	Def.Sprite{
        Texture="scriwi_rival2",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-100 or SCREEN_LEFT-115,SCREEN_TOP+163):zoom(1) end,
    };
-------------------------------6TH SCCORE-----------------------------------------------------------------
	--base
	Def.Sprite{
        Texture="scms_rival_base_draw",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and 8 or -8,SCREEN_TOP+188):zoomx(1):zoomy(0.9):diffusealpha(0.7) end,
    };
	--base word
	Def.Sprite{
        Texture="scms_rival_base_draw",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-99 or SCREEN_LEFT-114,SCREEN_TOP+188):zoomx(0.29):zoomy(0.9) end,
    };
	--word
	Def.Sprite{
        Texture="scriwi_rival3",
        InitCommand=function(s) s:xy(pn==PLAYER_1 and SCREEN_LEFT-100 or SCREEN_LEFT-115,SCREEN_TOP+188):zoom(1) end,
    };	
    
        RivalScore(pn,1)..{
            InitCommand=function(s) s:y(53) end,
        };
        RivalScore(pn,2)..{
            InitCommand=function(s) s:y(79) end,
        };
        RivalScore(pn,3)..{
            InitCommand=function(s) s:y(104) end,
        };
        RivalScore(pn,4)..{
            InitCommand=function(s) s:y(130) end,
        };
        RivalScore(pn,5)..{
            InitCommand=function(s) s:y(154) end,
        };
        RivalScore(pn,6)..{
            InitCommand=function(s) s:y(180) end,
        };
}
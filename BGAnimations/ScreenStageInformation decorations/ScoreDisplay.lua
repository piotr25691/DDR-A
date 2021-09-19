local t = Def.ActorFrame{};
local OffsetX = 205;
local SleepOffset = 0.3;
local regionPath = "/Themes/"

function StageTopRecord(pn) --�^�ǳ̰��������Ӭ���
	local SongOrCourse, StepsOrTrail;
	local myScoreSet = {
		["HasScore"] = 0;
		["SongOrCourse"] =0;
		["topscore"] = 0;
		["topW1"]=0;
		["topW2"]=0;
		["topW3"]=0;
		["topW4"]=0;
		["topW5"]=0;
		["topMiss"]=0;
		["topOK"]=0;
		["topEXScore"]=0;
		["topMAXCombo"]=0;
		["topDate"]=0;
		};
		
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

		if PROFILEMAN:IsPersistentProfile(pn) then
			-- player profile
			profile = PROFILEMAN:GetProfile(pn);
		else
			-- machine profile
			profile = PROFILEMAN:GetMachineProfile();
		end;

		scorelist = profile:GetHighScoreList(SongOrCourse,StepsOrTrail);
		assert(scorelist);
		local scores = scorelist:GetHighScores();
		assert(scores);
		if scores[1] then
			myScoreSet["SongOrCourse"]=1;
			myScoreSet["HasScore"] = 1;
			myScoreSet["topscore"] = scores[1]:GetScore();
			myScoreSet["topW1"]  = scores[1]:GetTapNoteScore("TapNoteScore_W1");
			myScoreSet["topW2"]  = scores[1]:GetTapNoteScore("TapNoteScore_W2");
			myScoreSet["topW3"]  = scores[1]:GetTapNoteScore("TapNoteScore_W3");
			myScoreSet["topW4"]  = scores[1]:GetTapNoteScore("TapNoteScore_W4");
			myScoreSet["topW5"]  = scores[1]:GetTapNoteScore("TapNoteScore_W5");
			myScoreSet["topMiss"]  = scores[1]:GetTapNoteScore("TapNoteScore_W5")+scores[1]:GetTapNoteScore("TapNoteScore_Miss");
			myScoreSet["topOK"]  = scores[1]:GetHoldNoteScore("HoldNoteScore_Held");
			--myScoreSet["topEXScore"]  = scores[1]:GetTapNoteScore("TapNoteScore_W1")*3+scores[1]:GetTapNoteScore("TapNoteScore_W2")*2+scores[1]:GetTapNoteScore("TapNoteScore_W3")+scores[1]:GetHoldNoteScore("HoldNoteScore_Held")*3;
			if (StepsOrTrail:GetRadarValues( pn ):GetValue( "RadarCategory_TapsAndHolds" ) >=0) then --If it is not a random course
				if scores[1]:GetGrade() ~= "Grade_Failed" then
					myScoreSet["topEXScore"] = scores[1]:GetTapNoteScore("TapNoteScore_W1")*3+scores[1]:GetTapNoteScore("TapNoteScore_W2")*2+scores[1]:GetTapNoteScore("TapNoteScore_W3")+scores[1]:GetHoldNoteScore("HoldNoteScore_Held")*3;
				else
					myScoreSet["topEXScore"] = (StepsOrTrail:GetRadarValues( pn ):GetValue( "RadarCategory_TapsAndHolds" )*3+StepsOrTrail:GetRadarValues( pn ):GetValue( "RadarCategory_Holds" )*3)*scores[1]:GetPercentDP();
				end
			else --If it is Random Course then the scores[1]:GetPercentDP() value will be -1
				if scores[1]:GetGrade() ~= "Grade_Failed" then
					myScoreSet["topEXScore"]  = scores[1]:GetTapNoteScore("TapNoteScore_W1")*3+scores[1]:GetTapNoteScore("TapNoteScore_W2")*2+scores[1]:GetTapNoteScore("TapNoteScore_W3")+scores[1]:GetHoldNoteScore("HoldNoteScore_Held")*3;
				else
					myScoreSet["topEXScore"]  = 0;
				end
			end
			myScoreSet["topMAXCombo"]  = scores[1]:GetMaxCombo();
			myScoreSet["topDate"]  = scores[1]:GetDate() ;
		else
			myScoreSet["SongOrCourse"]=1;
			myScoreSet["HasScore"] = 0;
		end;
	else
		myScoreSet["HasScore"] = 0;
		myScoreSet["SongOrCourse"]=0;
		
	end
	return myScoreSet;

end;


function ReadHSPlayerOfSongP1( PlayerUID )
	local file = RageFileUtil:CreateRageFile();
	if file:Open("Save/LastPlayedSong/"..currentdir.."_hsplayer.txt",1) then
		local str = file:Read();
		hiscoreplayer = str;
	else
		hiscoreplayer = "";
	end;
	file:Close();
end;



for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
t[#t+1]=Def.ActorFrame{
	LoadActor(THEME:GetPathB("","_door/cosh_choice_difficulty_base.png"))..{
		InitCommand=function(self)
			self:x(pn == PLAYER_1 and SCREEN_LEFT-OffsetX-28 or SCREEN_RIGHT+OffsetX+28);
			self:y(SCREEN_CENTER_Y+160)
			self:zoomx(pn == PLAYER_1 and 1 or -1)
		end;
		OnCommand=function(self)
			self:sleep(SleepOffset+0.2):linear(0.05)
			self:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX+3 or SCREEN_RIGHT-OffsetX-3);
		end;
	};
	LoadActor(THEME:GetPathB("","_door/cosh_choice_best_score.png"))..{
		InitCommand=function(self)
			self:x(pn == PLAYER_1 and SCREEN_LEFT-OffsetX or SCREEN_RIGHT+OffsetX)
			self:y(SCREEN_CENTER_Y+206):zoom(1);
		end;
	OnCommand=function(self)
		self:sleep(SleepOffset+0.2):linear(0.05)
		self:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX or SCREEN_RIGHT-OffsetX);
	end;
	};
	--[[LoadActor(THEME:GetPathB("","_door/"..ddrgame.."cosh_choice_target_score.png"))..{
		InitCommand=function(self)
			self:x(pn == PLAYER_1 and SCREEN_LEFT-OffsetX or SCREEN_RIGHT+OffsetX)
			self:y(SCREEN_CENTER_Y+283):zoom(1);
		end;
	OnCommand=function(self)
		self:sleep(SleepOffset+0.2):linear(0.05)
		self:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX or SCREEN_RIGHT-OffsetX);
	end;
	};]]
	

	--FC Ring
	LoadActor(THEME:GetPathG("StageIn","Spin FullCombo"))..{
	InitCommand=function(s) s:zoom(0.27):shadowlength(1)
	s:x(pn == PLAYER_1 and SCREEN_LEFT+167-OffsetX or SCREEN_RIGHT+167+OffsetX)
	s:y(SCREEN_CENTER_Y+198):horizalign(center):draworder(2) end,
	OnCommand=function(self)
			local SongOrCourse, StepsOrTrail;
			if GAMESTATE:IsCourseMode() then
				SongOrCourse = GAMESTATE:GetCurrentCourse();
				StepsOrTrail = GAMESTATE:GetCurrentTrail(pn);
			else
				SongOrCourse = GAMESTATE:GetCurrentSong();
				StepsOrTrail = GAMESTATE:GetCurrentSteps(pn);
			end;

			local profile, scorelist;
			local text = "";
			if SongOrCourse and StepsOrTrail then
				local st = StepsOrTrail:GetStepsType();
				local diff = StepsOrTrail:GetDifficulty();
				local courseType = GAMESTATE:IsCourseMode() and SongOrCourse:GetCourseType() or nil;

				if PROFILEMAN:IsPersistentProfile(pn) then
					--player profile
					profile = PROFILEMAN:GetProfile(pn);
				else
					--machine profile
					profile = PROFILEMAN:GetMachineProfile();
				end;

				scorelist = profile:GetHighScoreList(SongOrCourse,StepsOrTrail);
				
				assert(scorelist);
					local scores = scorelist:GetHighScores();
					assert(scores);
					local temp=#scores;
					local topscore=0;
					if scores[1] then
						topscore = scores[1]:GetScore();
					end;
					assert(topscore);
					local topgrade;
					if scores[1] then
						-- self:addx(-31);
						-- self:addy(13.5);
						for i=1,temp do 
							if scores[i] then
								topscore = scores[i];
								assert(topscore);
								local misses = topscore:GetTapNoteScore("TapNoteScore_Miss")+topscore:GetTapNoteScore("TapNoteScore_CheckpointMiss")
												+topscore:GetTapNoteScore("TapNoteScore_HitMine")+topscore:GetHoldNoteScore("HoldNoteScore_LetGo")
								local boos = topscore:GetTapNoteScore("TapNoteScore_W5")
								local goods = topscore:GetTapNoteScore("TapNoteScore_W4")
								local greats = topscore:GetTapNoteScore("TapNoteScore_W3")
								local perfects = topscore:GetTapNoteScore("TapNoteScore_W2")
								local marvelous = topscore:GetTapNoteScore("TapNoteScore_W1")
								local hasUsedLittle = string.find(topscore:GetModifiers(),"Little")
								if (misses+boos) == 0 and scores[1]:GetScore() > 0 and (marvelous+perfects)>0 and (not hasUsedLittle) and topscore:GetGrade()~="Grade_Failed"  then
										if (goods+greats+perfects) == 0 then
												self:diffuse(GameColor.Judgment["JudgmentLine_W1"]);
												self:glowblink();
												self:effectperiod(0.20);
												break;
										elseif goods+greats == 0 then
												self:diffuse(GameColor.Judgment["JudgmentLine_W2"]);
												break;
										elseif (misses+boos+goods) == 0 then
												self:diffuse(BoostColor(GameColor.Judgment["JudgmentLine_W3"],0.75));
												self:stopeffect();
												if i==1 then
													self:diffuse(BoostColor(GameColor.Judgment["JudgmentLine_W3"],1));
												end;
												break;
										elseif (misses+boos) == 0 then
												self:diffuse(BoostColor(GameColor.Judgment["JudgmentLine_W4"],0.75));
												self:stopeffect();
												if i==1 then
													self:diffuse(BoostColor(GameColor.Judgment["JudgmentLine_W4"],1));
												end;
												break;
										end;
										
										self:diffusealpha(0.8);
										
								else
										self:diffusealpha(0);
								end;
							else
								self:diffusealpha(0);
								break;
							end;
						end;
					else
							self:diffusealpha(0);
					end;
			else
				self:diffusealpha(0);
			end;
			self:sleep(SleepOffset+0.2):linear(0.05)
			self:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX+167 or SCREEN_RIGHT-OffsetX+167)
		end;
	};
	
--Grade	
	Def.Quad{
	InitCommand=function(s) s:zoom(0.95):shadowlength(1)
	s:x(pn == PLAYER_1 and SCREEN_LEFT+140-OffsetX or SCREEN_RIGHT+140+OffsetX)
	s:y(SCREEN_CENTER_Y+196):horizalign(center):draworder(2) end,

		OnCommand=function(self)
			local SongOrCourse, StepsOrTrail;
			if GAMESTATE:IsCourseMode() then
				SongOrCourse = GAMESTATE:GetCurrentCourse();
				StepsOrTrail = GAMESTATE:GetCurrentTrail(pn);
			else
				SongOrCourse = GAMESTATE:GetCurrentSong();
				StepsOrTrail = GAMESTATE:GetCurrentSteps(pn);
			end;

			local profile, scorelist;
			local text = "";
			if SongOrCourse and StepsOrTrail then
				local st = StepsOrTrail:GetStepsType();
				local diff = StepsOrTrail:GetDifficulty();
				local courseType = GAMESTATE:IsCourseMode() and SongOrCourse:GetCourseType() or nil;

				if PROFILEMAN:IsPersistentProfile(pn) then
					-- player profile
					profile = PROFILEMAN:GetProfile(pn);
				else
					-- machine profile
					profile = PROFILEMAN:GetMachineProfile();
				end;

				scorelist = profile:GetHighScoreList(SongOrCourse,StepsOrTrail);
				assert(scorelist);
					local scores = scorelist:GetHighScores();
					assert(scores);
					local topscore=0;
					if scores[1] then
						topscore = scores[1]:GetScore();
					end;
					assert(topscore);
					local topgrade;
					local temp=#scores;
						if scores[1] then
							for i=1,temp do 
								topgrade = scores[1]:GetGrade();
								curgrade = scores[i]:GetGrade();
								assert(topgrade);
								if scores[1]:GetScore()>1  then
									if scores[1]:GetScore()==1000000 and scores[1]:GetGrade() =="Grade_Tier07" then --AutoPlayHack
										self:LoadBackground(THEME:GetPathG("ScreenStageInformation/Grade","Tier01"));
										self:diffusealpha(1);
										break;
									else --Normal
										if ToEnumShortString(curgrade) ~= "Failed" then --current Rank is not Failed
											self:LoadBackground(THEME:GetPathG("ScreenStageInformation/Grade",ToEnumShortString(curgrade)));
											self:diffusealpha(1);
											break;
										else --current Rank is Failed
											if i == temp then
												self:LoadBackground(THEME:GetPathG("ScreenStageInformation/Grade",ToEnumShortString(curgrade)));
												self:diffusealpha(1);
												break;
											end;
										end;
									end;
								else
									self:diffusealpha(0);
								end;
							end;
						else
							self:diffusealpha(0);
						end;
			else
				self:diffusealpha(0);
			end;
			
			self:sleep(SleepOffset+0.2):linear(0.05)
			self:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX+140 or SCREEN_RIGHT-OffsetX+140);
		end;
	};
	
	scstring="";
	
	Def.RollingNumbers { -- Topscore
			File = THEME:GetPathF("_helveticaneuelt pro 65 md","24px");
			InitCommand=function(s) s:shadowlength(0):zoomy(0.80):zoomx(1.85):maxwidth(240)
			s:x(pn == PLAYER_1 and SCREEN_LEFT-OffsetX-40 or SCREEN_RIGHT+OffsetX-40)
			s:y(SCREEN_CENTER_Y+200):horizalign(center) end,
			OnCommand=function(self)
				if GAMESTATE:IsCourseMode() then
					self:Load("RollingNumbersCourseData");
				else
					--self:Load("RollingNumbersSongData");
					self:Load("RollingNumbersStageInScore");
				end
				self:diffuse(color("1,1,0.38,1"));
				self:strokecolor(color("0.0,0.0,0.0,1"));
				myScoreSet = StageTopRecord(pn);
				
				if (myScoreSet["SongOrCourse"]==1) then
					if (myScoreSet["HasScore"]==1) then
					
						local topscore = myScoreSet["topscore"];
						
						self:diffusealpha(1);
						
						self:targetnumber(topscore);
						scstring = topscore;
					else
						self:diffusealpha(1);

						self:targetnumber(0);
						scstring = 0;
					end
				else
					self:diffusealpha(0);
				end
				self:sleep(SleepOffset+0.2):linear(0.05)
				self:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX-40 or SCREEN_RIGHT-OffsetX-40);
			end;
	};
	

	--[[--Topscore mod P1
	LoadFont("_helveticaneuelt pro 65 md 24px") .. {
		Text = scstring;
		InitCommand=function(s) s:shadowlength(0):zoomy(0.80):zoomx(1.85):maxwidth(240)
			s:x(pn == PLAYER_1 and SCREEN_LEFT-OffsetX-40 or SCREEN_RIGHT+OffsetX-40)
			s:y(SCREEN_CENTER_Y+280):horizalign(center) end,
		OnCommand=function(self)
			self:diffuse(color("1,1,0.28,1"));
			self:strokecolor(color("0.0,0.0,0.0,1"));
			self:sleep(SleepOffset+0.2):linear(0.05)
			self:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX-40 or SCREEN_RIGHT-OffsetX-40);
		end;
	};]]

	
	--Name
	LoadFont("_helveticaneuelt pro 65 md 24px") .. {
		Text=PROFILEMAN:GetProfile(pn):GetDisplayName();
		InitCommand=function(s) s:maxwidth(180):zoomy(0.8):zoomx(1.4)
		s:x(pn == PLAYER_1 and SCREEN_LEFT-OffsetX-170 or SCREEN_RIGHT+OffsetX-170)
		s:y(SCREEN_CENTER_Y+230):horizalign(left):strokecolor(Color("Outline")) end,
		OnCommand=function(self)
			self:sleep(SleepOffset+0.2):linear(0.05)
			self:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX-177 or SCREEN_RIGHT-OffsetX-177);
		end;
	};

	LoadActor(regionPath.."Region.lua")..{
		InitCommand=function(s) s:x(pn == PLAYER_1 and SCREEN_LEFT-OffsetX+105 or SCREEN_RIGHT+OffsetX+105)
		s:y(SCREEN_CENTER_Y+230):zoom(1) end,
		OnCommand=function(s) s:sleep(SleepOffset+0.2):linear(0.05)
		s:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX+119 or SCREEN_RIGHT-OffsetX+119) end,
	};
};
end;

--Difficulty
for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.Sprite{
		Texture = THEME:GetPathB("","_door/diff 1x6"),
		InitCommand=function(s) s:y(SCREEN_CENTER_Y+155):horizalign(center)
		s:x(pn == PLAYER_1 and SCREEN_LEFT-OffsetX-123 or SCREEN_RIGHT+OffsetX+123)
		s:draworder(110):pause():queuecommand("Set") end,
		SetCommand=function(self)
			local diff = GAMESTATE:GetCurrentSteps(pn):GetDifficulty();
			local sDifficulty = ToEnumShortString(diff);	
				if sDifficulty == 'Beginner' then
					self:setstate(0);
				elseif sDifficulty == 'Easy' then
					self:setstate(1);
				elseif sDifficulty == 'Medium' then
					self:setstate(2);
				elseif sDifficulty == 'Hard' then
					self:setstate(3);
				elseif sDifficulty == 'Challenge' then
					self:setstate(4);
				elseif sDifficulty == 'Edit' then
					self:setstate(5);
					self:addy(1);
				end;
		end;
		OnCommand=function(s)
			s:sleep(SleepOffset+0.2):linear(0.05)
			s:x(pn == PLAYER_1 and SCREEN_LEFT+OffsetX-110 or SCREEN_RIGHT-OffsetX+110) end,
	};
end;
	



return t;
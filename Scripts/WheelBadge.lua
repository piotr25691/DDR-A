
local function GetSetCommand(pn, itemMode)
	local setItem = nil;
	return function(self, params)
		local short = ToEnumShortString(pn);
		local SongOrCourse, StepsOrTrail;
		local prof = PROFILEMAN:GetProfile(pn)

		if itemMode then
			if params then
				if params and (params.Course or params.Song) then
					setItem = params.Course or params.Song;
				else
					return;
				end;
			end;
			SongOrCourse = setItem;
		else
			SongOrCourse = GAMESTATE:GetCurrentCourse() or GAMESTATE:GetCurrentSong();
		end;

		if SongOrCourse then
			local sType = GAMESTATE:GetCurrentStyle():GetStepsType();
			local usingCourse = lua.CheckType("Course", SongOrCourse);
			if usingCourse then
				local cTrail = GAMESTATE:GetCurrentTrail(pn);
				if cTrail then
					local cDiff = GAMESTATE:GetCurrentTrail(pn):GetDifficulty();
					for _, trail in pairs(SongOrCourse:GetAllTrails()) do
						if (trail:GetStepsType() == sType) and
							(trail:GetDifficulty() == cDiff) then
							StepsOrTrail = trail;
							break;
						end;
					end;
				end;
			else
				local cSteps = GAMESTATE:GetCurrentSteps(pn);
				if cSteps then
					local sDiff = cSteps:GetDifficulty();
					StepsOrTrail = SongOrCourse:GetOneSteps(sType, sDiff);
				end;
			end;

			if StepsOrTrail then
				local hsList = prof:GetHighScoreListIfExists(SongOrCourse, StepsOrTrail);
				if hsList then
					local hScores = hsList:GetHighScores();
					if #hScores >= 1 then
						topscore = hScores[1];
						local topgrade = hScores[1]:GetGrade();
						local misses = topscore:GetTapNoteScore("TapNoteScore_Miss")+topscore:GetTapNoteScore("TapNoteScore_CheckpointMiss")
										+topscore:GetTapNoteScore("TapNoteScore_HitMine")+topscore:GetHoldNoteScore("HoldNoteScore_LetGo")
						local boos = topscore:GetTapNoteScore("TapNoteScore_W5")
						local goods = topscore:GetTapNoteScore("TapNoteScore_W4")
						local greats = topscore:GetTapNoteScore("TapNoteScore_W3")
						local perfects = topscore:GetTapNoteScore("TapNoteScore_W2")
						local marvelous = topscore:GetTapNoteScore("TapNoteScore_W1")
						if topscore:GetScore() > 0 and topgrade~="Grade_Failed" then
							if (misses+boos) == 0 then
								if (goods+greats+perfects) == 0 then
									self:setstate(0)
								elseif (goods+greats) == 0 then
									self:setstate(1)
								elseif goods == 0 then
									self:setstate(2);
								else
									self:setstate(3);
								end;
							else
								self:setstate(4);
							end;
						else
							self:setstate(5)
						end;
					else
						self:setstate(5);
					end;
				end;
			end;
		else
			self:setstate(5);
		end;
	end;
end;

function WheelBadge(pn, itemMode)
	local function Response(s)
		if not itemMode then
			s:playcommand("Set", params);
		end
	end
	local function P1Response(s, params)
		if pn == 'PlayerNumber_P1' then
			s:playcommand("Set", params);
		end
	end
	local function P2Response(s, params)
		if pn == 'PlayerNumber_P2' then
			s:playcommand("Set", params);
		end
	end

	return LoadActor(THEME:GetPathG("MusicWheelItem Song","NormalPart/FullCombo"))..{
    InitCommand=function(s)
		local short = ToEnumShortString(pn)
			s:y(-138):x((pn=='PlayerNumber_P2' and 60 or -60)):pause():setstate(5)
		end;
		CurrentSongChangedMessageCommand=Response;
		CurrentCourseChangedMessageCommand=Response;
		CurrentStepsP1ChangedMessageCommand=P1Response;
		CurrentTrailP1ChangedMessageCommand=P1Response;
		CurrentStepsP2ChangedMessageCommand=P2Response;
		CurrentTrailP2ChangedMessageCommand=P2Response;
		SetCommand=GetSetCommand(pn, itemMode);
	}
end

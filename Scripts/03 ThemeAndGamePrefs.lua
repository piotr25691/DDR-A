function Game_ComboUnderField()
	return GetUserPrefB("OptionRowComboUnderField")
end
function Game_JudgmentUnderField()
	return GetUserPrefB("OptionRowJudgmentUnderField")
end
function Game_BeatBars()
	return GetUserPrefB("OptionRowBeatBars")
end
function Game_ShockArrows()
	return GetUserPrefB("OptionRowShockArrows")
end

function ScreenGameplay_P1X()
	local st = GAMESTATE:GetCurrentStyle():GetStepsType();
	if st == "StepsType_Dance_Solo" then
		return SCREEN_CENTER_X;
	elseif st == "StepsType_Dance_Couple" then
		return WideScale(SCREEN_CENTER_X-180,SCREEN_CENTER_X-160);
	else
		return WideScale(SCREEN_CENTER_X-180,SCREEN_CENTER_X-240);
	end
end
function ScreenGameplay_P2X()
	local st = GAMESTATE:GetCurrentStyle():GetStepsType();
	if st == "StepsType_Dance_Solo" then
		return SCREEN_CENTER_X;
	elseif st == "StepsType_Dance_Couple" then
		return WideScale(SCREEN_CENTER_X+180,SCREEN_CENTER_X+160);
	else
		return WideScale(SCREEN_CENTER_X+180,SCREEN_CENTER_X+240);
	end
end

function OptionRowComboJudgmentUnderField()
	local t = {
		Name = "OptionRowComboJudgmentUnderField";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"Background", "Foreground", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowComboUnderField") ~= nil and ReadPrefFromFile("OptionRowJudgmentUnderField") ~= nil then
				if GetUserPref("OptionRowComboUnderField")=='true' and GetUserPref("OptionRowJudgmentUnderField")=='true' then
					list[1] = true
				elseif GetUserPref("OptionRowComboUnderField")=='false' and GetUserPref("OptionRowJudgmentUnderField")=='false' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowComboUnderField",true);
				WritePrefToFile("OptionRowJudgmentUnderField",true);
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowComboUnderField",true);
				WritePrefToFile("OptionRowJudgmentUnderField",true);
			elseif list[2] then
				WritePrefToFile("OptionRowComboUnderField",false);
				WritePrefToFile("OptionRowJudgmentUnderField",false);
			else
				WritePrefToFile("OptionRowComboUnderField",true);
				WritePrefToFile("OptionRowJudgmentUnderField",true);
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowBeatBars()
	local t = {
		Name = "BeatBars";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"OFF", "ON", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowBeatBars") ~= nil then
				if GetUserPref("OptionRowBeatBars")=='false' then
					list[1] = true
				elseif GetUserPref("OptionRowBeatBars")=='true' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowBeatBars",false);
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowBeatBars",false);
			elseif list[2] then
				WritePrefToFile("OptionRowBeatBars",true);
			else
				WritePrefToFile("OptionRowBeatBars",false);
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowShockArrows()
	local t = {
		Name = "ShockArrows";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"OFF", "ON", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowShockArrows") ~= nil then
				if GetUserPref("OptionRowShockArrows")=='false' then
					list[1] = true
				elseif GetUserPref("OptionRowShockArrows")=='true' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowShockArrows",false);
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowShockArrows",false);
			elseif list[2] then
				WritePrefToFile("OptionRowShockArrows",true);
			else
				WritePrefToFile("OptionRowShockArrows",false);
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowScreenFilter()
	local t = {
		Name = "ScreenFilter";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = false;
		ExportOnChange = true;
		Choices = {"OFF", "DARK", "DARKER", "DARKEST", };
		LoadSelections = function(self, list, pn)
		local pName = ToEnumShortString(pn)
			if ReadPrefFromFile("OptionRowScreenFilter"..pName) ~= nil then
				if GetUserPref("OptionRowScreenFilter"..pName)=='OFF' then
					list[1] = true
				elseif GetUserPref("OptionRowScreenFilter"..pName)=='DARK' then
					list[2] = true
				elseif GetUserPref("OptionRowScreenFilter"..pName)=='DARKER' then
					list[3] = true
				elseif GetUserPref("OptionRowScreenFilter"..pName)=='DARKEST' then
					list[4] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowScreenFilter"..pName,'OFF');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			if list[1] then
				WritePrefToFile("OptionRowScreenFilter"..pName,'OFF');
			elseif list[2] then
				WritePrefToFile("OptionRowScreenFilter"..pName,'DARK');
			elseif list[3] then
				WritePrefToFile("OptionRowScreenFilter"..pName,'DARKER');
			elseif list[4] then
				WritePrefToFile("OptionRowScreenFilter"..pName,'DARKEST');
			end;
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowCutin()
	local t = {
		Name = "Cutin";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"OFF", "ON", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowCutin") ~= nil then
				if GetUserPref("OptionRowCutin")=='OFF' then
					list[1] = true
				elseif GetUserPref("OptionRowCutin")=='ON' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowCutin",'OFF');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowCutin",'OFF');
			elseif list[2] then
				WritePrefToFile("OptionRowCutin",'ON');
			else
				WritePrefToFile("OptionRowCutin",'OFF');
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowBoom()
	local t = {
		Name = "BoomType";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"A", "2014", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowBoom") ~= nil then
				if GetUserPref("OptionRowBoom")=='A' then
					list[1] = true
				elseif GetUserPref("OptionRowBoom")=='2014' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowBoom",'A');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowBoom",'A');
			elseif list[2] then
				WritePrefToFile("OptionRowBoom",'2014');
			else
				WritePrefToFile("OptionRowBoom",'A');
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowBPM()
	local t = {
		Name = "BPM";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"NAME", "BPM", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowBPM") ~= nil then
				if GetUserPref("OptionRowBPM")=='NAME' then
					list[1] = true
				elseif GetUserPref("OptionRowBPM")=='BPM' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowBPM",'NAME');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowBPM",'NAME');
			elseif list[2] then
				WritePrefToFile("OptionRowBPM",'BPM');
			else
				WritePrefToFile("OptionRowBPM",'NAME');
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowScreenCharacters()
	local t = {
		Name = "ScreenCharacters";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"OFF", "ON", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowScreenCharacters") ~= nil then
				if GetUserPref("OptionRowScreenCharacters")=='OFF' then
					list[1] = true
				elseif GetUserPref("OptionRowScreenCharacters")=='ON' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowScreenCharacters",'OFF');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowScreenCharacters",'OFF');
			elseif list[2] then
				WritePrefToFile("OptionRowScreenCharacters",'ON');
			else
				WritePrefToFile("OptionRowScreenCharacters",'OFF');
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowSpeedDisplay()
	local t = {
		Name = "SpeedDisplay";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"OFF" ,"ON" };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowSpeedDisplay") ~= nil then
				if GetUserPref("OptionRowSpeedDisplay")=='OFF' then
					list[1] = true
				elseif GetUserPref("OptionRowSpeedDisplay")=='ON' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowSpeedDisplay",'OFF');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowSpeedDisplay",'OFF');
			elseif list[2] then
				WritePrefToFile("OptionRowSpeedDisplay",'ON');
			else
				WritePrefToFile("OptionRowSpeedDisplay",'OFF');
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowStage()
	local t = {
		Name = "SelectStage";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"DEFAULT" , "RANDOM", "BOOM BLUE", "BOOM BOOM", "BOOM DARK", "BOOM GREEN", "BOOM LIGHT", "BOOM RED", "BOOM WHITE", "BOOM YELLOW", "CLUB", "CRYSTALDIUM", "CYBER", "DANCING RAYS", "DAWN STREETS", "LOVE SWEETS", "MOVIE STAGE", "REPLICANT DARK BLUE", "REPLICANT DARK PURPLE", "REPLICANT LIGHT BLUE", "REPLICANT LIGHT GRAY", "REPLICANT LIGHT PURPLE", "REPLICANT RED", "VIDEO BLACK", "VIDEO WHITE" };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowStage") ~= nil then
				if GetUserPref("OptionRowStage")=='DEFAULT' then
					list[1] = true
				elseif GetUserPref("OptionRowStage")=='RANDOM' then
					list[2] = true
				elseif GetUserPref("OptionRowStage")=='BOOM BLUE' then
					list[3] = true
				elseif GetUserPref("OptionRowStage")=='BOOM BOOM' then
					list[4] = true
				elseif GetUserPref("OptionRowStage")=='BOOM DARK' then
					list[5] = true
				elseif GetUserPref("OptionRowStage")=='BOOM GREEN' then
					list[6] = true
				elseif GetUserPref("OptionRowStage")=='BOOM LIGHT' then
					list[7] = true
				elseif GetUserPref("OptionRowStage")=='BOOM RED' then
					list[8] = true
				elseif GetUserPref("OptionRowStage")=='BOOM WHITE' then
					list[9] = true
				elseif GetUserPref("OptionRowStage")=='BOOM YELLOW' then
					list[10] = true
				elseif GetUserPref("OptionRowStage")=='CLUB' then
					list[11] = true
				elseif GetUserPref("OptionRowStage")=='CRYSTALDIUM' then
					list[12] = true
				elseif GetUserPref("OptionRowStage")=='CYBER' then
					list[13] = true
				elseif GetUserPref("OptionRowStage")=='DANCING RAYS' then
					list[14] = true
				elseif GetUserPref("OptionRowStage")=='DAWN STREETS' then
					list[15] = true
				elseif GetUserPref("OptionRowStage")=='LOVE SWEETS' then
					list[16] = true
				elseif GetUserPref("OptionRowStage")=='MOVIE STAGE' then
					list[17] = true
				elseif GetUserPref("OptionRowStage")=='REPLICANT DARK BLUE' then
					list[18] = true
				elseif GetUserPref("OptionRowStage")=='REPLICANT DARK PURPLE' then
					list[19] = true
				elseif GetUserPref("OptionRowStage")=='REPLICANT LIGHT BLUE' then
					list[20] = true
				elseif GetUserPref("OptionRowStage")=='REPLICANT LIGHT GRAY' then
					list[21] = true
				elseif GetUserPref("OptionRowStage")=='REPLICANT LIGHT PURPLE' then
					list[22] = true
				elseif GetUserPref("OptionRowStage")=='REPLICANT RED' then
					list[23] = true
				elseif GetUserPref("OptionRowStage")=='VIDEO DARK BLUE' then
					list[24] = true
				elseif GetUserPref("OptionRowStage")=='VIDEO LIGHT BLUE' then
					list[25] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowStage",'DEFAULT');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowStage",'DEFAULT');
			elseif list[2] then
				WritePrefToFile("OptionRowStage",'RANDOM');
			elseif list[3] then
				WritePrefToFile("OptionRowStage",'BOOM BLUE');
			elseif list[4] then
				WritePrefToFile("OptionRowStage",'BOOM BOOM');
			elseif list[5] then
				WritePrefToFile("OptionRowStage",'BOOM DARK');
			elseif list[6] then
				WritePrefToFile("OptionRowStage",'BOOM GREEN');
			elseif list[7] then
				WritePrefToFile("OptionRowStage",'BOOM LIGHT');
			elseif list[8] then
				WritePrefToFile("OptionRowStage",'BOOM RED');
			elseif list[9] then
				WritePrefToFile("OptionRowStage",'BOOM WHITE');
			elseif list[10] then
				WritePrefToFile("OptionRowStage",'BOOM YELLOW');
			elseif list[11] then
				WritePrefToFile("OptionRowStage",'CLUB');
			elseif list[12] then
				WritePrefToFile("OptionRowStage",'CRYSTALDIUM');
			elseif list[13] then
				WritePrefToFile("OptionRowStage",'CYBER');
			elseif list[14] then
				WritePrefToFile("OptionRowStage",'DANCING RAYS');
			elseif list[15] then
				WritePrefToFile("OptionRowStage",'DAWN STREETS');
			elseif list[16] then
				WritePrefToFile("OptionRowStage",'LOVE SWEETS');
			elseif list[17] then
				WritePrefToFile("OptionRowStage",'MOVIE STAGE');
			elseif list[18] then
				WritePrefToFile("OptionRowStage",'REPLICANT DARK BLUE');
			elseif list[19] then
				WritePrefToFile("OptionRowStage",'REPLICANT DARK PURPLE');
			elseif list[20] then
				WritePrefToFile("OptionRowStage",'REPLICANT LIGHT BLUE');
			elseif list[21] then
				WritePrefToFile("OptionRowStage",'REPLICANT LIGHT GRAY');
			elseif list[22] then
				WritePrefToFile("OptionRowStage",'REPLICANT LIGHT PURPLE');
			elseif list[23] then
				WritePrefToFile("OptionRowStage",'REPLICANT RED');
			elseif list[24] then
				WritePrefToFile("OptionRowStage",'VIDEO DARK BLUE');
			elseif list[25] then
				WritePrefToFile("OptionRowStage",'VIDEO LIGHT BLUE');
			else
				WritePrefToFile("OptionRowStage",'DEFAULT');
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowOptionStage()
	local t = {
		Name = "OptionStage";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = true;
		Choices = {"OFF" ,"ON" };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowOptionStage") ~= nil then
				if GetUserPref("OptionRowOptionStage")=='OFF' then
					list[1] = true
				elseif GetUserPref("OptionRowOptionStage")=='ON' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowOptionStage",'OFF');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowOptionStage",'OFF');
			elseif list[2] then
				WritePrefToFile("OptionRowOptionStage",'ON');
			else
				WritePrefToFile("OptionRowOptionStage",'OFF');
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end
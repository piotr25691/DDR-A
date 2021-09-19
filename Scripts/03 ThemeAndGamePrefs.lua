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
		ExportOnChange = false;
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
		ExportOnChange = false;
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
		ExportOnChange = false;
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
		OneChoiceForAllPlayers = true;
		ExportOnChange = false;
		Choices = {"OFF", "DARK", "DARKER", "DARKEST", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowScreenFilter") ~= nil then
				if GetUserPref("OptionRowScreenFilter")=='OFF' then
					list[1] = true
				elseif GetUserPref("OptionRowScreenFilter")=='DARK' then
					list[2] = true
				elseif GetUserPref("OptionRowScreenFilter")=='DARKER' then
					list[3] = true
				elseif GetUserPref("OptionRowScreenFilter")=='DARKEST' then
					list[4] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowScreenFilter",'OFF');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowScreenFilter",'OFF');
			elseif list[2] then
				WritePrefToFile("OptionRowScreenFilter",'DARK');
			elseif list[3] then
				WritePrefToFile("OptionRowScreenFilter",'DARKER');
			elseif list[4] then
				WritePrefToFile("OptionRowScreenFilter",'DARKEST');
			else
				WritePrefToFile("OptionRowScreenFilter",'OFF');
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
		ExportOnChange = false;
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
		ExportOnChange = false;
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
		ExportOnChange = false;
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
		ExportOnChange = false;
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
		ExportOnChange = false;
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
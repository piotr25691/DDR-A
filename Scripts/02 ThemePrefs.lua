-- sm-ssc Default Theme Preferences Handler

-- Example usage of new system (not really implemented yet)
local Prefs =
{
	AutoSetStyle =
	{
		Default = false,
		Choices = { "ON", "OFF" },
		Values = { true, false }
	},
	Language = 
	{
		Default = "en",
		Choices = {"Japanese","English", "Korean"},
		Values = {"jp","en","kor"}
	},
}

ThemePrefs.InitAll(Prefs)

lang = "jp_"
function ChangeLanguage()
	if ThemePrefs.Get("Language") == "jp" then
		lang = "jp"
	elseif ThemePrefs.Get("Language") == "kor" then
		lang = "kor"
	else
		lang="en"
	end
end

function InitUserPrefs()
	local Prefs = {
		UserPrefGameplayShowStepsDisplay = true,
		UserPrefGameplayShowStepsDisplay = true,
		UserPrefGameplayShowScore = false,
		UserPrefScoringMode = 'DDR Extreme',
		UserPrefShowLotsaOptions = true,
		UserPrefAutoSetStyle = false,
		UserPrefLongFail = false,
		UserPrefNotePosition = true,
		UserPrefComboOnRolls = false,
		UserPrefProtimingP1 = false,
		UserPrefProtimingP2 = false,
		UserPrefGameplayShowCalories=true,
		UserPrefGameplayShowFastSlow=true,
		FlashyCombos = false,
		UserPrefComboUnderField = true,
		UserPrefFancyUIBG = true,
		UserPrefTimingDisplay = true
	}
	for k, v in pairs(Prefs) do
		-- kind of xxx
		local GetPref = type(v) == "boolean" and GetUserPrefB or GetUserPref
		if GetPref(k) == nil then
			SetUserPref(k, v)
		end
	end
	-- screen filter
	setenv("ScreenFilterP1",0)
	setenv("ScreenFilterP2",0)
end

--[[ option rows ]]
function ReadOrCreateAppearancePlusValueForPlayer(PlayerUID, MyValue)
	local AppearancePlusFile = RageFileUtil:CreateRageFile()
	if AppearancePlusFile:Open("Save/AppearancePlus/"..PlayerUID..".txt",1) then 
		local str = AppearancePlusFile:Read();
		MyValue =str;
	else
		AppearancePlusFile:Open("Save/AppearancePlus/"..PlayerUID..".txt",2);
		AppearancePlusFile:Write("Visible");
		MyValue="Visible";
	end
	AppearancePlusFile:Close();
	return MyValue;
end

function SaveAppearancePlusValueForPlayer( PlayerUID, MyValue)

	
	local AppearancePlusFile2 = RageFileUtil:CreateRageFile();
	AppearancePlusFile2:Open("Save/AppearancePlus/"..PlayerUID..".txt",2);
	AppearancePlusFile2:Write(tostring(MyValue));
	AppearancePlusFile2:Close();
end
--AppearancePlus
function OptionRowAppearancePlusUseFile()
	local t = {
		Name="AppearancePlus",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { "Visible", 'Hidden', 'Sudden', 'Stealth', 'Hidden+', 'Sudden+', 'Hidden+&Sudden+', },
		LoadSelections = function(self, list, pn)
			local AppearancePlusValue = "Visible";
			local pf = PROFILEMAN:GetProfile(pn);
			local PlayerUID = "";
			
			if pf then 
				PlayerUID = pf:GetGUID()  
				AppearancePlusValue = ReadOrCreateAppearancePlusValueForPlayer(PlayerUID,AppearancePlusValue);
			else
				PlayerUID = "UnknownPlayerUID"
				AppearancePlusValue = "Visible";
			end
			
			if AppearancePlusValue ~= nil then
				if AppearancePlusValue == "Hidden" then
					list[2] = true
				elseif AppearancePlusValue == "Sudden" then
					list[3] = true
				elseif AppearancePlusValue == "Stealth" then
					list[4] = true
				elseif AppearancePlusValue == "Hidden+" then
					list[5] = true
				elseif AppearancePlusValue == "Sudden+" then
					list[6] = true
				elseif AppearancePlusValue == "Hidden+&Sudden+" then
					list[7] = true
				else
					list[1] = true
				end
			else
				SaveAppearancePlusValueForPlayer(PlayerUID,"Visible")
				list[1] = true
			end
			
		end,
		SaveSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local found = false
			local PlayerUID = "";
			local pf = PROFILEMAN:GetProfile(pn);
			
			if pf then 
				PlayerUID = pf:GetGUID()  
			else
				PlayerUID = "UnknownPlayerUID"
			end
			
			for i=1,#list do
				if not found then
					if list[i] == true then
						local val = "Visible";
						if i==2 then
							val = "Hidden";
						elseif i==3 then
							val = "Sudden";
						elseif i==4 then
							val = "Stealth";
						elseif i==5 then
							val = "Hidden+";
						elseif i==6 then
							val = "Sudden+";
						elseif i==7 then
							val = "Hidden+&Sudden+";
						else
							val = "Visible";
						end
						setenv("AppearancePlus"..pName,val)
						SaveAppearancePlusValueForPlayer(PlayerUID,val)
						found = true
						break;
					end
				end
			end
		end,
	};
	setmetatable(t, t)
	return t
end

--GameplayShowFastSlow
function UserPrefGameplayShowFastSlow()
	local t = {
		Name = "UserPrefGameplayShowFastSlow",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = {
			THEME:GetString('OptionNames','Off'),
			THEME:GetString('OptionNames','On')
		},
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("UserPrefGameplayShowFastSlow") ~= nil then
				if GetUserPrefB("UserPrefGameplayShowFastSlow") then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("UserPrefGameplayShowFastSlow", true)
				list[2] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local val = list[2] and true or false
			WritePrefToFile("UserPrefGameplayShowFastSlow", val)
			MESSAGEMAN:Broadcast("PreferenceSet", { Message == "Set Preference" })
			THEME:ReloadMetrics()
		end
	}
	setmetatable(t, t)
	return t
end

--[[ end option rows ]]

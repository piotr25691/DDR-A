function HasAnyCharacters(pn)
	return GAMESTATE:IsPlayerEnabled(pn) and GAMESTATE:GetCharacter(pn):GetDisplayName() ~= "default"
end

function AnyoneHasChar()
	return (HasAnyCharacters(PLAYER_1) or HasAnyCharacters(PLAYER_2))
end

function BothPlayersEnabled()
	return GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:IsPlayerEnabled(PLAYER_2)
end

function ResetCamera()
	local cFOV = 90;
if THEME:GetMetric("Common", "ScreenHeight") >= 1080 then
	cFOV = 91.3
end
    return Camera:fov(cFOV):rotationy(180):rotationx(0):rotationz(0):Center():z(WideScale(300,400)):addy(10):stopeffect()
end

DEDICHAR = {};


function DEDICHAR:SetTimingData()
	setenv("song", 	GAMESTATE:GetCurrentSong() )
	setenv("start", getenv("song"):GetFirstBeat() )
	setenv("now",	GAMESTATE:GetSongBeat() )
end

function DEDICHAR:UpdateModelRate()
	local RangeMax = ThemePrefs.Get("ModelRateBPMMax")
	local RangeLow = ThemePrefs.Get("ModelRateBPMLow")
	local MultiMax = ThemePrefs.Get("ModelRateMulMax")
	local MultiLow = ThemePrefs.Get("ModelRateMulLow")

	local MusicRate = 1
	if SCREENMAN:GetTopScreen():GetScreenType() == "ScreenType_Gameplay" and SCREENMAN:GetTopScreen():GetHasteRate() then
		MusicRate = SCREENMAN:GetTopScreen():GetHasteRate()
	end
	local BPM = (GAMESTATE:GetSongBPS()*60)
	
	local UpdateScale = scale( BPM, RangeLow, RangeMax, MultiLow, MultiMax );

	local Clamped = clamp( UpdateScale, 0.5, 2.5 );

	local ToConvert = Clamped*MusicRate
	local SPos = GAMESTATE:GetSongPosition()

	if not SPos:GetFreeze() and not SPos:GetDelay() then
		return ToConvert
	end
	return 0
end

Config = {};

function Config.Load(key,file)
	if not FILEMAN:DoesFileExist(file) then return false end
	
	local Container = {}

	local configfile = RageFileUtil.CreateRageFile()
	configfile:Open(file, 1)
	
	local configcontent = configfile:Read()
	
	configfile:Close()
	configfile:destroy()
	
	for line in string.gmatch(configcontent.."\n", "(.-)\n") do
		for KeyVal, Val in string.gmatch(line, "(.-)=(.+)") do
			if key == KeyVal then return Val end
		end		
	end
end

function setenv(name,value) GAMESTATE:Env()[name] = value end
function getenv(name) return GAMESTATE:Env()[name] end


function SlowMotion(self)
	local SPos = GAMESTATE:GetSongPosition()
	
	if not SPos:GetFreeze() and not SPos:GetDelay() then
		self:SetUpdateRate(1)
	else
		self:SetUpdateRate(0.1)
	end
end


function Boom()
	if GetUserPref("OptionRowBoom")=='2014' then
		return "(2014)" 
	else
		return "(A)"
	end;
end;

function Screen.CharacterSelect()
	if GetUserPref("OptionRowScreenCharacters")=='OFF' then
		return "ScreenSelectStyle"
	else
		return "ScreenSelectCharacters"
	end
end

Line = {
	OptionNumber = function() 
		if GetUserPref("OptionRowScreenCharacters")=='OFF' then
			if GetUserPref("OptionRowOptionStage")=='OFF' then
				return "1,2,3,4,5,6,7,8,9,10,11,12,13"
			else	
				return "1,2,3,4,5,6,7,8,9,10,11,12,13,14"
			end;
		else
			if GetUserPref("OptionRowOptionStage")=='OFF' then
				return "1,2,3,4,5,6,7,8,9,10,11,12"
			else
				return "1,2,3,4,5,6,7,8,9,10,11,12,13"
			end;
		end
	end;
	
	LineT = function()
		if GetUserPref("OptionRowScreenCharacters")=='OFF' and GetUserPref("OptionRowOptionStage")=='OFF' then
			return "list,Characters"
		elseif GetUserPref("OptionRowScreenCharacters")=='OFF' and GetUserPref("OptionRowOptionStage")=='ON' then
			return "list,Characters"
		elseif GetUserPref("OptionRowScreenCharacters")=='ON' and GetUserPref("OptionRowOptionStage")=='OFF' then
			return "list,Risky"
		elseif GetUserPref("OptionRowScreenCharacters")=='ON' and GetUserPref("OptionRowOptionStage")=='ON' then
			return "lua,OptionRowStage()"
		end;
	end;
	
	LineP = function()
		if GetUserPref("OptionRowScreenCharacters")=='OFF' and GetUserPref("OptionRowOptionStage")=='OFF' then
			return "list,Risky"
		elseif GetUserPref("OptionRowScreenCharacters")=='OFF' and GetUserPref("OptionRowOptionStage")=='ON' then
			return "lua,OptionRowStage()"
		elseif GetUserPref("OptionRowScreenCharacters")=='ON' and GetUserPref("OptionRowOptionStage")=='OFF' then
			return "list,Risky"
		elseif GetUserPref("OptionRowScreenCharacters")=='ON' and GetUserPref("OptionRowOptionStage")=='ON' then
			return "list,Risky"
		end;
	end;
}
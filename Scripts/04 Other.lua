function ThemeManager:GetAbsolutePath(sPath, optional)
	local sFinPath = self:GetCurrentThemeDirectory().."/"..sPath
	if not optional then
		assert(FILEMAN:DoesFileExist(sFinPath), "the theme element "..sPath.." is missing")
	end
	return sFinPath
end

function jacketpath(text, so)
	if not text or text =="" then
		return nil
	end
	
	so = ToEnumShortString(so)
	if so == "Genre" then
		return THEME:GetPathG("","Common fallback jacket")
	elseif so == "TopGrades" then
		return THEME:GetPathG("","_jackets/sort/grade/"..group_name[text]..".png")
	elseif string.find(so,"Meter") then
		return THEME:GetPathG("","_jackets/sort/EasyMeter/"..group_name[text]..".png")
	else
		local internalPath = THEME:GetAbsolutePath("Graphics/_jackets/sort/"..so.."/"..text..".png", true)
		if FILEMAN:DoesFileExist(internalPath) then
			return internalPath
		end
		if so == "Group" then
			local groupPath = GetGroupJacketPath(text, SONGMAN:GetSongGroupBannerPath(text))
			if FILEMAN:DoesFileExist(groupPath) then
				return groupPath
			else
			end
		end
	end
	return THEME:GetPathG("Common","fallback jacket")
end

function jacketset(self)
	local mw = SCREENMAN:GetTopScreen():GetChild("MusicWheel")
	local fPath2 = THEME:GetPathG("","Common fallback jacket")
	if mw:GetSelectedType() == "WheelItemDataType_Section" then
		fPath2 = jacketpath(mw:GetSelectedSection(), GAMESTATE:GetSortOrder())
	end
	return fPath2
end

function jacketsetwi(_,params)
	return jacketpath(params.Text, GAMESTATE:GetSortOrder())
end

function SameDiffSteps(song, pn)
    if song then
		local diff = GAMESTATE:GetCurrentSteps(pn):GetDifficulty();
		local st = GAMESTATE:GetCurrentStyle():GetStepsType();
		return song:GetOneSteps(st, diff);
	end;
end;

function Boom()
	if GetUserPref("OptionRowBoom")=='2014' then
		return "(2014)" 
	else
		return "(A)"
	end
end

function Screen.CharacterSelect()
	if GetUserPref("OptionRowScreenCharacters")=='ON' then
		return "ScreenSelectCharacters"
	else
		return "ScreenSelectStyle"
	end
end

Line = {
	OptionNumber = function() 
		if GetUserPref("OptionRowScreenCharacters")=='ON' then
			if GetUserPref("OptionRowOptionStage")=='ON' then
				return "1,2,3,4,5,6,7,8,9,10,11,12,13"
			else
				return "1,2,3,4,5,6,7,8,9,10,11,12"
			end;
		else
			if GetUserPref("OptionRowOptionStage")=='ON' then
				return "1,2,3,4,5,6,7,8,9,10,11,12,13,14"
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
		else
			return "list,Characters"
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
		else
			return "list,Risky"
		end;
	end;
}

function SongName()
	if 	
	-- DDR A
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "OurMemories"					or
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "#OurMemories"			
	then
		return "#OurMemories"
	else
		return GAMESTATE:GetCurrentSong():GetDisplayFullTitle()
	end
end

function ArtistName()
	if 	
	-- DDR X3 VS 2ndMIX
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "コネクト"							or	-- Connect
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ヘビーローテーション"					or	-- Heavy Rotation
	--DDR 2013	
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "つけまつける"						or	-- Tsukematsukeru
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ジョジョ～その血の運命～"				or	-- JoJo ~Sono Chi no Sadame~
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "マジLOVE1000%"					or	-- Maji LOVE 1000%
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRIGHT STREAM"					or
	--DDR HOTTEST PARTY
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HOTTEST PARTY"					or
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HOTTEST PARTY 2"				or
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HOTTEST PARTY 3"				or
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DanceDanceRevolution"			or
	--DDR GRAND PRIX	
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "怪物"							or	-- Kaibutsu
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "紅蓮華"							or	-- Gurenge
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "群青"							or	-- Gunjou
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "さくらんぼ"							or 	-- Sakuranbo
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "じょいふる"							or 	-- Joyful
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ドライフラワー"						or	-- Dry flower
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "夏祭り"							or	-- Natsumatsuri
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "夜に駆ける"						or	-- Yoru ni kakeru
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ルカルカ★ナイトフィーバー"				or	-- Luka luka night fever
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋愛レボリューション21"				or	-- Renai revolution 21
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "勿忘"							or	-- Wasurena
	--OTHER SONGS	
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "春竜 ～Haryu～"					
	then
		return ""
	elseif
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The legend of MAX"				or
		GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The legend of MAX(X-Special)"	
	then
		return "ZZ"
	else
		return GAMESTATE:GetCurrentSong():GetDisplayArtist()
	end
end

function RegionFile()
	if FILEMAN:DoesFileExist("/Themes/Region.lua") then
		return "/Themes/Region.lua"
	else
		return THEME:GetPathB("","_none")
	end
end

-- �W���b�W���x���ݒ�
function JudgmentTransformCommand( self, params )
	local x = 0
	local y = -76
	-- ���o�[�X����Y���ݒ�A�Z���^�[����{
	if params.bReverse then y = 67 end
	-- This makes no sense and wasn't even being used due to misspelling.
	-- if bCentered then y = y * 2 end
	self:x( x )
	self:y( y )
end

-- �R���{�ݒ�
function ComboTransformCommand( self, params )
	local x = 0
	local y = 38
	if params.bReverse then y = -23 end

	--[[
	if params.bCentered then
		if params.bReverse then
			y = y - 30
		else
			y = y + 40
		end
	end
	--]]
	self:x( x )
	self:y( y )
end
function SongMeterDisplayX(pn)
	if Center1Player() then
		return SCREEN_CENTER_X
	else
		return pn == PLAYER_1 and SCREEN_LEFT+16 or SCREEN_RIGHT-16
	end
end

function SongMeterDisplayY(pn)
	return Center1Player() and SCREEN_TOP+50 or SCREEN_CENTER_Y
end

function SongMeterDisplayCommand(pn)
	if Center1Player() then
		return cmd(draworder,50;zoom,0;y,SCREEN_TOP-24;sleep,1.5;decelerate,0.5;zoom,1;y,SCREEN_TOP+50)
	else
		local xAdd = (pn == PLAYER_1) and -24 or 24
		return cmd(draworder,5;rotationz,-90;zoom,0;addx,xAdd;sleep,1.5;decelerate,0.5;zoom,1;addx,xAdd*-1)
	end
end
function JudgmentTransformCommand( self, params )
	local x = 0
	local y = -76
	-- ���o�[�X����Y���ݒ�A�Z���^�[����{
	if params.bReverse then y = 67 end
	-- This makes no sense and wasn't even being used due to misspelling.
	-- if bCentered then y = y * 2 end
	self:x( x )
	self:y( y )
end

-- �R���{�ݒ�
function ComboTransformCommand( self, params )
	local x = 0
	local y = 38
	if params.bReverse then y = -23 end

	--[[
	if params.bCentered then
		if params.bReverse then
			y = y - 30
		else
			y = y + 40
		end
	end
	--]]
	self:x( x )
	self:y( y )
end
function IsPlayingWorkout()
	return GAMESTATE:GetEnv("Workout") == "1"
end
	
function WorkoutResetStageStats()
	STATSMAN:Reset()
end

function WorkoutGetProfileGoalType( pn )
	return PROFILEMAN:GetProfile(pn):GetGoalType()
end

function WorkoutGetStageCalories( pn )
	return STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCaloriesBurned()
end

function WorkoutGetTotalCalories( pn )
	return STATSMAN:GetAccumStageStats():GetPlayerStageStats(pn):GetCaloriesBurned()
end

function WorkoutGetTotalSeconds( pn )
	return STATSMAN:GetAccumStageStats():GetGameplaySeconds()
end

function WorkoutGetGoalCalories( pn )
	return PROFILEMAN:GetProfile(pn):GetGoalCalories()
end

function WorkoutGetGoalSeconds( pn )
	return PROFILEMAN:GetProfile(pn):GetGoalSeconds()
end

function WorkoutGetPercentCompleteCalories( pn )
	return WorkoutGetTotalCalories(pn) / WorkoutGetGoalCalories(pn)
end

function WorkoutGetPercentCompleteSeconds( pn )
	return WorkoutGetTotalSeconds(pn) / WorkoutGetGoalSeconds(pn)
end

local numbered_stages= {
	Stage_1st= true,
	Stage_2nd= true,
	Stage_3rd= true,
	Stage_4th= true,
	Stage_5th= true,
	Stage_6th= true,
	Stage_Next= true,
}

function thified_curstage_index(on_eval)
	local cur_stage= GAMESTATE:GetCurrentStage()
	local adjust= 1
	-- hack: ScreenEvaluation shows the current stage, but it needs to show
	-- the last stage instead.  Adjust the amount.
	if on_eval then
		adjust= 0
	end
	if numbered_stages[cur_stage] then
		return FormatNumberAndSuffix(GAMESTATE:GetCurrentStageIndex() + adjust)
	else
		return ToEnumShortString(cur_stage)
	end
end

--Loads the file at path and runs it in the specified environment,
--or an empty one if no environment is provided. Catches any errors that occur.
--Returns false if the called function failed, true and anything else the function returned if it worked
function dofile_safer(path, env)
    env = env or {}
    if not FILEMAN:DoesFileExist(path) then
        --the file doesn't exist
        return false
    end
    local handle = RageFileUtil.CreateRageFile()
    handle:Open(path, 1)
    local code = loadstring(handle:Read(), path)
    handle:Close()
    handle:destroy()
    if not code then
        --an error occurred while compiling the file
        return false
    end
    setfenv(code, env)
    return pcall(code)
end

-- GetCharAnimPath(sPath)
-- Easier access to Characters folder (taken from ScreenHowToPlay.cpp)
function GetCharAnimPath(sPath) return "/Characters/"..sPath end
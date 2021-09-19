--LAST MOD: 20210911
local StagesFolder="/DanceStages/"
local DanceStage = DanceStage()
local Video = FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."avi") == false and FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."mp4") == false

local gFOV = 90;
if THEME:GetMetric("Common", "ScreenHeight") >= 1080 then
	gFOV = 91.3
end

local t = Def.ActorFrame{
	InitCommand=function(self)
		self:Center():fov(gFOV):addy(10);
		--self:Center():fov(90):rotationy(180):z( WideScale(300,400) ):addy(10);
	end;
	OnCommand=function(self) Camera = self; end;
};

if Video then
	-------------- CHARACTERS --------------

		------- SIZE
		Character_1 = GAMESTATE:GetCharacter(PLAYER_1):GetDisplayName()
		Character_2 = GAMESTATE:GetCharacter(PLAYER_2):GetDisplayName()

		if 	string.match(Character_1, "Rinon") 	then
		CharacterSize1=0.67
	elseif 	string.match(Character_1, "Baby") 	then
		CharacterSize1=0.4
	elseif 	string.match(Character_1, "Rena") 	then
		CharacterSize1=0.82
	elseif 	string.match(Character_1, "PiX")	then
		CharacterSize1=0.38
	elseif (string.match(Character_1, "(Ace)") 	or 
			string.match(Character_1, "(X2)") 	or 
			string.match(Character_1, "(X)") 	or 
			string.match(Character_1, "(SN)") 	or 
			string.match(Character_1, "(2nd)"))
	then
		CharacterSize1=1
	else
		CharacterSize1=0.75
	end


	if		string.match(Character_2, "Rinon") 	then
		CharacterSize2=0.67
	elseif 	string.match(Character_2, "Baby")	then
		CharacterSize2=0.4
	elseif 	string.match(Character_2, "Rena")	then
		CharacterSize2=0.82
	elseif 	string.match(Character_2, "PiX")	then
		CharacterSize2=0.38
	elseif (string.match(Character_2, "(Ace)") 	or 
			string.match(Character_2, "(X2)") 	or 
			string.match(Character_2, "(X)") 	or 
			string.match(Character_2, "(SN)") 	or 
			string.match(Character_2, "(2nd)"))
	then
		CharacterSize2=1
	else
		CharacterSize2=0.75
	end


	------- GENRE AND CHOREO

	if BothPlayersEnabled() then
		Choreo = ""
		------- GENRE

		if
			string.match(Character_1, "Jenny") or
			string.match(Character_1, "Alice") or
			string.match(Character_1, "Yuni") or
			string.match(Character_1, "PiX") or
			string.match(Character_1, "Rena") or
			string.match(Character_1, "Emi") or
			string.match(Character_1, "Janet")
		then
			Char1_Gen="F"
		elseif
			string.match(Character_1, "Rage") or
			string.match(Character_1, "Disco") or
			string.match(Character_1, "Baby") or
			string.match(Character_1, "Victory") or
			string.match(Character_1, "Dred")
		then
			Char1_Gen="M"
		elseif
			string.match(Character_1, "Rinon")
		then
			Char1_Gen="R"
		end


		if
			string.match(Character_2, "Jenny") or
			string.match(Character_2, "Alice") or
			string.match(Character_2, "Yuni") or
			string.match(Character_2, "PiX") or
			string.match(Character_2, "Rena") or
			string.match(Character_2, "Emi") or
			string.match(Character_2, "Janet")
		then
			Char2_Gen="F"
		elseif
			string.match(Character_2, "Rage") or
			string.match(Character_2, "Disco") or
			string.match(Character_2, "Baby") or
			string.match(Character_2, "Victory") or
			string.match(Character_2, "Dred")
		then
			Char2_Gen="M"
		elseif
			string.match(Character_2, "Rinon")
		then
			Char2_Gen="R"
		end

	
	------- CHOREO

		if (Char1_Gen == "M" and Char2_Gen == "F") or
			(Char1_Gen == "M" and Char2_Gen == "R") or
			(Char1_Gen == "F" and Char2_Gen == "M") or
			(Char1_Gen == "R" and Char2_Gen == "M")
		then
			DoubleGenre_Choreo = math.random(1,7)
			if DoubleGenre_Choreo == 1 then Choreo = "Embarr"
			elseif DoubleGenre_Choreo == 2 then Choreo = "Higher"
			elseif DoubleGenre_Choreo == 3 then Choreo = "River"
			elseif DoubleGenre_Choreo == 4 then Choreo = "Love"
			elseif DoubleGenre_Choreo == 5 then Choreo = "Teo1"
			elseif DoubleGenre_Choreo == 6 then Choreo = "Wave"
			elseif DoubleGenre_Choreo == 7 then Choreo = "Phantasma"
			end

		elseif (Char1_Gen == "F" and Char2_Gen == "F") or
			(Char1_Gen == "R" and Char2_Gen == "R") or
			(Char1_Gen == "R" and Char2_Gen == "F") or
			(Char1_Gen == "F" and Char2_Gen == "R")
		then
			DoubleGenre_Choreo = math.random(1,9)
			if DoubleGenre_Choreo == 1 then Choreo = "Yume"
			elseif DoubleGenre_Choreo == 2 then Choreo = "Brain"
			elseif DoubleGenre_Choreo == 3 then Choreo = "Embarr"
			elseif DoubleGenre_Choreo == 4 then Choreo = "Higher"
			elseif DoubleGenre_Choreo == 5 then Choreo = "Love"
			elseif DoubleGenre_Choreo == 6 then Choreo = "Luka"
			elseif DoubleGenre_Choreo == 7 then Choreo = "River"
			elseif DoubleGenre_Choreo == 8 then Choreo = "Teo1"
			elseif DoubleGenre_Choreo == 9 then Choreo = "Wave"
			end

		elseif (Char1_Gen == "M" and Char2_Gen == "M") then
			DoubleGenre_Choreo = math.random(1,11)
			if DoubleGenre_Choreo == 1 then Choreo = "Embarr"
			elseif DoubleGenre_Choreo == 2 then Choreo = "Specialist"
			elseif DoubleGenre_Choreo == 3 then Choreo = "Higher"
			elseif DoubleGenre_Choreo == 4 then Choreo = "Life"
			elseif DoubleGenre_Choreo == 5 then Choreo = "Love"
			elseif DoubleGenre_Choreo == 6 then Choreo = "River"
			elseif DoubleGenre_Choreo == 7 then Choreo = "Seisou"
			elseif DoubleGenre_Choreo == 8 then Choreo = "Snowman"
			elseif DoubleGenre_Choreo == 9 then Choreo = "Chaos"
			elseif DoubleGenre_Choreo == 10 then Choreo = "Teo1"
			elseif DoubleGenre_Choreo == 11 then Choreo = "Wave"
			end
		end
	end


	------- CHARACTER LOAD -------
		YND = math.random(1,12)
		if YND == 1 then Yuni = "F AAAgain"
		elseif YND == 2 then Yuni = "F Brain"
		elseif YND == 3 then Yuni = "F Embarr"
		elseif YND == 4 then Yuni = "F Higher"
		elseif YND == 5 then Yuni = "F Love"
		elseif YND == 6 then Yuni = "F Luka"
		elseif YND == 7 then Yuni = "F Phantasma"
		elseif YND == 8 then Yuni = "F River"
		elseif YND == 9 then Yuni = "F Saturation"
		elseif YND == 10 then Yuni = "F Teo1"
		elseif YND == 11 then Yuni = "F Wave"
		elseif YND == 12 then Yuni = "F Yume"
		end
		
	if GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Yuni's Nocturnal Days" then
	t[#t+1] = Def.Model {
				Meshes="/Characters/(X2) Yuni/model.txt";
				Materials="/Characters/(X2) Yuni/model.txt";
				Bones="/Characters/(X2) Yuni/Dance/"..Yuni..".redir";
				OnCommand=function(self)
				self:cullmode("CullMode_None")
				self:x(0):zoom(1):queuecommand("UpdateRate") end,
				UpdateRateCommand=function(self)
				end,
	};
	else

		if AnyoneHasChar() then
			for player in ivalues(PlayerNumber) do
				if BothPlayersEnabled() and 
				(string.match(Character_1, "(Ace)") or 
				string.match(Character_1, "(X2)") or 
				string.match(Character_1, "(X)") or 
				string.match(Character_1, "(SN)") or
				string.match(Character_1, "(2nd)")) 
				and
				(string.match(Character_2, "(Ace)") or 
				string.match(Character_2, "(X2)") or 
				string.match(Character_2, "(X)") or 
				string.match(Character_2, "(SN)") or
				string.match(Character_2, "(2nd)"))
				then
					BonesToLoad1=GAMESTATE:GetCharacter(player):GetCharacterDir().."Dance/"..Char1_Gen.." "..Choreo..".redir"
					BonesToLoad2=GAMESTATE:GetCharacter(player):GetCharacterDir().."Dance/"..Char2_Gen.." "..Choreo..".redir"
				else
					BonesToLoad1=GAMESTATE:GetCharacter(player):GetDanceAnimationPath()
					BonesToLoad2=GAMESTATE:GetCharacter(player):GetDanceAnimationPath()
				end
		
				--MODEL LOAD
				if GAMESTATE:IsPlayerEnabled(player) and GAMESTATE:GetCharacter(player):GetDisplayName() ~= "default" then
					t[#t+1] = Def.Model {
						Meshes=GAMESTATE:GetCharacter(player):GetModelPath(),
						Materials=GAMESTATE:GetCharacter(player):GetModelPath(),
						Bones=(player == PLAYER_1 and BonesToLoad1) or BonesToLoad2,
						OnCommand=function(self)
							self:cullmode("CullMode_None")
							if BothPlayersEnabled() then self:x( (player == PLAYER_1 and 7) or -7 )
								:zoom( (player == PLAYER_1 and CharacterSize1) or CharacterSize2)
								:queuecommand("UpdateRate")
							else
								self:x(0):zoom( (player == PLAYER_1 and CharacterSize1) or CharacterSize2)
								:queuecommand("UpdateRate")
							end
						end,
						UpdateRateCommand=function(self) end,
					};
				end
			end
		end
	end;

	-------------- DANCE STAGES --------------

		------- CAMERA -------



	CamRan=1
	local CameraRandomList = {}
	
	for i = 1, 12 do
		CameraRandomList[i] = i
	end
	
	for i = 1, 12 do
		local CamRandNumber = math.random(1,12)
		local TempRand = CameraRandomList[i]
			CameraRandomList[i] = CameraRandomList[CamRandNumber]
			CameraRandomList[CamRandNumber] = TempRand
	end


	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			self:visible(false)
			:queuemessage("Camera"..CameraRandomList[6]):sleep(7.8):queuecommand("TrackTime");
		end;
		TrackTimeCommand=function(self)
		DEDICHAR:SetTimingData()
		self:sleep(1/60)
		self:queuemessage("Camera"..CameraRandomList[CamRan]):sleep(7.8)
			CurrentStageCamera = CurrentStageCamera
				CamRan=CamRan+1
				if CamRan==12 then
					CamRan = 1
				end
			self:queuecommand("TrackTime")
		end,
	};


	------- JACKET WRITER -------
	
	local Animation = "/DanceStages/"..DanceStage.."/Animacion.ini"
	local file = RageFileUtil.CreateRageFile()

	if GAMESTATE:GetCurrentSong():HasJacket() then
		if string.match(DanceStage, "VIDEO") or DanceStage == "BIG SCREEN (X2)" or string.match(DanceStage, "REPLICANT") then
			file:Open(Animation,2)
			file:Write("[AnimatedTexture]\nFrame0000=../.."..GAMESTATE:GetCurrentSong():GetJacketPath().."\nDelay0000=1")
			file:Close()
			file:destroy()
		end
	elseif GAMESTATE:GetCurrentSong():HasBackground() then
		if string.match(DanceStage, "VIDEO") or DanceStage == "BIG SCREEN (X2)" or string.match(DanceStage, "REPLICANT") then
			file:Open(Animation,2)
			file:Write("[AnimatedTexture]\nFrame0000=../.."..GAMESTATE:GetCurrentSong():GetBackgroundPath().."\nDelay0000=1")
			file:Close()
			file:destroy()
		end
	end;


	------- DANCESTAGE CONFIGURATOR -------

	function CheckStageConfigurationNumber(def,conf)
		local result = def or 0
		local filetoload = StagesFolder..DanceStage.."/MapCfg.cfg";
		local content = Config.Load(conf,filetoload)
		if content then result = tonumber(content) end
		return result
	end

	------- DANCESTAGE LOADER -------



	if DanceStage == "DANCING RAYS (X)" or DanceStage == "CLUB (X2)" or DanceStage == "BOOM LIGHT (X2)" or DanceStage == "BOOM BOOM BOOM (X)" then

	--LIGHT
		t[#t+1] = Def.ActorFrame{
			Def.Model {
				Meshes=StagesFolder..DanceStage.."/Map_B.txt";
				Materials=StagesFolder..DanceStage.."/Map_B.txt";
				Bones=StagesFolder..DanceStage.."/Map_B.txt";
				OnCommand=function(self)
					self:cullmode(2):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
					self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
				end,
			};
		};
	
	--AMBIENT
		t[#t+1] = Def.ActorFrame{
			Def.Model {
				Meshes=StagesFolder..DanceStage.."/Map_A.txt";
				Materials=StagesFolder..DanceStage.."/Map_A.txt";
				Bones=StagesFolder..DanceStage.."/Map_A.txt";
				OnCommand=function(self)
					self:cullmode(1):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
					self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
				end,
			};
		};
	else

		t[#t+1] = Def.ActorFrame{
			Def.Model {
				Meshes=StagesFolder..DanceStage.."/Map.txt";
				Materials=StagesFolder..DanceStage.."/Map.txt";
				Bones=StagesFolder..DanceStage.."/Map.txt";
				OnCommand=function(self)
					self:cullmode(2):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
					self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
				end,
			};
		};
	end
	
	t[#t+1] = LoadActor(StagesFolder..DanceStage.."/Cameras.lua" )

end;

return t;
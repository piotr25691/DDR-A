--LAST MOD: 20210911
local StagesFolder="/DanceStages/"
local DanceStage = DanceStage()
local Video = FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."avi") == false and FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."mp4") == false 

local gFOV;
if THEME:GetMetric("Common", "ScreenHeight") >= 1080 then
	gFOV = 91.3
else
	gFOV = 90
end

local t = Def.ActorFrame{
	InitCommand=function(self)
		self:Center():fov(gFOV):addy(10);
	end;
	OnCommand=function(self) Camera = self; end;
};


if Video then
------- DANCESTAGE LOADER PART 1 -------
	------- AMBIENT

if DanceStage == "DANCING RAYS (X)" or 
   DanceStage == "CLUB (X2)" or 
   DanceStage == "BOOM LIGHT (X2)" or 
   DanceStage == "BOOM BOOM BOOM (X)" 
then

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

	


-------------- CHARACTERS --------------
		t[#t+1] = LoadActor("Characters");
		
------- DANCESTAGE LOADER PART 2 -------
	------- LIGHTS -------

	if DanceStage == "DANCING RAYS (X)" or 
	   DanceStage == "CLUB (X2)" or 
	   DanceStage == "BOOM LIGHT (X2)" or 
	   DanceStage == "BOOM BOOM BOOM (X)" 
	then
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
	end

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
	if string.match(DanceStage, "VIDEO") or DanceStage == "BIG SCREEN (X2)" then 
		Animation = "/DanceStages/"..DanceStage.."/Animacion.ini"
	elseif string.match(DanceStage, "REPLICANT") then 
		Animation = "/DanceStages/"..DanceStage.."/Fondo.ini"
	end;
	
	if GAMESTATE:GetCurrentSong():HasJacket() then
		Graphic = GAMESTATE:GetCurrentSong():GetJacketPath()
	elseif GAMESTATE:GetCurrentSong():HasBackground() then
		Graphic = GAMESTATE:GetCurrentSong():GetBackgroundPath()
	end;
	
	local file = RageFileUtil.CreateRageFile()

	if string.match(DanceStage, "VIDEO") or string.match(DanceStage, "REPLICANT") or DanceStage == "BIG SCREEN (X2)" then 
		file:Open(Animation,2)
		file:Write("[AnimatedTexture]\nFrame0000=../.."..Graphic.."\nDelay0000=1")
		file:Close()
		file:destroy()
	end;


	------- DANCESTAGE CONFIGURATOR -------

	function CheckStageConfigurationNumber(def,conf)
		local result = def or 0
		local filetoload = StagesFolder..DanceStage.."/MapCfg.cfg";
		local content = Config.Load(conf,filetoload)
		if content then result = tonumber(content) end
		return result
	end
	
	t[#t+1] = LoadActor(StagesFolder..DanceStage.."/Cameras.lua" )

end;

return t;
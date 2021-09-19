local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
	Stage_1st		= 1,
	Stage_2nd		= 2,
	Stage_3rd		= 3,
	Stage_4th		= 4,
	Stage_5th		= 5,
	Stage_6th		= 6,
};

if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
	sStage = "Stage_Final";
else
	sStage = sStage;
end;
----------------------------------------------------------------------------
return Def.ActorFrame {
Def.Sprite{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OnCommand=function(self)
		
	self:Load(THEME:GetPathB("","_door/scene_choice_stage_bg.png"));
	self:diffusealpha(0):zoom(2):diffusealpha(0.7)
	:sleep(0.6):linear(0.2):zoom(1)
	:sleep(1.032):linear(0.04):diffusealpha(0)
	:zoomx(1.8):zoomy(0);
	end;
	};

	Def.Sprite{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+5);
	OnCommand=function(self)
	self:Load(THEME:GetPathB("ScreenStageInformation", "decorations/StageDisplay/Stage " .. ToEnumShortString(sStage) ));
	self:diffusealpha(0):zoom(2):diffusealpha(1)
	:sleep(0.6):linear(0.2):zoom(1)
	:sleep(1.032):linear(0.04):diffusealpha(0)
	:zoomx(1.8):zoomy(0);
	end;
	};
	Def.Sprite{
	InitCommand=cmd(x,SCREEN_CENTER_X-700;y,SCREEN_CENTER_Y;blend,Blend.Add);
	OnCommand=function(self)
	self:Load(THEME:GetPathB("ScreenStageInformation", "decorations/StageDisplay/Stage " .. ToEnumShortString(sStage) ));
	self:diffusealpha(1):zoom(2):linear(0.25)
	:x(SCREEN_CENTER_X):linear(0.25):diffusealpha(0.5):zoom(3.5)
	:linear(0.15):diffusealpha(0):zoom(4.5);
	end;
	};
	Def.Sprite{
	InitCommand=cmd(x,SCREEN_CENTER_X+700;y,SCREEN_CENTER_Y;blend,Blend.Add);
	OnCommand=function(self)
	self:Load(THEME:GetPathB("ScreenStageInformation", "decorations/StageDisplay/Stage " .. ToEnumShortString(sStage) ));
	self:diffusealpha(1):zoom(2):linear(0.25)
	:x(SCREEN_CENTER_X):linear(0.25):diffusealpha(0.5):zoom(3.5)
	:linear(0.15):diffusealpha(0):zoom(4.5);
	end;
	};
};
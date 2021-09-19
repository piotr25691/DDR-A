local song = GAMESTATE:GetCurrentSong():GetDisplayFullTitle();
local ss = 	song == "NEPHILIM DELTA" or 
			song == "SILVER☆DREAM" or
			song == "恋する☆宇宙戦争っ!!" or
			song == "Over The “Period”" or 
			song == "最小三倍完全数" or
			song == "PANIC HOLIC" or
			song == "Valkyrie dimension" or
			song == "Second Heaven" or
			song == "MAX 360" or
			song == "SABER WING" or
			song == "Triple Journey -TAG EDITION-" or
			song == "Tohoku EVOLVED" or 
			song == "TRIP MACHINE EVOLUTION" or 
			song == "Pluto Relinquish" or 
			song == "MAX.(period)" or
			song == "DEAD END (\"GROOVE RADAR\" Special)";
			
return Def.ActorFrame {
	LoadActor( "scene_choice_stage_ready" )..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoom(1):blend(('BlendMode_Add'));
		end;
		OnCommand=function(self)
			self:diffusealpha(0):zoom(2):linear(0.22):diffusealpha(1):zoom(1)
		if ss then
			self:sleep(0.2)
		else
			self:sleep(1)
		end;
			self:linear(0.04):zoomy(0):diffusealpha(0);
		end;
	};
	
	--Left
	LoadActor( "scene_choice_ready" )..{
		OnCommand=function(self)
		self:zoom(1):x(SCREEN_LEFT-556):y(SCREEN_CENTER_Y+5)
		--self:sleep(0.116)
		self:linear(0.22):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+5):linear(0.2):zoom(1)
		if 	ss then
			self:sleep(0)
		else
			self:sleep(0.8)
		end;
		self:linear(0.04):diffusealpha(0):zoomy(0);
		end;
	};
	--Right
	LoadActor( "scene_choice_ready" )..{
		OnCommand=function(self)
		self:zoom(1):x(SCREEN_RIGHT+556):y(SCREEN_CENTER_Y+5)
		--self:sleep(0.116)
		self:linear(0.22):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+5):linear(0.2):zoom(1)
		if 	ss then
			self:sleep(0)
		else
			self:sleep(0.8)
		end;
		self:linear(0.04):diffusealpha(0):zoomy(0);
		end;
	};
	
	--Glow
	-- LoadActor( "scene_choice_ready" )..{
		-- OnCommand=function(self)
		-- self:diffusealpha(0):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+5)
		-- self:sleep(0.283)
		-- self:diffusealpha(0.5):zoom(1.15):linear(0.017):diffusealpha(1):linear(0.133):diffusealpha(0):zoom(1.1);
		-- end;
	-- };
};
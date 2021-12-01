local function go_in()
	if GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Butterfly" 														then return 0.8
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CHAOS"															then return 1.4
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DEAD END (\"GROOVE RADAR\" Special)" 							then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pluto Relinquish" 												then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SABER WING" 													then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Shiny World" 													then return 6.8
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Valkyrie dimension" 											then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "NEPHILIM DELTA" 												then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SILVER☆DREAM" 													then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tohoku EVOLVED" 												then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE EVOLUTION" 										then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Triple Journey -TAG EDITION-" 									then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX.(period)" 													then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Over The “Period”" 												then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "IX" 	 														then return 0.8
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋する☆宇宙戦争っ!!" 												then return 0 	
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX 360" 														then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "最小三倍完全数" 													then return 0
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AI" 															then return 0.2
elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PANIC HOLIC"													then return 0
else return 1 end
end;

return Def.ActorFrame {
	LoadActor( "scene_choice_stage_bg_yellow_here" )..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoom(1):blend(('BlendMode_Add'));
		end;
		OnCommand=function(self)
			self:diffusealpha(0):zoom(2):linear(0.22):diffusealpha(1):zoom(1):sleep(go_in()+0.2):linear(0.04):zoomy(0):diffusealpha(0);
		end;
	};
	
	--Left
	LoadActor( "scene_choice_here_we_go" )..{
		OnCommand=function(self)
		self:zoom(1):x(SCREEN_LEFT-556):y(SCREEN_CENTER_Y+5)
		self:linear(0.22):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+5)
		self:linear(0.2):zoom(1):sleep(go_in())
		self:linear(0.04):diffusealpha(0):zoomy(0);
		end;
	};
	
	--Right
	LoadActor( "scene_choice_here_we_go" )..{
		OnCommand=function(self)
		self:zoom(1):x(SCREEN_RIGHT+556):y(SCREEN_CENTER_Y+5)
		self:linear(0.22):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+5)
		self:linear(0.2):zoom(1):sleep(go_in())
		self:linear(0.04):diffusealpha(0):zoomy(0);
		end;
	};
};
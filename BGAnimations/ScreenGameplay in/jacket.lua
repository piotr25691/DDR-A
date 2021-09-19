local song = GAMESTATE:GetCurrentSong();

--Jacket
return Def.ActorFrame {
 	InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+18;diffusealpha,1;zoom,1);
	OnCommand=function(self)
		--DDR 1st
			if 	song:GetDisplayFullTitle() == "NEPHILIM DELTA" or 
				song:GetDisplayFullTitle() == "SILVER☆DREAM" or
				song:GetDisplayFullTitle() == "恋する☆宇宙戦争っ!!" or
				song:GetDisplayFullTitle() == "Over The “Period”" or 
				song:GetDisplayFullTitle() == "最小三倍完全数" or
				song:GetDisplayFullTitle() == "PANIC HOLIC" or
				song:GetDisplayFullTitle() == "MAX 360" or
				song:GetDisplayFullTitle() == "MAX.(period)" or
				song:GetDisplayFullTitle() == "Valkyrie dimension" or
				song:GetDisplayFullTitle() == "SABER WING" or
				song:GetDisplayFullTitle() == "Triple Journey -TAG EDITION-" 
			then
				self:sleep(0.3)
			elseif 
				song:GetDisplayFullTitle() == "Tohoku EVOLVED" or 
				song:GetDisplayFullTitle() == "TRIP MACHINE EVOLUTION" or 
				song:GetDisplayFullTitle() == "Pluto Relinquish" or 
				song:GetDisplayFullTitle() == "DEAD END (\"GROOVE RADAR\" Special)"  
			then
				self:sleep(0)
			else
				self:sleep(1)
			end;
		self:linear(0.06):zoom(1.5):diffusealpha(0)
	end;
	Def.Sprite {
		OnCommand=function(self)
				if song then
					if song:HasJacket() then
						self:LoadBackground(song:GetJacketPath());
						self:setsize(451,451);
					elseif song:HasBackground() then
						self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
						self:setsize(451,451);
					elseif song:HasBanner() then
						self:LoadFromSongBanner(GAMESTATE:GetCurrentSong());
						self:setsize(451,451);
					else
						self:Load(THEME:GetPathG("","Common fallback jacket"));
						self:setsize(451,451);
					end;
				else
					self:diffusealpha(0);	
				end;
			end
	};
};
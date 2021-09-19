local player = Var "Player"

local t = Def.ActorFrame{
-- Battery 1 line
	LoadActor("Red")..{
		InitCommand=function(self)
			self:texcoordvelocity(-0.5,0)
			self:zoom(1.1)
			self:x(7)
		end;
	};
	-- Battery 2-7 line
	LoadActor("Green")..{
		InitCommand=function(self)
			self:texcoordvelocity(-0.8,0)
			self:zoom(1.1)
			self:x(7)
			self:visible(false)
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player == player then
				if params.LivesLeft >= 2 then
					self:visible(true)
				else
					self:visible(false)
				end
			end
		end;
	};
	-- Battery full line
	LoadActor("Full")..{
		InitCommand=function(self)
			self:texcoordvelocity(-0.8,0)
			self:zoom(1.1)
			self:x(7)
			self:draworder(99)
		end;
		BeginCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			assert(glifemeter);
			if glifemeter:GetTotalLives() == 1 then
				self:visible(false)
			else
				self:visible(true)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			if screen then
				if screen:GetNextScreenName() ~= "ScreenGameplay" then --Make sure Screen="ScreenGameplay"
					local glifemeter = screen:GetLifeMeter(player);
					if params.Player == player then
						if GAMESTATE:IsCourseMode() then
							if glifemeter:GetTotalLives() == 1 then
								self:visible(false)
							else
								if	GAMESTATE:IsPlayerEnabled(player) then
									if 	GAMESTATE:GetCurrentTrail(player):GetDifficulty() == "Difficulty_Hard"  then
										if params.LivesLeft >= 4 then
											self:visible(true);
										else
											self:visible(false);
										end
									else
										if params.LivesLeft >= 8 then
											self:visible(true);
										else
											self:visible(false);
										end
									end
								end
							end
						else
							if glifemeter:GetTotalLives() == 1 then
								self:visible(false)
							elseif params.LivesLeft == glifemeter:GetTotalLives() then
								self:visible(true)
							else
								self:visible(false)
							end
						end
					
						
					end
				end
			end
		end;
		

	};
	-- 4 Battery empty red
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,234;diffusetopedge,color("#5d1115");diffusebottomedge,color("#f50d0d"));
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			assert(glifemeter);
			if glifemeter:GetTotalLives() <= 5 then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			local screen = SCREENMAN:GetTopScreen();
			
			if screen then
				local glifemeter = screen:GetLifeMeter(player);
				assert(glifemeter);
				self:finishtweening();
				self:linear(0);
				self:diffusetopedge(color("#5d1115"));
				self:diffusebottomedge(color("#f50d0d"));
				
				if params.LivesLeft >= 5  then 
					self:zoomto(0,26);
				else
					if glifemeter:GetTotalLives() <= 4 then
						self:zoomto(454-((params.LivesLeft)*113.5),26);
					else	
						self:zoomto(0,26);
					end
				end;
				self:linear(0.33);
				self:diffusetopedge(color("#707171"));
				self:diffusebottomedge(color("#404040"));
			end
		end;	
	};
	-- 4 Battery empty over
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,234;diffusetopedge,color("#707171");diffusebottomedge,color("#404040"));
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			assert(glifemeter);
			if glifemeter:GetTotalLives() <= 5 then
				self:visible(true)
				if glifemeter:GetTotalLives() == 4 or glifemeter:GetTotalLives() == 5 then
					self:zoomto(0,26);
				elseif glifemeter:GetTotalLives() == 3 then
					self:zoomto(113.5,26);
				elseif glifemeter:GetTotalLives() == 2 then
					self:zoomto(227,26);
				elseif glifemeter:GetTotalLives() == 1 then
					self:zoomto(340.5,26);
				end
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:sleep(0.33);
			if params.LivesLeft >= 5 then 
				self:zoomto(0,26);
			else
				self:zoomto(454-((params.LivesLeft)*113.5),26);
			end;
		end;
	};
};

return t;
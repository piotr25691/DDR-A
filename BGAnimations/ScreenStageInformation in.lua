local t = Def.ActorFrame{};

--song jacket--
t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(playcommand,'Set';Center;diffusealpha,0;zoom,0;sleep,1.6+0.25;linear,0.1;diffusealpha,0;zoom,0;sleep,0.5;diffusealpha,0);
	Def.Sprite {
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local course = GAMESTATE:GetCurrentCourse();
			if song then
				if song:HasJacket() then
					self:LoadBackground(song:GetJacketPath());
					self:setsize(0,0);
				elseif song:HasBanner() then
					self:LoadFromSongBanner(GAMESTATE:GetCurrentSong());
					self:setsize(0,0);
				else
					self:Load(THEME:GetPathG("","Common fallback jacket"));
					self:setsize(0,0);
				end;
			elseif course then
				
					self:LoadBackground(course:GetBannerPath());
					self:setsize(0,0);
			else
					self:Load(THEME:GetPathG("","Common fallback jacket"));
					self:setsize(0,0);
			end;
		end;
	};
};

SOUND:PlayOnce(THEME:GetPathS("","Announcer/Crowd X"));
SOUND:PlayOnce(THEME:GetPathS("","Announcer/Crowd SN"));

if GAMESTATE:GetCurrentStage() == 'Stage_1st' then
	t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/1st Stage")).. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:GetCurrentStage() == 'Stage_2nd' then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/2nd Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:GetCurrentStage() == 'Stage_3rd' then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/3rd Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:GetCurrentStage() == 'Stage_4th' then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/4th Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:GetCurrentStage() == 'Stage_Final' then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/Final Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:IsExtraStage() then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/Extra Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:IsExtraStage2() then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/Encore Extra Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

end;

return t;
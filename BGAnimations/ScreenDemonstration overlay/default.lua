local t = Def.ActorFrame {};

--Title
t[#t+1] = LoadActor("deat_demo_title")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-35;draworder,1;zoom,1;linear,0.3;addy,70;sleep,44;linear,0.3;addy,-100;);
	OffCommand=cmd();
};

--JacketBG
t[#t+1] = LoadActor("deat_jacket_base")..{
	OnCommand=cmd(x,SCREEN_RIGHT-260;addy,600;zoom,1;draworder,2;linear,0.3;y,SCREEN_CENTER_Y+14;sleep,44;linear,0.3;addy,600);
	OffCommand=cmd();
};

--SongBG
t[#t+1] = LoadActor("deat_song_info_base")..{
	OnCommand=cmd(x,SCREEN_RIGHT-260;addy,750;zoom,1;draworder,2;linear,0.3;y,SCREEN_CENTER_Y+200;sleep,44;linear,0.3;addy,600);
	OffCommand=cmd();
};

--Jacket
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_RIGHT-260;addy,600;zoom,1;draworder,2;linear,0.3;y,SCREEN_CENTER_Y+15;sleep,44;linear,0.3;addy,600);
	Def.Sprite {
		OnCommand=function (self)
			local course = GAMESTATE:GetCurrentCourse();
			if GAMESTATE:IsCourseMode() then
				if course:GetBackgroundPath() then
					self:Load(course:GetBackgroundPath())
					self:setsize(300,300);
				else
					self:Load(THEME:GetPathG("", "Common fallback jacket"));
					self:setsize(300,300);
				end;
			else
			local song = GAMESTATE:GetCurrentSong();
				if song then
					if song:HasJacket() then
						self:LoadBackground(song:GetJacketPath());
						self:setsize(300,300);
					elseif song:HasBackground() then
						self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
						self:setsize(300,300);
					elseif song:HasBanner() then
						self:LoadFromSongBanner(GAMESTATE:GetCurrentSong());
						self:setsize(300,300);
					else
						self:Load(THEME:GetPathG("","Common fallback jacket"));
						self:setsize(300,300);
					end;
				else
				self:diffusealpha(0);
			end;
		end;
		end;
	OffCommand=cmd();
	};
};

--Song Information
t[#t+1] = LoadFont("_arial_black 18px") .. {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		sText = vSong:GetDisplayFullTitle()
		self:settext( sText );
		self:horizalign(center);
		self:playcommand( "On" );
		self:maxwidth(220);
		self:x(SCREEN_RIGHT-260);
		self:addy(750);
		self:zoom(1.5);
		self:draworder(2);
		self:linear(0.3);
		self:y(SCREEN_CENTER_Y+190);
		self:sleep(44);
		self:linear(0.3);
		self:addy(600);
		
	end;
}

--Artist Information
t[#t+1] = LoadFont("_arial_black 18px") .. {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		sText = vSong:GetDisplayArtist()
		self:settext( sText );
		self:horizalign(center);
		self:playcommand( "On" );
		self:maxwidth(200);
		self:x(SCREEN_RIGHT-270);
		self:addy(760);
		self:zoom(1);
		self:draworder(2);
		self:linear(0.3);
		self:y(SCREEN_CENTER_Y+215);
		self:sleep(44);
		self:linear(0.3);
		self:addy(600);
	end;
}

--white
t[#t+1] = Def.ActorFrame {
	Def.Quad{
	InitCommand=cmd(diffuse,Color("White");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;linear,0.5;diffusealpha,0;sleep,44;linear,0.5;diffusealpha,1;);
	};
	
};

t[#t+1] = LoadActor(THEME:GetPathB("","_Arcade Decorations/default.lua"))..{};

return t
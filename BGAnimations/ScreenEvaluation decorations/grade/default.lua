return Def.ActorFrame {
--P1--
--FCRingP1--
	LoadActor("GoodFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-297;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("GoodFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-297;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-297;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
		if staw ~= nil then
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or string.find(staw,"W3") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-297;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
		if staw ~= nil then
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or string.find(staw,"W3")) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-297;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-297;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-297;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-297;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};






--GRADEP1---
	LoadActor(THEME:GetPathG("Grade/Grade","Tier01"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier02"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier03"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier04"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier05"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier06"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier07"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier08"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier08") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier09"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier09") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier10"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier10") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier11"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier11") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier12"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier12") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier13"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier13") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier14"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier14") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier15"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier15") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor(THEME:GetPathG("Grade/Grade","Tier16"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier16") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier17"))..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-378;y,SCREEN_CENTER_Y-98;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier17") or (STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	
--P2--
--FCRingP2--
	LoadActor("GoodFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+330;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
		local pssp2 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2")
			if pssp2:FullComboOfScore('TapNoteScore_W4') then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
		};
		LoadActor("GoodFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+330;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
		};
		LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+330;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
		if staw ~= nil then
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or string.find(staw,"W3")) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
		};
		LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+330;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
		if staw ~= nil then
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or string.find(staw,"W3") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
		};
		LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+330;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
		};
		LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+330;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
		};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+330;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+330;y,SCREEN_CENTER_Y-80;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
				--end;
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	
	
	
	
	
	
	
--GradeP2--
LoadActor(THEME:GetPathG("Grade/Grade","Tier01"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier02"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier03"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier04"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier05"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier06"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier07"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier08"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier08") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier09"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier09") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier10"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier10") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier11"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier11") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier12"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier12") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier13"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier13") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier14"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier14") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier15"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier15") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor(THEME:GetPathG("Grade/Grade","Tier16"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier16") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor(THEME:GetPathG("Grade/Grade","Tier17"))..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier17") or (STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
};
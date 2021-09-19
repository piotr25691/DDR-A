local x = Def.ActorFrame{

	CodeMessageCommand = function(self, params)
		if params.Name == 'Start' or params.Name == 'Center' then
			MESSAGEMAN:Broadcast("StartButton");
			SCREENMAN:GetTopScreen():Finish();
		end;
	end;

};

local regionPath = "/Themes/"

function LoadPlayerStuff(Player)
	
	local t = {};
	local pn = (Player == PLAYER_1) and 1 or 2;
	local strpn = tostring(pn);
	
	t[#t+1] = Def.ActorFrame {
	OffCommand=cmd(linear,0.1;zoomy,0);
	LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG01") ) .. {
			InitCommand=function(self)
				(cmd(shadowlength,0;zoomy,0))(self);
			end;
			OnCommand=cmd(sleep,0.3;linear,0.3;zoomy,1;);
		};
	LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG02") ) .. {
			InitCommand=function(self)
				(cmd(y,-40;zoomy,0))(self);
			end;
			OnCommand=cmd(sleep,0.3;linear,0.3;zoomy,1;);
		};
	};
	t[#t+1] =Def.ActorFrame{
      Name="Topper";
      InitCommand=function(self)
        (cmd(shadowlength,0))(self);
      end;
      OnCommand=cmd(y,0;sleep,0.3;linear,0.3;y,-238;);
      OffCommand=cmd(linear,0.1;y,0;sleep,0;diffusealpha,0);
	  LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_top") )..{
        InitCommand=cmd(valign,1);
      };
      Def.Sprite{
        InitCommand=function(self)
          self:y(-25)
          if Player == PLAYER_1 then
            self:Load(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_head_1p"))
          else
            self:Load(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_head_2p"))
          end;
        end;
      };
    };
    t[#t+1] =Def.ActorFrame{
      Name="Bottom";
      InitCommand=function(self)
        (cmd(shadowlength,0))(self);
      end;
      OnCommand=cmd(y,0;sleep,0.3;linear,0.3;y,224;);
      OffCommand=cmd(linear,0.1;y,0;sleep,0;diffusealpha,0);
      LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_bottom") )..{
        InitCommand=cmd(valign,0);
      };
    };
	t[#t+1] = Def.ActorFrame {
		Name = 'SmallFrame';
		InitCommand=cmd(y,96);
	};
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..lang.."_sceawi_card_save_data_save_end") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;y,-180);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_player_base") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;y,-54);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathB("GameDecoration","9 stars") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;y,5);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	--Region
	t[#t+1] = LoadActor(regionPath.."Region.lua")..{
      InitCommand=cmd(diffusealpha,0;zoom,1;x,135;y,-57);
      OnCommand=function(self)
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..lang.."_sceawi_scene_guide_skip") )..{
		Name = "FrameInstWord";
		InitCommand=cmd(x,0;y,270;zoom,1);
		OnCommand=cmd(diffusealpha,0;sleep,0.8;linear,0.3;diffusealpha,1);
		OffCommand=function(self)
		(cmd(stoptweening;linear,0.05;;diffusealpha,0))(self);
		end;
	};
	t[#t+1] = LoadFont("ProfileText 24px") .. {
		Name = 'SelectedProfileText';
    InitCommand=function(self)
      (cmd(uppercase,true;xy,-180,-66;halign,0;zoomy,0.7;diffusealpha,0;maxwidth,250))(self);
    end;
		OnCommand=cmd(sleep,0.7;linear,0.2;diffusealpha,1);
    OffCommand=function(self)
      self:diffusealpha(0)
    end;
	};
	t[#t+1] = LoadFont("ProfileText 24px") .. {
		Name = 'selectPlayerUID';
		InitCommand=cmd(zoomy,0.7;diffusealpha,0;xy,58,-28);
    OnCommand=function(self)
      if IsJoinFrame then
        (cmd(linear,0.3;diffusealpha,0))(self);
      else
        self:sleep(0.7):linear(0.1):diffusealpha(1):zoomx(1.5):zoomy(1.2):linear(0.1):zoomx(1.25):zoomy(0.8)
      end
    end;
    OffCommand=function(self)
      self:diffusealpha(0)
    end;
	};
	return t;
end;

--Update Internal Stuff
function UpdateInternal(self, Player)
	local pn = (Player == PLAYER_1) and 1 or 2;
	local style = (GAMESTATE:GetCurrentStyle():GetStepsType() == "StepsType_Dance_Single") and "S" or "D";
	local seltext = self:GetChild('SelectedProfileText');
	local joinframe = self:GetChild('JoinFrame');
	local smallframe = self:GetChild('SmallFrame');
	--local bigframe = self:GetChild('BigFrame');
	local selectRank = self:GetChild('selectRank');
	local selectPlayerUID = self:GetChild('selectPlayerUID');
	local selHonorPic = self:GetChild('selectedHonorPic');
	local selHonorName = self:GetChild('selectHonorName');
	local selPlayerUID;
	selPlayerUID = PROFILEMAN:GetProfile(Player):GetGUID();
	selectPlayerUID:settext(string.upper(string.sub(selPlayerUID,1,4).."-"..string.sub(selPlayerUID,5,8)));
	--bigframe:visible(true);
	seltext:settext(PROFILEMAN:GetProfile(Player):GetDisplayName());
end

if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
x[#x+1] = Def.ActorFrame {
			Name = 'P1Frame';
			InitCommand=cmd(x,SCREEN_CENTER_X-320;y,SCREEN_CENTER_Y;zoom,1);
			OnCommand=function(self)
				UpdateInternal(self, PLAYER_1);
			end;
			OffCommand=cmd();
			children = LoadPlayerStuff(PLAYER_1);
		};
end
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
x[#x+1] = Def.ActorFrame {
			Name = 'P2Frame';
			InitCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y;zoom,1);
			OnCommand=function(self)
				UpdateInternal(self, PLAYER_2);
			end;
			OffCommand=cmd();
			children = LoadPlayerStuff(PLAYER_2);
		};
end


return x;
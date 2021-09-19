local t = Def.ActorFrame {
	LoadActor(THEME:GetPathS("Screenlogo","Voice"))..{
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

t[#t+1] = Def.ActorFrame {
LoadActor(THEME:GetPathB("ScreenLogo","decorations/deti_logo"))..{
    InitCommand=cmd(CenterX;y,_screen.cy-52;zoom,0.86);
  };
  LoadActor(THEME:GetPathB("ScreenLogo","decorations/copyright2019"))..{
    InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-147;zoom,0.8);
  };
  Def.Quad{
		InitCommand=cmd(diffuse,Color("White");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;);
		OnCommand=cmd(linear,0.25;diffusealpha,0);
  };
  LoadActor(THEME:GetPathB("","ModDate"));
};

--Free Play
if GAMESTATE:GetCoinMode() == "CoinMode_Free" or GAMESTATE:IsEventMode() or GAMESTATE:GetCoinMode() == "CoinMode_Home" then
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deeaif_icon_firstfree"))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+106);
		};
	};
end

--Doubles Premium
if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" or GAMESTATE:GetPremium() == "Premium_DoubleFor1Credit" then
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deeaif_icon_double_premium"))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+170);
		};
	};
end

--Paseli
t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deeaif_icon_paseli"))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+233);
		};
};

--Ecomode
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..lang.."_deeaif_icon_ecomode"))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-107.5;y,SCREEN_TOP+640);
		};
	};

--Passtr
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..lang.."_deti_paseli"))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-111;y,SCREEN_TOP+678);
		};
	};

--Frame BG
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deeaif_bt_base"))..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-89;zoom,1);
		};
	};
	
	
if GAMESTATE:GetCoinMode() == "CoinMode_Free" then --if 1
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..lang.."_deti_bt_decision_off"))..{
			OnCommand=cmd(diffusealpha,1;zoom,0;x,SCREEN_CENTER_X+0;y,SCREEN_CENTER_Y+276);
		};
	};
	else
	if GAMESTATE:GetCoinMode() == "CoinMode_Home" then --if 2
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..lang.."_deti_bt_decision_off"))..{
			OnCommand=cmd(diffusealpha,1;zoom,0;x,SCREEN_CENTER_X+0;y,SCREEN_CENTER_Y+276);
		};
	};
	else
		if GAMESTATE:EnoughCreditsToJoin() == true then --if 3
		  t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..lang.."_deti_bt_decision_off"))..{
			OnCommand=cmd(diffusealpha,1;zoom,0;x,SCREEN_CENTER_X+0;y,SCREEN_CENTER_Y+276);
		};
	};
		else
		  --Insert Coin
		  t[#t+1] = Def.ActorFrame {
			LoadActor(THEME:GetPathB("","_Arcade decorations/deti_bt_coin_off"))..{
			OnCommand=cmd(diffusealpha,1;zoom,0;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+276);
		};
	};
		end --if 3
	end -- if 2
end--if 1



return t
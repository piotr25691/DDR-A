local t = Def.ActorFrame {};

--Free Play
if GAMESTATE:GetCoinMode() == "CoinMode_Free" or GAMESTATE:IsEventMode() or GAMESTATE:GetCoinMode() == "CoinMode_Home" then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "deeaif_icon_firstfree" )..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+106);
		};
	};
end

--Doubles Premium
if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" or GAMESTATE:GetPremium() == "Premium_DoubleFor1Credit" then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "deeaif_icon_double_premium" )..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+170);
		};
	};
end

--Paseli
t[#t+1] = Def.ActorFrame {
		LoadActor("deeaif_icon_paseli" )..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+233);
		};
};

--Ecomode
	t[#t+1] = Def.ActorFrame {
		LoadActor(lang.."_deeaif_icon_ecomode" )..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-107.5;y,SCREEN_TOP+640);
		};
	};

--Passtr
	t[#t+1] = Def.ActorFrame {
		LoadActor(lang.."_deti_paseli" )..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-111;y,SCREEN_TOP+678);
		};
	};

--Frame BG
	t[#t+1] = Def.ActorFrame {
		LoadActor( "deeaif_bt_base" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-89;zoom,1);
		};
	};


if GAMESTATE:GetCoinMode() == "CoinMode_Free" then --if 1
	t[#t+1] = Def.ActorFrame {
		LoadActor(lang.."_deti_bt_decision_on" )..{
			OnCommand=cmd(zoom,0.85;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+269);
		};
	};
	t[#t+1] = Def.ActorFrame {
		LoadActor(lang.."_deti_bt_decision_off")..{
			InitCommand=cmd(zoom,0.85;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+269);
			OnCommand=cmd(queuecommand,"Anim";);
			AnimCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;diffusealpha,0;queuecommand,"Anim";);
		};
	};
	else
	if GAMESTATE:GetCoinMode() == "CoinMode_Home" then --if 2
	t[#t+1] = Def.ActorFrame {
		LoadActor(lang.."_deti_bt_decision_on" )..{
			OnCommand=cmd(zoom,0.85;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+269);
		};
	};
	t[#t+1] = Def.ActorFrame {
		LoadActor(lang.."_deti_bt_decision_off")..{
			InitCommand=cmd(zoom,0.85;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+269);
			OnCommand=cmd(queuecommand,"Anim";);
			AnimCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;diffusealpha,0;queuecommand,"Anim";);
		};
	};
	else
		if GAMESTATE:EnoughCreditsToJoin() == true then --if 3
		  t[#t+1] = Def.ActorFrame {
		LoadActor(lang.."_deti_bt_decision_on" )..{
			OnCommand=cmd(zoom,0.85;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+269);
		};
	};
	t[#t+1] = Def.ActorFrame {
		LoadActor(lang.."_deti_bt_decision_off")..{
			InitCommand=cmd(zoom,0.85;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+269);
			OnCommand=cmd(queuecommand,"Anim";);
			AnimCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;diffusealpha,0;queuecommand,"Anim";);
		};
	};
		else
		t[#t+1] = Def.ActorFrame {
		LoadActor("deti_bt_coin_on" )..{
			OnCommand=cmd(zoom,0.85;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+271);
		};
	};
	t[#t+1] = Def.ActorFrame {
		LoadActor("deti_bt_coin_off")..{
			InitCommand=cmd(zoom,0.85;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+271);
			OnCommand=cmd(queuecommand,"Anim";);
			AnimCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;diffusealpha,0;queuecommand,"Anim";);
		};
	};
		end --if 3
	end -- if 2
end--if 1



return t
local screenname = Var "LoadingScreen"
paseli = math.random(2500)
local function PaseliText_P1()
	--Text of "EXTRA PASELI : XX"
	local text = LoadFont("Common Normal") .. {
		InitCommand = cmd(draworder,99;x,SCREEN_CENTER_X-632;y,SCREEN_BOTTOM-11.5;zoom,0.62;strokecolor,color("0.3,0.3,0.3,1");playcommand,"Refresh");
		RefreshCommand = function(self)
			self:horizalign(left)
			if GAMESTATE:IsSideJoined(PLAYER_1) and paseli >= 127 then 
				paseli = paseli-127
				self:settext('PASELI: '..paseli):playcommand("TestHome"):playcommand("TestFree") return end
			if GAMESTATE:IsEventMode() then self:settext('PASELI: NOT AVAILABLE') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Free' then self:settext('PASELI: NOT AVAILABLE') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Pay' then self:settext('EXTRA PASELI: 0') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Home' then self:settext('') return end 
		end;
		TestHomeCommand = function(self)
		if GAMESTATE:GetCoinMode()=='CoinMode_Home' then self:settext('') return end
		end;
		TestFreeCommand = function(self)
		if GAMESTATE:GetCoinMode()=='CoinMode_Free' then self:settext('PASELI: NOT AVAILABLE') return end
		end;
		UpdateVisibleCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local bShow = true;
			if screen then
				local sClass = screen:GetName();
				bShow = THEME:GetMetric( sClass, "ShowCreditDisplay" );
			end;
			self:visible( bShow );
		end;
		PlayerJoinedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
	};
	return text;
end;

local function PaseliText_P2()
	--Text of "EXTRA PASELI : XX"
	local text = LoadFont("Common Normal") .. {
		InitCommand = cmd(draworder,99;x,SCREEN_CENTER_X+630;y,SCREEN_BOTTOM-11.5;zoom,0.62;strokecolor,color("0.3,0.3,0.3,1");playcommand,"Refresh");
		RefreshCommand = function(self)
			self:horizalign(right)
			if GAMESTATE:IsSideJoined(PLAYER_2) and paseli >= 127 then 
				paseli = paseli-127
				self:settext('PASELI: '..paseli):playcommand("TestHome"):playcommand("TestFree") return end
			if GAMESTATE:IsEventMode() then self:settext('PASELI: NOT AVAILABLE') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Free' then self:settext('PASELI: NOT AVAILABLE') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Pay' then self:settext('EXTRA PASELI: 0') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Home' then self:settext('') return end 
		end;
		TestHomeCommand = function(self)
		if GAMESTATE:GetCoinMode()=='CoinMode_Home' then self:settext('') return end
		end;
		TestFreeCommand = function(self)
		if GAMESTATE:GetCoinMode()=='CoinMode_Free' then self:settext('PASELI: NOT AVAILABLE') return end
		end;
		UpdateVisibleCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local bShow = true;
			if screen then
				local sClass = screen:GetName();
				bShow = THEME:GetMetric( sClass, "ShowCreditDisplay" );
			end;
			self:visible( bShow );
		end;
		PlayerJoinedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
	};
	return text;
end;



local function CreditsText()
	local text = LoadFont("Common Normal") .. {
		InitCommand=cmd(draworder,99;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-11.5;zoom,0.62;strokecolor,color("0.3,0.3,0.3,1");playcommand,"Refresh");
		RefreshCommand=function(self)
		--Other coin modes
			if GAMESTATE:IsEventMode() then self:settext('EVENT MODE') return end
			--if GAMESTATE:IsEventMode() then self:settext('CREDIT : 0') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Free' then self:settext('FREE PLAY') return end
			if GAMESTATE:GetCoinMode()=='CoinMode_Home' then self:settext('HOME MODE') return end
		--Normal pay
			local coins=GAMESTATE:GetCoins()
			local coinsPerCredit=PREFSMAN:GetPreference('CoinsPerCredit')
			local credits=math.floor(coins/coinsPerCredit)
			local remainder=math.mod(coins,coinsPerCredit)
			local s='CREDIT: '
			if credits > 1 then
				s='CREDITS: '..credits
			elseif credits == 1 then
				s=s..credits
			else
				s=s..0
			end
			--self:horizalign(left)
			self:settext(s)
		end;
		UpdateVisibleCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local bShow = true;
			if screen then
				local sClass = screen:GetName();
				bShow = THEME:GetMetric( sClass, "ShowCreditDisplay" );
			end;

			self:visible( bShow );
		end;
		CoinInsertedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		RefreshCreditTextMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		PlayerJoinedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		ScreenChangedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
	};
	return text;
end;

local function CoinsText()
	local text = LoadFont("Common Normal") .. {
		InitCommand=cmd(draworder,99;x,SCREEN_CENTER_X+115;y,SCREEN_BOTTOM-11.5;zoom,0.62;strokecolor,color("0.3,0.3,0.3,1");horizalign,center;playcommand,"Refresh");
		RefreshCommand=function(self)
			local coins=GAMESTATE:GetCoins()
			local coinsPerCredit=PREFSMAN:GetPreference('CoinsPerCredit')
			local remainder=math.mod(coins,coinsPerCredit)
			local s='COIN: '
			if coinsPerCredit > 1 then
				s=s..remainder..'/'..coinsPerCredit
			else
				s=''
			end

			if GAMESTATE:GetCoinMode() == 'CoinMode_Pay' then
				self:visible(true);
			else
				self:visible(false);
			end

			self:settext(s)
		end;
		UpdateVisibleCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local bShow = true;
			if screen then
				local sClass = screen:GetName();
				bShow = THEME:GetMetric( sClass, "ShowCreditDisplay" );
			end;

			self:visible( bShow );
		end;
		CoinInsertedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		RefreshCreditTextMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		PlayerJoinedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		ScreenChangedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
	};
	return text;
end;

local function NetworkText()
	local text = LoadFont("Common Normal") .. {
		InitCommand=function (self)
			self:draworder(99);
			self:name("NetworkStatus");
			self:settext("-----");
			self:x(SCREEN_CENTER_X-222);
			self:y(SCREEN_BOTTOM-11.5);
			self:horizalign(right);
        	self:zoom(0.62)
			self:strokecolor(color("0.3,0.3,0.3,1"));
		end;
		RefreshCommand=function (self)
		local netConnected = IsNetConnected();
		local loggedOnSMO = IsNetSMOnline();

			if not netConnected then
				self:diffuse(color("#00FF00"));
				self:settext("ONLINE");
				--self:settext("");		
			else
				self:diffuse(color("#00FF00"));
				self:settext("ONLINE");
				--self:settext("");
			end;
		end;
		UpdateVisibleCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local bShow = true;
			if screen then
				local sClass = screen:GetName();
				bShow = THEME:GetMetric( sClass, "ShowCreditDisplay" );
			end

			self:visible( bShow );
		end;
		CoinInsertedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		RefreshCreditTextMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		PlayerJoinedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		ScreenChangedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
	};
	return text;
end;

local t = Def.ActorFrame {}

t[#t+1] = Def.ActorFrame {
 	--CreditsText( PLAYER_1 );
	--CreditsText( PLAYER_2 );
	NetworkText();
	CreditsText();
	CoinsText();
	PaseliText_P1();
	PaseliText_P2();
};

return t;
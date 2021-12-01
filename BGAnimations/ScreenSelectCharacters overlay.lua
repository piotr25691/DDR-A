local t = Def.ActorFrame{};

t[#t+1] = LoadActor(THEME:GetPathB("","ModDate"));

--P1
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(x,SCREEN_CENTER_X-320;y,SCREEN_CENTER_Y+14);
	OffCommand=cmd(sleep,0.2;linear,0.2;zoomy,0);
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG01"))..{
			InitCommand=cmd(shadowlength,0;zoomy,1)
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG02") ) .. {
			InitCommand=cmd(y,-40)
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_top") ) .. {
			InitCommand=function(s) s:valign(1):y(-238) end,
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_head_1p")) .. {
			InitCommand=cmd(y,-263);
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_bottom")) .. {
			InitCommand=cmd(valign,0;y,224);
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/"..lang.."_sceawi_scene_guide_keyoperation")) .. {
			InitCommand=function(s) s:x(0):y(270):zoom(1) end,
		};
	};

--P2
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+14);
	OffCommand=cmd(sleep,0.2;linear,0.2;zoomy,0);
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG01"))..{
			InitCommand=cmd(shadowlength,0;zoomy,1)
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG02") ) .. {
			InitCommand=cmd(y,-40)
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_top") ) .. {
			InitCommand=function(s) s:valign(1):y(-238) end,
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_head_2p")) .. {
			InitCommand=cmd(y,-263);
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/sceawi_frame_bottom")) .. {
			InitCommand=cmd(valign,0;y,224);
		};
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/"..lang.."_sceawi_scene_guide_keyoperation")) .. {
			InitCommand=function(s) s:x(0):y(270):zoom(1) end,
		};
	};
	
	
for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
t[#t+1] = Def.ActorFrame{
	InitCommand=function(s) s:xy(pn==PLAYER_1 and _screen.cx-320 or _screen.cx+320,_screen.cy+14) end,
	OffCommand=function(s) s:sleep(0.2):linear(0.2):zoomy(0) end,
		LoadActor(THEME:GetPathG("","ScreenSelectProfile/Tex_0018")) .. {
			InitCommand=cmd(y,-200);
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/Arrow.png") ) .. {
			InitCommand=cmd(bounce;effectmagnitude,4,0,0;effectperiod,0.9;x,-140;y,-200;zoom,1;);
		};
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/Arrow.png"))..{
			InitCommand=cmd(bounce;effectmagnitude,-4,0,0;effectperiod,0.9;x,140;y,-200;zoomx,-1);
		};
	};
end;


if GAMESTATE:IsPlayerEnabled(PLAYER_1) and not GAMESTATE:IsPlayerEnabled(PLAYER_2) then
t[#t+1] = Def.ActorFrame{
		InitCommand=function(s) s:xy(_screen.cx+320,_screen.cy+14) end,
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_press_button") ) .. {
			InitCommand=cmd(y,-30;diffuseshift;effectcolor1,Color('White');effectcolor2,color("#A5A6A5"));
			OffCommand=cmd(linear,0.1;zoomy,0;diffusealpha,0);
		};
	};
end;

if GAMESTATE:IsPlayerEnabled(PLAYER_2) and not GAMESTATE:IsPlayerEnabled(PLAYER_1) then
t[#t+1] = Def.ActorFrame{
		InitCommand=function(s) s:xy(_screen.cx-320,_screen.cy+14) end,
		LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_press_button") ) .. {
			InitCommand=cmd(y,-30;diffuseshift;effectcolor1,Color('White');effectcolor2,color("#A5A6A5"));
			OffCommand=cmd(linear,0.1;zoomy,0;diffusealpha,0);
		};
	};
end;

-- Character List!
local CharList = CHARMAN:GetAllCharacters();

------- Globals -----
local ChoiceTable = {};
local ConfirmedCh = {};
------- Globals -----

local function VerifyValues()
	--SBank:GetChild("MoveChoice"):play()
	-- Current Menu Choice
	for player in ivalues(PlayerNumber) do
		if ChoiceTable[player] <= 0 			then ChoiceTable[player] = #CharList end
		if ChoiceTable[player] >= #CharList+1 	then ChoiceTable[player] = 1 end
	end
end

--------------------------------------------------------
-- Input Callback
--------------------------------------------------------
local function ScrollInput(event)
	if not event.PlayerNumber then return end
	if ToEnumShortString(event.type) == "FirstPress" then
		if event.GameButton == "Start" then
			SBank:GetChild("StartSound"):play()

			if event.PlayerNumber then
				ConfirmedCh[event.PlayerNumber] = true
				GAMESTATE:SetCharacter( event.PlayerNumber, CharList[ChoiceTable[event.PlayerNumber]]:GetCharacterID() )
			end

			if BothPlayersEnabled() and (ConfirmedCh["PlayerNumber_P1"] and ConfirmedCh["PlayerNumber_P2"]) then
				-- move to next screen
				SCREENMAN:GetTopScreen():SetNextScreenName("ScreenSelectStyle")
				SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen")
			elseif not BothPlayersEnabled() and (ConfirmedCh["PlayerNumber_P1"] or ConfirmedCh["PlayerNumber_P2"]) then
				-- move to next screen
				SCREENMAN:GetTopScreen():SetNextScreenName("ScreenSelectStyle")
				SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen")
			end

		end
		if event.GameButton == "MenuRight" then
			SBank:GetChild("MoveChoice"):play()
			if event.PlayerNumber and not ConfirmedCh[event.PlayerNumber] then
				ChoiceTable[event.PlayerNumber] = ChoiceTable[event.PlayerNumber] + 1
			end
		end
		if event.GameButton == "MenuLeft" then
			SBank:GetChild("MoveChoice"):play()
			if event.PlayerNumber and not ConfirmedCh[event.PlayerNumber] then
				ChoiceTable[event.PlayerNumber] = ChoiceTable[event.PlayerNumber] - 1
			end
		end
		if event.GameButton == "Back" then
			SBank:GetChild("CancelSound"):play()
			SCREENMAN:GetTopScreen():SetPrevScreenName("ScreenTitleMenu")
			SCREENMAN:GetTopScreen():Cancel()
		end
		VerifyValues()
		MESSAGEMAN:Broadcast("UpdateAllValues")
	end
end

--------------------------------------------------------
-- Additional Actors
--------------------------------------------------------
local Controller = Def.ActorFrame{
	OnCommand=function(self) MESSAGEMAN:Broadcast("UpdateAllValues") SCREENMAN:GetTopScreen():AddInputCallback(ScrollInput) end;
};

local SoundBank = Def.ActorFrame{ OnCommand=function(self) SBank = self end;
	Def.Sound{Name="StartSound",File=THEME:GetPathS("Common","start")},
	Def.Sound{Name="MoveChoice",File=THEME:GetPathS("Profile","Move")},
	Def.Sound{Name="CancelSound",File=THEME:GetPathS("Common","cancel")},
};

local ChoiceStrip = Def.ActorFrame{}

local function ModelIsSafeToLoad(character)
	local CharLoad = CHARMAN:GetCharacter( character:GetCharacterID() )
	-- Don't apply the check if we have the character set to "off" (default)
	if CharLoad:GetDisplayName() ~= "default" then
		-- Otherwise, check the model path.
		if CharLoad:GetModelPath() == "" then
			lua.ReportScriptError(
				"no"
			)
			return false
		end
		if CharLoad:GetDanceAnimationPath() == "" or
			CharLoad:GetRestAnimationPath() == "" or 
			CharLoad:GetWarmUpAnimationPath() == ""
			then
			lua.ReportScriptError(
				"no"
			)
			return false
		end
	end
	return true
end

local function TestActorScroller()
	local t = Def.ActorFrame{}
	for value in ivalues(CharList) do
		local Result = Def.ActorFrame{
			LoadFont("_sveningsson Bold 60px") ..{
				OnCommand=function(self)
					self:zoom(0.27):y(SCREEN_TOP-215):shadowlength(1):diffuse(Color.White):maxwidth(500)
					self:settext(value:GetDisplayName())
				end;
				OffCommand=function(s) s:linear(0.2):diffusealpha(0) end,
			};
			Def.Model{
				Materials = value:GetModelPath();
				Meshes = value:GetModelPath();
				Bones = value:GetRestAnimationPath();
				InitCommand=function(self)
					self:cullmode("CullMode_None"):y(_screen.cy-290):rotationy(180)
					function CharacterInfo(Read,pn)
						local CharaCfg = value:GetCharacterDir().."CharacterInfo.cfg";
						local Info = Config.Load(Read,CharaCfg)
						return Info
					end
					if FILEMAN:DoesFileExist(value:GetCharacterDir().."CharacterInfo.cfg") then
						self:zoom((tonumber(CharacterInfo("Size",value)))*13)
					else
						self:zoom(10)
					end;
				end,
			OffCommand=function(s) s:linear(0.2):diffusealpha(0) end,
			};
		};
		t[#t+1] = Result
	end

	return t;
end

local StaticItems = Def.ActorFrame{
	LoadFont("Common Normal")..{
		Text=Screen.String("HeaderText");
		InitCommand=function(self) self:align(0,0):xy(30,6):zoom(0.8)
		end;
	};
};

local function ModelsToLoad()
	return BothPlayersEnabled() and 1 or 1
end

for player in ivalues(PlayerNumber) do
	ChoiceTable[player] = 1;
	ConfirmedCh[player] = false;
	StaticItems[#StaticItems+1] = Def.ActorScroller{
		Name = player..'Scroller';
		Condition=GAMESTATE:IsHumanPlayer(player);
		NumItemsToDraw=ModelsToLoad();
		OnCommand=function(self)
			self:x(player == PLAYER_1 and _screen.cx-320 or _screen.cx+320)
			self:y(SCREEN_BOTTOM-290):SetFastCatchup(true)
			:SetSecondsPerItem(0.2):SetDrawByZPosition(true)
			:zoom( WideScale(0.6,0.8) ):SetWrap(true)
		end;
		TransformFunction=function(self, offset, itemIndex, numItems)
			local curve = math.pi;
			--local WHEEL_3D_RADIUS = 1400;
			local WHEEL_3D_RADIUS = 0;
			local rotationx_radians = scale(offset,-numItems/2,numItems/2,-curve/2,curve/2);

			-- Need to check this value, as the wheel gets completely broken if there's less
			-- than 10-12 characters.
			self:x( WHEEL_3D_RADIUS * math.sin(rotationx_radians) );

			if BothPlayersEnabled() then
				self:x( WHEEL_3D_RADIUS/1.5 * math.sin(rotationx_radians) );
			end
			self:finishtweening():decelerate(0.2)
			--:diffuse( itemIndex == ChoiceTable[player]-1 and Color.White or color("0.3,0.3,0.3,1") )
			:z( itemIndex == ChoiceTable[player]-1 and 110 or (90 * math.cos(rotationx_radians*offset)) )

			self:diffusealpha( 2 * math.cos(rotationx_radians*offset) )
			if BothPlayersEnabled() then
				self:diffusealpha( 2 * math.cos(rotationx_radians*offset)/2 )
			end
		end;
		children = TestActorScroller();
		UpdateAllValuesMessageCommand=function(self)
		self:SetDestinationItem(ChoiceTable[player]-1)
		end;
	};
end

t[#t+1] = Controller
t[#t+1] = SoundBank
t[#t+1] = StaticItems
t[#t+1] = ChoiceStrip..{ OnCommand=function(self) self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y) end; };

return t;
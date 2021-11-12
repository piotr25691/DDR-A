local t=Def.ActorFrame{}

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
		
			Def.Model{
				Materials = value:GetModelPath();
				Meshes = value:GetModelPath();
				Bones = value:GetRestAnimationPath();
				InitCommand=function(self)
					self:cullmode("CullMode_None"):y(_screen.cy-290):rotationy(180)
				if string.find( value:GetDisplayName(), "Baby") then
					self:zoom(5.4)
				elseif string.find( value:GetDisplayName(), "Rinon") then
					self:zoom(8.7)
				elseif string.find( value:GetDisplayName(), "Rena") then
					self:zoom(12)
				elseif string.find( value:GetDisplayName(), "PiX") then
					self:zoom(5)
				elseif string.find( value:GetDisplayName(), "[HP]") then
					self:zoom(12)
				elseif string.match(value:GetDisplayName(), "(X)") or 
					   string.match(value:GetDisplayName(), "(X2)") or 
					   string.match(value:GetDisplayName(), "(Ace)") or 
					   string.match(value:GetDisplayName(), "(2nd)") then
					self:zoom(13) 
				else 
					self:zoom(13) 
				end;
				end,
			OffCommand=function(s) s:linear(0.2):diffusealpha(0) end,
			};
			LoadFont("_sveningsson Bold 60px") ..{
			OnCommand=function(self)
				self:zoom(0.27):y(SCREEN_TOP-215):shadowlength(1):diffuse(Color.White):maxwidth(500)
				self:settext(value:GetDisplayName())
			end;
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
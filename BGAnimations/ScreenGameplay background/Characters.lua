local t = Def.ActorFrame{};

------- SIZE -------
	Character_1 = GAMESTATE:GetCharacter(PLAYER_1):GetDisplayName()
	Character_2 = GAMESTATE:GetCharacter(PLAYER_2):GetDisplayName()

		if 	string.match(Character_1, "Rinon") 	then
		CharacterSize1=0.67
	elseif 	string.match(Character_1, "Baby") 	then
		CharacterSize1=0.4
	elseif 	string.match(Character_1, "Julio") 	then
		CharacterSize1=0.8
	elseif 	string.match(Character_1, "Rena") 	then
		CharacterSize1=0.9
	elseif 	string.match(Character_1, "PiX")	then
		CharacterSize1=0.38
	elseif 	string.match(Character_1, "Jun") 	then
		CharacterSize1=0.9
	elseif (string.match(Character_1, "(Ace)") 	or 
			string.match(Character_1, "(X2)") 	or 
			string.match(Character_1, "(X)") 	or 
			string.match(Character_1, "(SN)") 	or 
			string.match(Character_1, "(2nd)"))
	then
		CharacterSize1=1
	else
		CharacterSize1=0.75
	end


	if		string.match(Character_2, "Rinon") 	then
		CharacterSize2=0.67
	elseif 	string.match(Character_2, "Baby")	then
		CharacterSize2=0.4
	elseif 	string.match(Character_2, "Julio") 	then
		CharacterSize2=0.8
	elseif 	string.match(Character_2, "Rena") 	then
		CharacterSize1=0.9
	elseif 	string.match(Character_2, "PiX")	then
		CharacterSize2=0.38
	elseif 	string.match(Character_2, "Jun") 	then
		CharacterSize2=0.9
	elseif (string.match(Character_2, "(Ace)") 	or 
			string.match(Character_2, "(X2)") 	or 
			string.match(Character_2, "(X)") 	or 
			string.match(Character_2, "(SN)") 	or  
			string.match(Character_2, "(2nd)"))
	then
		CharacterSize2=1
	else
		CharacterSize2=0.75
	end
------- SIZE -------

------- GENRE -------
	if
		string.match(Character_1, "Jenny") or
		string.match(Character_1, "Alice") or
		string.match(Character_1, "Yuni") or
		string.match(Character_1, "PiX") or
		string.match(Character_1, "Rena") or
		string.match(Character_1, "Emi") or
		string.match(Character_1, "Zukin") or
		string.match(Character_1, "Jun") or
		string.match(Character_1, "Ruby") or
		string.match(Character_1, "Bonnie") or
		string.match(Character_1, "Janet")
	then
		Char1_Gen="F"
	elseif
		string.match(Character_1, "Rage") or
		string.match(Character_1, "Disco") or
		string.match(Character_1, "Baby") or
		string.match(Character_1, "Victory") or
		string.match(Character_1, "Gus") or
		string.match(Character_1, "Julio") or
		string.match(Character_1, "Dred")
	then
		Char1_Gen="M"
	elseif
		string.match(Character_1, "Rinon")
	then
		Char1_Gen="R"
	end
		
	if
		string.match(Character_2, "Jenny") or
		string.match(Character_2, "Alice") or
		string.match(Character_2, "Yuni") or
		string.match(Character_2, "PiX") or
		string.match(Character_2, "Rena") or
		string.match(Character_2, "Emi") or
		string.match(Character_2, "Zukin") or
		string.match(Character_2, "Jun") or
		string.match(Character_2, "Ruby") or
		string.match(Character_2, "Bonnie") or
		string.match(Character_2, "Janet")
	then
		Char2_Gen="F"
	elseif
		string.match(Character_2, "Rage") or
		string.match(Character_2, "Disco") or
		string.match(Character_2, "Baby") or
		string.match(Character_2, "Victory") or
		string.match(Character_2, "Gus") or
		string.match(Character_2, "Julio") or
		string.match(Character_2, "Dred")
	then
		Char2_Gen="M"
	elseif
		string.match(Character_2, "Rinon")
	then
		Char2_Gen="R"
	end
------- GENRE -------
	
------- CHOREO -------
	Choreo = ""
	if (Char1_Gen == "M" and Char2_Gen == "F") or
	   (Char1_Gen == "M" and Char2_Gen == "R") or
	   (Char1_Gen == "F" and Char2_Gen == "M") or
	   (Char1_Gen == "R" and Char2_Gen == "M")
	then
		DoubleGenre_Choreo = math.random(1,10)
			if DoubleGenre_Choreo ==  1 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo ==  2 then Choreo = "Higher"
		elseif DoubleGenre_Choreo ==  3 then Choreo = "River"
		elseif DoubleGenre_Choreo ==  4 then Choreo = "Love"
		elseif DoubleGenre_Choreo ==  5 then Choreo = "Teo1"
		elseif DoubleGenre_Choreo ==  6 then Choreo = "Wave"
		elseif DoubleGenre_Choreo ==  7 then Choreo = "Phantasma"
		elseif DoubleGenre_Choreo ==  8 then Choreo = "Cute"
		elseif DoubleGenre_Choreo ==  9 then Choreo = "Kimi"
		elseif DoubleGenre_Choreo == 10 then Choreo = "Marginal"
		end

	elseif (Char1_Gen == "F" and Char2_Gen == "F") or
		   (Char1_Gen == "R" and Char2_Gen == "R") or
		   (Char1_Gen == "R" and Char2_Gen == "F") or
		   (Char1_Gen == "F" and Char2_Gen == "R")
	then
		DoubleGenre_Choreo = math.random(1,12)
			if DoubleGenre_Choreo ==  1 then Choreo = "Yume"
		elseif DoubleGenre_Choreo ==  2 then Choreo = "Brain"
		elseif DoubleGenre_Choreo ==  3 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo ==  4 then Choreo = "Higher"
		elseif DoubleGenre_Choreo ==  5 then Choreo = "Love"
		elseif DoubleGenre_Choreo ==  6 then Choreo = "Luka"
		elseif DoubleGenre_Choreo ==  7 then Choreo = "River"
		elseif DoubleGenre_Choreo ==  8 then Choreo = "Teo1"
		elseif DoubleGenre_Choreo ==  9 then Choreo = "Wave"
		elseif DoubleGenre_Choreo == 10 then Choreo = "Cute"
		elseif DoubleGenre_Choreo == 11 then Choreo = "Kimi"
		elseif DoubleGenre_Choreo == 12 then Choreo = "Marginal"
		end

	elseif (Char1_Gen == "M" and Char2_Gen == "M") then
		DoubleGenre_Choreo = math.random(1,13)
			if DoubleGenre_Choreo ==  1 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo ==  2 then Choreo = "Specialist"
		elseif DoubleGenre_Choreo ==  3 then Choreo = "Higher"
		elseif DoubleGenre_Choreo ==  4 then Choreo = "Life"
		elseif DoubleGenre_Choreo ==  5 then Choreo = "Love"
		elseif DoubleGenre_Choreo ==  6 then Choreo = "River"
		elseif DoubleGenre_Choreo ==  7 then Choreo = "Seisou"
		elseif DoubleGenre_Choreo ==  8 then Choreo = "Snowman"
		elseif DoubleGenre_Choreo ==  9 then Choreo = "Chaos"
		elseif DoubleGenre_Choreo == 10 then Choreo = "Teo1"
		elseif DoubleGenre_Choreo == 11 then Choreo = "Wave"
		elseif DoubleGenre_Choreo == 12 then Choreo = "Kimi"
		elseif DoubleGenre_Choreo == 13 then Choreo = "Marginal"
		end
	end
------- CHOREO -------

------- CHARACTER LOAD -------	
	if AnyoneHasChar() then
		for player in ivalues(PlayerNumber) do
			if BothPlayersEnabled() and 
				(string.match(Character_1, "(Ace)") or 
				string.match(Character_1, "(X2)") or 
				string.match(Character_1, "(X)") or 
				string.match(Character_1, "(SN)") or
				string.match(Character_1, "[HP]") or
				string.match(Character_1, "(2nd)")) 
			and
				(string.match(Character_2, "(Ace)") or 
				string.match(Character_2, "(X2)") or 
				string.match(Character_2, "(X)") or 
				string.match(Character_2, "(SN)") or
				string.match(Character_2, "[HP]") or
				string.match(Character_2, "(2nd)"))
			then
				BonesToLoad1=GAMESTATE:GetCharacter(player):GetCharacterDir().."Dance/"..Char1_Gen.." "..Choreo..".redir"
				BonesToLoad2=GAMESTATE:GetCharacter(player):GetCharacterDir().."Dance/"..Char2_Gen.." "..Choreo..".redir"
			else
				BonesToLoad1=GAMESTATE:GetCharacter(player):GetDanceAnimationPath()
				BonesToLoad2=GAMESTATE:GetCharacter(player):GetDanceAnimationPath()
			end
		
			------- MODEL LOAD -------
			if GAMESTATE:IsPlayerEnabled(player) and GAMESTATE:GetCharacter(player):GetDisplayName() ~= "default" then
				t[#t+1] = Def.Model {
					Meshes=GAMESTATE:GetCharacter(player):GetModelPath(),
					Materials=GAMESTATE:GetCharacter(player):GetModelPath(),
					Bones=(player == PLAYER_1 and BonesToLoad1) or BonesToLoad2,
						OnCommand=function(self)
							self:cullmode("CullMode_None")
							if BothPlayersEnabled() then self:x( (player == PLAYER_1 and 7) or -7 )
								:zoom( (player == PLAYER_1 and CharacterSize1) or CharacterSize2)
								:queuecommand("UpdateRate")
							else
								self:x(0):zoom( (player == PLAYER_1 and CharacterSize1) or CharacterSize2)
								self:queuecommand("UpdateRate")
							end
						end,
					UpdateRateCommand=function(self) end,
				};
			end
			------- MODEL LOAD -------
		end
	end
------- CHARACTER LOAD -------

return t;
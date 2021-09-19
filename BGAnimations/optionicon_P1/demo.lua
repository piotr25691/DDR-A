return Def.ActorFrame {
	-- Speed
	Def.Sprite {
		OnCommand=function(self)
			self:x(-186);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'1x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x100"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("On");
			end;
		end;
		CodeMessageCommand=function(self, params)
			if params.PlayerNumber == PLAYER_1 then
				self:playcommand("On");
			end;
		end;
	};
};
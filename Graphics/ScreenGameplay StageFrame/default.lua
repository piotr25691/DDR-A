local song = GAMESTATE:GetCurrentSong();

return Def.ActorFrame {
	LoadActor("stage_frame0000_normal")..{
		InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_TOP+36):draworder(1)
			if song:GetDisplayFullTitle() == "Eros and Apollo" then
				self:zoom(0);
			else
				self:zoom(1);
			end;
		end;
	};
};
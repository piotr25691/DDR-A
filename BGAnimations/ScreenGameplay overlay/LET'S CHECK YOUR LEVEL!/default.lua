return Def.ActorFrame{
	InitCommand=function(s) s:x(_screen.cx):y(SCREEN_BOTTOM-160) end,
	LoadActor(lang.."_mucaji_text1.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(4.3):diffusealpha(1)
		s:sleep(4.7):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucaji_text2.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(9):diffusealpha(1)
		s:sleep(4.3):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucaji_text3.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(13.3):diffusealpha(1)
		s:sleep(4.3):diffusealpha(0) end,
	};
};
return Def.ActorFrame{
	InitCommand=function(s) s:x(_screen.cx):y(SCREEN_BOTTOM-160) end,
	LoadActor(lang.."_mucale_text1_usefoot.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(5.8):diffusealpha(1)
		s:sleep(6):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text1_left_hidari.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(12):diffusealpha(1)
		s:sleep(4.7):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text1_up_ue.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(16.8):diffusealpha(1)
		s:sleep(3):diffusealpha(0) end,
	};
	--Com'on, let me hear you say
	LoadActor(lang.."_mucale_text_comeon.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(20):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text2_right.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(22):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text2_left.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(24):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text2_up.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(26):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text2_dd.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(28):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text2_uuu.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(30):diffusealpha(1)
		s:sleep(4):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text2_fd.png")..{
		InitCommand=function(s) 
		s:y(-10):diffusealpha(0):sleep(34):diffusealpha(1)
		s:sleep(6):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text3_sayuu.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(40.5):diffusealpha(1)
		s:sleep(4):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text3_ashicenter.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(44.6):diffusealpha(1)
		s:sleep(4.4):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text3_ashicenter.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(44.6):diffusealpha(1)
		s:sleep(4.4):diffusealpha(0) end,
	};
	--Com'on, let me hear you say
	LoadActor(lang.."_mucale_text_comeon.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(50):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text2_right.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(52):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text2_left.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(54):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text3_rl.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(56):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text3_lr.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(58):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text3_rll.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(60):diffusealpha(1)
		s:sleep(4):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text3_lrr.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(64):diffusealpha(1)
		s:sleep(3.6):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text4_iwanna.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(68):diffusealpha(1)
		s:sleep(2):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text4_rrllrlr.png")..{
		InitCommand=function(s) 
		s:y(-10):diffusealpha(0):sleep(70):diffusealpha(1)
		s:sleep(7.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text4_jump.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(78):diffusealpha(1)
		s:sleep(1.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text4_jump.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(80):diffusealpha(1)
		s:sleep(1.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text4_jump.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(82):diffusealpha(1)
		s:sleep(1.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_letme.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(84.5):diffusealpha(1)
		s:sleep(1.5):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_ddr.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(86):diffusealpha(1)
		s:sleep(0.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_ddr_say.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(87):diffusealpha(1)
		s:sleep(0.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_ddr.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(88):diffusealpha(1)
		s:sleep(0.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_ddr_say.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(89):diffusealpha(1)
		s:sleep(1.3):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_letme2.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(92.5):diffusealpha(1)
		s:sleep(1.5):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_ddr.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(94):diffusealpha(1)
		s:sleep(0.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_ddr_say.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(95):diffusealpha(1)
		s:sleep(0.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_ddr.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(96):diffusealpha(1)
		s:sleep(0.8):diffusealpha(0) end,
	};
	LoadActor(lang.."_mucale_text5_ddr_say.png")..{
		InitCommand=function(s) 
		s:diffusealpha(0):sleep(97):diffusealpha(1)
		s:sleep(1.3):diffusealpha(0) end,
	};
};
return Def.BitmapText{
      Font="_futura pt medium 30px";
      InitCommand=function(s)  
	  --         MDX:A:A:A:Year/Month/Day/00
	  s:settext("MDX:A:A:A:2021113000")
	  s:halign(0)
	  s:xy(SCREEN_LEFT+8.5,SCREEN_TOP+13)
	  s:zoomx(0.62)
	  s:zoomy(0.6)
	  s:strokecolor(color("0,0,0,0.5")) 
	  end,
};
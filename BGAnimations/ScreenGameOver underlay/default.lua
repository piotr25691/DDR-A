local t = Def.ActorFrame{}
local sound = math.random(1,4);

t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/ScreenGameOver "..sound))..{
	OnCommand=cmd(queuecommand,"Play");
	PlayCommand=cmd(play);
};

t[#t+1] = LoadActor(THEME:GetPathS("ScreenGameOver","music.ogg"))..{
	OnCommand=cmd(queuecommand,"Play");
	PlayCommand=cmd(play);
};


t[#t+1] = Def.ActorFrame {
	LoadActor( "color" )..{
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_WeightedMultiply');
	};
	LoadActor( "thanks" )..{
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_NoEffect';zwrite,true;zoomx,1.3;zoomy,1.8;linear,5.9;zoomy,1.5;zoomx,1;);
	};
	--[[LoadActor( "konami" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-217;blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,false;);
	};]]
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusecolor,color("White");ztest,true);
	};
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusecolor,color("White");diffusealpha,0;sleep,6;linear,0.233;diffusealpha,1;);
	};
};

t[#t+1] = LoadActor(THEME:GetPathB("","_doors open"));

return t;
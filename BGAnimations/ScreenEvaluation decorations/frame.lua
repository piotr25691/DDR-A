--[[
pn = Which player's stats to display.
controller = which controller controls the panel
showInstructionsTab = If the fifth tab should also be shown. (It's too much work to replicate DDR 2014 exactly, so it's the fifth tab)
If showInstructionsTab is true, it will start on the instructions tab.

In DDR2014, two panels are loaded and P2 controller
moves the right panel, while P1 controller moves
the left panel.
]]
local pn, controller, showInstructionsTab, paneState = ...;
local tabCount = 3
local paneState = 1;

local FRAME_WIDTH, FRAME_HEIGHT = 458, 240;
					--Green				
local paneColors = { color("#f156ed"), color("#36b0ec"), color("#35db29"), color("#9B3AF9") }

--If PLAYER_1, zoom the frame to the left -700, else zoom it to the right 700.
local zoomTowards = (controller == PLAYER_1) and -700 or 700;
--local soundeffect;
local t = Def.ActorFrame{
	--Input handler
	CodeMessageCommand=function(self,params)
		if params.PlayerNumber==controller then
			if params.Name=="Left" then
				if paneState > 0 then
					--soundeffect:play();
					SOUND:PlayOnce(THEME:GetPathS("ScreenOptions","change" ));
					paneState = paneState - 1;
				end;
			elseif params.Name=="Right" then
				if paneState < (tabCount-1) then
					--soundeffect:play();
					SOUND:PlayOnce(THEME:GetPathS("ScreenOptions","change" ));
					paneState = paneState + 1;
				end;
			else
				SCREENMAN:SystemMessage("Unknown button: "..params.Name);
			end;
		end;
	end;
	--Background
	Def.Sprite{
		Name="DefaultFrame";
		Texture="scre_tab_base",
		InitCommand=function(s) s:setsize(FRAME_WIDTH,FRAME_HEIGHT):diffusealpha(0.7) end,
		OffCommand=function(s) s:sleep(0.2):linear(0.2):addx(zoomTowards) end,
	};

	--Tabs
	LoadActor(lang.."_tabsNormal 1x3")..{
		InitCommand=cmd(vertalign,bottom;horizalign,left;xy,-FRAME_WIDTH/2,-FRAME_HEIGHT/2-7;animate,false;zoom,1.1;setstate,paneState);
		OffCommand=cmd(sleep,0.2;linear,0.2;addx,zoomTowards);
		CodeMessageCommand=function(self,params)
			if params.PlayerNumber==controller then
				self:setstate(paneState);
			end;
		end;
	};
	--Pane border
	Def.ActorFrame{
		InitCommand=cmd(diffuse,paneColors[paneState+1]);
		OffCommand=cmd(sleep,0.2;linear,0.2;addx,zoomTowards);
		CodeMessageCommand=function(self,params)
			if params.PlayerNumber==controller then
				self:diffuse(paneColors[paneState+1]);
			end;
		end;
			
		Def.Quad{
			InitCommand=cmd(setsize,FRAME_WIDTH,8;vertalign,bottom;y,-FRAME_HEIGHT/2);
		};
		Def.Quad{
			InitCommand=cmd(setsize,FRAME_WIDTH,8;vertalign,top;y,FRAME_HEIGHT/2);
		};
	};
		--4th pane, calories
	Def.Quad{
		InitCommand=cmd(setsize,FRAME_WIDTH,40;diffuse,Color("Black");y,-FRAME_HEIGHT/2;diffusealpha,0;vertalign,top;);
		OffCommand=cmd(sleep,0.2;linear,0.2;addx,zoomTowards);
		CodeMessageCommand=function(self,params)
			if params.PlayerNumber==controller then
				if paneState == 0 then
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end;
			end;
		end;
	};
	LoadActor("calories", pn)..{
		InitCommand=cmd(addy,115;x,50;zoom,1.25;diffusealpha,0);
		OffCommand=cmd(sleep,0.2;linear,0.2;addx,zoomTowards);
		CodeMessageCommand=function(self,params)
			if params.PlayerNumber==controller then
				if paneState == 0 then
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end;
			end;
		end;
	};
	LoadActor("kcalP1", pn)..{
		InitCommand=cmd(diffusealpha,0;zoom,0.675);
		OffCommand=cmd(sleep,0.2;linear,0.2;addx,zoomTowards);
		CodeMessageCommand=function(self,params)
			if params.PlayerNumber==controller then
				if paneState == 0 then
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end;
			end;
		end;
	};
	--2nd pane, Judgement image
	Def.ActorFrame{
		OffCommand=cmd(sleep,0.2;linear,0.2;addx,zoomTowards);
		CodeMessageCommand=function(self,params)
			if params.PlayerNumber==controller then
				if paneState == 1 then
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end;
			end;
		end;

		LoadActor("judgment");
		LoadActor("Detailed Results", pn)..{
			InitCommand=cmd(x,75);
		};
	};
	--3rd pane, rankings
	LoadActor("Rival Score", pn)..{
		InitCommand=cmd(diffusealpha,0;draworder,3;xy,-9,-160);
		OffCommand=cmd(sleep,0.2;linear,0.2;addx,zoomTowards);
		CodeMessageCommand=function(self,params)
			if params.PlayerNumber==controller then
				if paneState == 2 then
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end;
			end;
		end;
	};
  };
  
return t;
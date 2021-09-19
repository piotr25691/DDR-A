local t = Def.ActorFrame{};
local screenName = Var "LoadingScreen"
local headerTextImage

if screenName == "ScreenSelectStyle" then
  headerTextImage = "SELECT STYLE.png"
elseif screenName == "ScreenSelectProfile" then
  headerTextImage = "LOGIN.png"
elseif screenName == "ScreenEvaluationSummary" then
  headerTextImage = "TOTAL RESULT"
elseif screenName == "ScreenDataSaveSummary" then
  headerTextImage = "LOGOUT.png"
elseif screenName == "ScreenSelectCharacters" then
  headerTextImage = "LOGin.png"
end;

t[#t+1] = LoadActor("base")..{
    InitCommand=function(self)
      self:y(6)
	  self:zoom(1)
    end;
  };

if headerTextImage then
  t[#t+1] = LoadActor("text/"..headerTextImage)..{
    InitCommand=function(self)
      self:y(1)
	  self:zoom(1)
    end;
  };
end

return t;

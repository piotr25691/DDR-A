do
	--if there isn't music for a specific screen it falls back to common
	local music = {
		profile = {
			["A20"] = "MenuMusic/profile/A20 Profile (loop).ogg";
			["A20 PLUS"] = "MenuMusic/profile/A20+ Profile (loop).ogg";
		};
		selmus = {
			["A20"] = "MenuMusic/selmus/A20 Selmus (loop).ogg";
			["A20 PLUS"] = "MenuMusic/selmus/A20+ Selmus (loop).ogg";
		};
		results = {
			["A20"] = "MenuMusic/results/A20 Results (loop).ogg";
			["A20 PLUS"] = "MenuMusic/results/A20+ Results (loop).ogg";
		};
		logout = {
			["A20"] = "MenuMusic/logout/A20 Logout (loop).ogg";
			["A20 PLUS"] = "MenuMusic/logout/A20+ Logout (loop).ogg";
		}
	}
	--thanks to this code
	for name,child in pairs(music) do
		if name ~= "profile" then
			setmetatable(child, {__index=music.common})
		end
	end
	function GetMenuMusicPath(type, relative)
		local possibles = music[type]
			or error("GetMenuMusicPath: unknown menu music type "..type, 2)
		local selection = ThemePrefs.Get("Version")
		local file = possibles[selection]
			or error("GetMenuMusicPath: no menu music defined for selection"..selection, 2)
		return relative and file or THEME:GetPathS("", file)
	end
end

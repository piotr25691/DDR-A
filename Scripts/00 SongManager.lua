function DanceStage()
local Boom = Boom()
	
	if GetUserPref("OptionRowStage")=='DEFAULT' or GetUserPref("OptionRowOptionStage")=='OFF' then
----------------------------------------------------------------------------- DDR 1st --------------------------------------------------------------------------------
	
			if GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Butterfly" 														then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Have You Never Been Mellow" 									then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "KUNG FU FIGHTING" 												then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LET'S GET DOWN" 												then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Little Bitch" 													then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAKE IT BETTER" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "My Fire (UKS Remix)" 											then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STRICTLY BUSINESS" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "That's The Way (I Like It)" 									then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE" 													then return "CRYSTALDIUM (X)"

----------------------------------------------------------------------------- DDR 2ndMIX -----------------------------------------------------------------------------
	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AM-3P" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BAD GIRLS" 														then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Boom Boom Dollar (Red Monster Mix)" 							then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Boys" 															then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRILLIANT 2U" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRILLIANT 2U(Orchestra Groove)" 								then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DUB-I-DUB" 														then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "EL RITMO TROPICAL" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GET UP'N MOVE" 													then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HERO" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I Believe In Miracles (The Lisa Marie Experience Radio Edit)" 	then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "IF YOU WERE HERE" 												then return "BIG SCREEN (X2)"	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE" 															then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE IS THE POWER" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAKE A JAM!" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAKE IT BETTER (So-REAL Mix)" 									then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA KCET ～clean mix～" 									then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA MAX～DIRTY MIX～" 										then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PUT YOUR FAITH IN ME" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PUT YOUR FAITH IN ME (Jazzy Groove)" 							then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Smoke" 															then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SP-TRIP MACHINE～JUNGLE MIX～" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "stomp to my beat" 												then return "VIDEO WHITE (X2)"	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TUBTHUMPING" 													then return "DAWN STREETS (X)"

----------------------------------------------------------------------------- DDR 2ndMIX CLUB Version 1 --------------------------------------------------------------
	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "e-motion" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GENOM SCREAMS" 													then return "CYBER (X2)"
	
----------------------------------------------------------------------------- DDR 3rdMIX -----------------------------------------------------------------------------
	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AFRONOVA" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AFTER THE GAME OF LOVE" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BOOM BOOM DOLLAR (K.O.G. G3 MIX)" 								then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BUMBLE BEE" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "butterfly (UPSWING MIX)" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CAPTAIN JACK (GRANDALE REMIX)" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CUTIE CHASER" 													then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DAM DARIRAM" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DEAD END" 														then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DROP THE BOMB" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DYNAMITE RAVE" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GRADIUSIC CYBER ～AMD G5 MIX～" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "KEEP ON MOVIN'" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "La Señorita" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "La Señorita Virtual" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE THIS FEELIN'" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LUV TO ME (AMD MIX)" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA Rebirth" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Silent Hill" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "think ya better D" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE～luv mix～" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TURN ME ON (HEAVENLY MIX)" 										then return "CLUB (X2)"
	
----------------------------------------------------------------------------- DDR 4thMIX -----------------------------------------------------------------------------
	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "B4U" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BABY BABY GIMME YOUR LOVE" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BURNIN' THE FLOOR" 												then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CAN'T STOP FALLIN' IN LOVE" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CELEBRATE NITE" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Don't Stop!～AMD 2nd MIX～" 										then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DROP OUT" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "era (nostalmix)" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HIGHER" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Holic" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HYSTERIA" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LEADING CYBER" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE AGAIN TONIGHT～For Melissa MIX～" 							then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MY SUMMER LOVE" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ORION.78(AMeuro-MIX)" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOIA EVOLUTION" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SEXY PLANET" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SUPER STAR" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE CLIMAX" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "WILD RUSH" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == ".59" 															then return "CRYSTALDIUM (X)"
		
----------------------------------------------------------------------------- DDR 5thMIX -----------------------------------------------------------------------------

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "サナ・モレッテ・ネ・エンテ" 												then return "DANCING RAYS (X)"				--SANA MOLLETE NE ENTE
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ABSOLUTE" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Abyss" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AFRONOVA PRIMEVAL" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BROKEN MY HEART" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CAN'T STOP FALLIN' IN LOVE ～SPEED MIX～" 						then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DXY!" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ECSTASY" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Electro Tuned ( the SubS Mix )" 								then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Healing Vision" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "INSERTiON" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA ETERNAL" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STILL IN MY HEART" 												then return "BOOM BOOM BOOM (X)"

----------------------------------------------------------------------------- DDRMAX ---------------------------------------------------------------------------------

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CANDY☆" 														then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "exotic ethnic" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Healing Vision ～Angelic mix～" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Let the beat hit em!(CLASSIC R&B STYLE)" 						then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX 300" 														then return "VIDEO BLACK (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ORION.78～civilization mix～" 									then return "DANCING RAYS (X)"

----------------------------------------------------------------------------- DDRMAX2 --------------------------------------------------------------------------------
		
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "革命" 															then return "BOOM DARK "..Boom				--KAKUMEI
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AFRONOVA(FROM NONSTOP MEGAMIX)"									then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AM-3P(AM EAST mix)" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "B4U(B4 ZA BEAT MIX)" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRE∀K DOWN！" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRILLIANT 2U(K.O.G G3 MIX)" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BURNIN' THE FLOOR(BLUE FIRE mix)" 								then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BURNING HEAT！（3 Option MIX）" 									then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CANDY♡" 														then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CELEBRATE NITE(EURO TRANCE STYLE)" 								then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "D2R" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DESTINY" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DIVE TO THE NIGHT" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DROP OUT(FROM NONSTOP MEGAMIX)" 								then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ECSTASY (midnight blue mix)" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HIGHER(next morning mix)" 										then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HYSTERIA 2001" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "i feel ..." 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAXX UNLIMITED" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MY SUMMER LOVE(TOMMY'S SMILE MIX)" 								then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "rain of sorrow" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Secret Rendez-vous" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SEXY PLANET(FROM NONSTOP MEGAMIX)" 								then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Silent Hill (3rd christmas mix)" 								then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STILL IN MY HEART(MOMO MIX)" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SUPER STAR(FROM NONSTOP MEGAMIX)" 								then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sweet Sweet ♥ Magic" 											then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TSUGARU" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TSUGARU (APPLE MIX)"	 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "WILD RUSH(FROM NONSTOP MEGAMIX)" 								then return "CRYSTALDIUM (X)"

----------------------------------------------------------------------------- DDR EXTREME -----------------------------------------------------------------------------
	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "蒼い衝動 ～for EXTREME～" 											then return "CYBER (X2)"					--BLUE IMPULSE ~for EXTREME~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "桜" 																then return "CRYSTALDIUM (X)"				--SAKURA
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "大見解" 															then return "CYBER (X2)"					--DAIKENKAI
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "三毛猫ロック" 														then return "DANCING RAYS (X)"				--CALICO CAT ROCK
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "A" 																then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Across the nightmare" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "air" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AM-3P -303 BASS MIX-" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "bag" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BE LOVIN" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Colors ～for EXTREME～" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CUTIE CHASER(MORNING MIX)" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dance Dance Revolution" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Destiny lovers" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DROP THE BOMB(SyS.F. Mix)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Frozen Ray ～for EXTREME～" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Gamelan de Couple" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GRADUATION ～それぞれの明日～" 										then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Happy Wedding" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Heaven is a '57 metallic gray ～gimmix～" 						then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HYPER EUROBEAT" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I'm gonna get you!" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "jane jana" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "JET WORLD" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "KISS KISS KISS" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Kiss me all night long" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LA BAMBA" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "L'amour et la liberté(DDR Ver.)" 								then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE♥SHINE" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "♥Love²シュガ→♥" 													then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Miracle Moon ～L.E.D.LIGHT STYLE MIX～" 							then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOIA survivor" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOIA survivor MAX" 											then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pink Rose" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SO IN LOVE" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STAY (Organic house Version)" 									then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "stoic (EXTREME version)" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "sync (EXTREME version)" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TEARS" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The Least 100sec" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The legend of MAX" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE survivor" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Twin Bee -Generation X-" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "V ～for EXTREME～" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "VANITY ANGEL" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "xenon" 															then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "1998" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "321STARS" 														then return "BOOM BOOM BOOM (X)"
		
----------------------------------------------------------------------------- DDR SuperNOVA
		
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "怒れる大きな白い馬" 													then return "CYBER (X2)"					--Tino's White Horse
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "カゲロウ" 															then return "BOOM BOOM BOOM (X)"			--KAGEROW (Dragonfly)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "月光蝶" 															then return "BOOM DARK "..Boom				--Gekkou chou
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "この子の七つのお祝いに" 												then return "BOOM BOOM BOOM (X)"			--Konoko no nanatsu no oiwaini
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "男々道" 															then return "BOOM BOOM BOOM (X)"			--DanDanDO(The true MAN's Road)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "チカラ" 															then return "BOOM LIGHT (X2)"				--CHIKARA
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "虹色" 															then return "CRYSTALDIUM (X)"				--NIJIIRO
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "華爛漫 -Flowers-" 												then return "CRYSTALDIUM (X)"				--Hana Ranman -Flowers-
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ヒマワリ" 															then return "BOOM LIGHT (X2)"				--Himawari
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "夢幻ノ光" 															then return "CYBER (X2)"					--Mugen
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "A Stupid Barber" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AA" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Bad Routine" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Baile Le Samba" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BALLAD FOR YOU～想いの雨～" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Brazilian Anthem" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "cachaca" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Can Be Real" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CAN'T STOP FALLIN' IN LOVE -super euro version-" 				then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CENTAUR" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CHAOS"															then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CURUS" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DoLL" 															then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dragon Blade" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Fascination ～eternal love mix～" 								then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Fascination MAXX" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Flow" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Flow (True Style)" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Fly away" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Forever Sunshine" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Freedom" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Funk Boogie" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GORGEOUS 2012" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HAPPY☆ANGEL" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Healing-D-Vision" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I Need You" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "iFUTURELIST(DDR VERSION)"										then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "INNOCENCE OF SILENCE" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "INSIDE YOUR HEART" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Jam & Marmalade" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "KEEP ON MOVIN' ～DMX MIX～" 										then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LA BAMBA" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOGICAL DASH" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE IS ORANGE" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Make A Difference" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MARIA(I believe...)" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX 300 (Super-Max-Me Mix)" 									then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAXIMIZER" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MIDNIGHT SPECIAL" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Mind Parasite" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Monkey Punk" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MOON" 															then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "murmur twins" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "My Only Shining Star" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "No.13" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA-Respect-" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PASSION OF LOVE" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Polovtsian Dances And Chorus" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PUT YOUR FAITH IN ME ～SATURDAY NIGHT MIX～" 					then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Quick Master" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Quickening" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "rainbow flyer" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "rainbow rainbow" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "RED ZONE" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Saturday Night Love" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Scorching Moon" 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SEDUCTION" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SEDUCTION(Vocal Remix)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Ska Ska No.3" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Star Gate Heaven"												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STARS☆☆☆(2nd NAOKI's style)"									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "THE SHINING POLARIS" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TIERRA BUENA" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TOMORROW" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tomorrow Perfume" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRUE♥LOVE" 														then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Try 2 Luv. U" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "un deux trois" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Under the Sky" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Xepher" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "You gotta move it (feat. Julie Rugaard)" 						then return "BOOM BOOM BOOM (X)"

----------------------------------------------------------------------------- DDR SuperNOVA 2

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "A thing called LOVE" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AM-3P (\"CHAOS\" Special)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Arrabbiata" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "B4U (\"VOLTAGE\" Special)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Blind Justice ～Torn souls, Hurt Faiths ～" 						then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Bloody Tears(IIDX EDITION)" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRILLIANT 2U (\"STREAM\" Special)" 								then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CaptivAte～誓い～" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "D2R (\"FREEZE\" Special)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DEAD END (\"GROOVE RADAR\" Special)" 							then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "dream of love" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DYNAMITE RAVE (\"AIR\" Special)" 								then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Electrified" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Every Day, Every Night(NM STYLE)" 								then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Feelings Won't Fade(Extend Trance Mix)" 						then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "FIRE" 															then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Flow (Jammin' Ragga Mix)" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Fly away -mix del matador-" 									then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Freeway Shuffle" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GIRIGILI門前雀羅" 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "L'amour et la liberté(Darwin & DJ Silver remix)" 				then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MARS WAR 3" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MOONSTER" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Music In The Rhythm"											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "NGO" 															then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA ～HADES～" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pluto" 															then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pluto Relinquish" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Poseidon" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Raspberry♡Heart(English version)"							 	then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Saturn" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Shades of Grey" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Silver Platform - I wanna get your heart -" 					then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SOUL CRASH" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Star Gate Heaven (FUTURE LOVE Mix)"							 	then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STARS☆☆☆（Re-tuned by HΛL） - DDR EDITION -" 						then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "stealth" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SUNKiSS♥DROP" 													then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "switch" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Trim" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE PhoeniX" 											then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Trust -DanceDanceRevolution mix-" 								then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Unreal" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Uranus" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Vem brincar" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Venus"															then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "volcano" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Votum stellarum -forest #25 DDR RMX-" 							then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Why not" 														then return "BOOM BOOM BOOM (X)"

----------------------------------------------------------------------------- DDR X

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "スキ☆メロ" 															then return "LOVE SWEETS (X)"				--Suki Melo
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ポリリズム" 															then return "LOVE SWEETS (X)"				--PORIRIZUMU
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "世界は踊る" 														then return "CRYSTALDIUM (X)"				--SEKAI HA ODORU
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "凛として咲く花の如く" 													then return "BOOM LIGHT (X2)"				--Rin To Shite Saku Hana No Gotoku
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "旅人" 															then return "BOOM LIGHT (X2)"				--Tabibito
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "零 - ZERO -" 													then return "BOOM BOOM BOOM (X)"			--ZERO
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "革命(X-Special)" 												then return "CRYSTALDIUM (X)"				--KAKUMEI(X-Special)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "A Geisha's Dream" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AFRONOVA(X-Special)" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Always on My Mind"	 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Beautiful Inside (Cube::Hard Mix)" 								then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Big Girls Don't Cry" 											then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Blue Rain" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Boys (2008 X-edit)" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Butterfly (2008 X-edit)" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CANDY☆(X-Special)" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Chance and Dice" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dance Celebration" 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dance Celebration (System 7 Remix)" 							then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dance Dance Revolution(X-Special)" 								then return "REPLICANT (X2 POSSESSION)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dance Floor" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "dazzle" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dream Machine" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DUB-I-DUB (2008 X-edit)" 										then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Feel" 															then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Flight of the Phoenix" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Flourish" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GET UP'N MOVE (2008 X-edit)" 									then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Ghetto Blasta Deluxe" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Happy" 															then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Healing Vision(X-Special)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Here It Goes Again" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Horatio" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Inspiration" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "INTO YOUR HEART (Ruffage remix)" 								then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Koko Soko"						 								then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Lift You Up" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVING YOU (Epidemik remix)" 									then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Make Me Cry"				 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Malacca" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX 300(X-Special)" 											then return "REPLICANT (X2 POSSESSION)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAXX UNLIMITED(X-Special)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "on the bounce" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "On The Break" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA ETERNAL(X-Special)" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOIA EVOLUTION(X-Special)" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA MAX～DIRTY MIX～(X-Special)" 							then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA Rebirth(X-Special)" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA(X-Special)" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Party Lights" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Playa (Original Mix)" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Put 'Em Up"			 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "puzzle" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Reach Up" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SABER WING" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SABER WING (Akira Ishihara Headshot mix)" 						then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "S・A・G・A" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Slip Out" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Slip Out (bounce in beat mix)" 									then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SP-TRIP MACHINE～JUNGLE MIX～(X-Special)" 						then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SUPER SAMURAI" 													then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Swingin'"	 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Taj He Spitz" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Taj He Spitz (Tommie Sunshine's Brooklyn Fire Re-Touch)" 		then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Take A Chance" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The flower in your smile" 										then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The legend of MAX(X-Special)" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Ticket to Bombay" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Till the lonely's gone" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TimeHollow" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tracers (4Beat Remix)" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Trickster"			 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Trigger" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE CLIMAX(X-Special)" 								then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE(X-Special)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "U Can't Touch This"			 									then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Übertreffen" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Waiting 4 u" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "We Come Alive" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "We've Got To Make It Tonight" 									then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "will" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Xmix1 (Midnight Dawn)" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Xmix2 (Beats 'n Bangs)" 										then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Xmix3 (Stomp Dem Groove)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Xmix4 (Linear Momentum)" 										then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Xmix5 (Overcrush)" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "30 Lives (Up-Up-Down-Dance Mix)" 								then return "BOOM LIGHT (X2)"

----------------------------------------------------------------------------- DDR X2 ---------------------------------------------------------------------------------
	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "不沈艦CANDY" 														then return "VIDEO WHITE (X2)"				--YELLOW CANDY
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "冥" 																then return "VIDEO WHITE (X2)"				--Mei
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "A Brighter Day" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "aftershock!!" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "All My Love" 													then return "BIG SCREEN (X2)"				
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Anti-Matter" 													then return "REPLICANT (X2 POSSESSION)"	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BALLAD THE FEATHERS" 											then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Be your wings" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Bonafied Lovin'" 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CG Project" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Crazy Control" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DAFT PUNK IS PLAYING AT MY HOUSE" 								then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dazzlin' Darlin" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dazzlin' Darlin-秋葉工房mix-" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Decade" 														then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ΔMAX" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "dirty digital" 													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DROP" 															then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dummy" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ETERNITY" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Everytime We Touch" 											then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "EZ DO DANCE" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Feel Good Inc" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "FIRE FIRE" 														then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Freeze" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "going up" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GOLD RUSH" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Gotta Dance" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Heatstroke" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Hide-away" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ICE ICE BABY" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "IF YOU WERE HERE (L.E.D.-G STYLE REMIX)" 						then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I'm so Happy" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "in love wit you" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "KIMONO♥PRINCESS" 												then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "KISS KISS KISS 秋葉工房 MIX" 										then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "La libertad" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "La receta" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Leaving…" 														then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Love Again" 													then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX LOVE" 														then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Melody Life" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "more more more" 												then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New Decade" 													then return "REPLICANT (X2 POSSESSION)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "oarfish" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "only my railgun" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pierce The Sky" 												then return "REPLICANT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pluto The First" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Poseidon(kors k mix)" 											then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "POSSESSION" 													then return "REPLICANT (X2 POSSESSION)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "real-high-SPEED" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "resonance" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "roppongi EVOLVED ver.A" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "roppongi EVOLVED ver.B" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "roppongi EVOLVED ver.C" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "roppongi EVOLVED ver.D" 										then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sacred Oath" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "sakura storm" 													then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sakura Sunrise" 												then return "REPLICANT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Second Heaven" 													then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "She is my wife" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Shine" 															then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "☆shining☆" 														then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Shiny World" 													then return "REPLICANT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sky Is The Limit" 												then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "smooooch･∀･" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "someday..." 													then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Super Driver" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SUPER EUROBEAT <GOLD MIX>" 										then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Taking It To The Sky" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TENSHI" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Theory of Eternity" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "THIS NIGHT" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Time After Time" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Valkyrie dimension" 											then return "REPLICANT (X2 VALKYRIE)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "VANESSA" 														then return "VIDEO BLACK (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "WH1TE RO5E" 													then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "What Will Come of Me" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "You are a Star" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Your Angel" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ZETA～素数の世界と超越者～" 											then return "VIDEO WHITE (X2)"				--ZETA ~The World of Prime Numbers and the Transcendental Being~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "888" 															then return "CYBER (X2)"
		
----------------------------------------------------------------------------- DDR X3 vs 2ndMIX

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "アルストロメリア (walk with you remix)" 								then return "BOOM LIGHT (X2)"				--Alstroemeria (walk with you remix)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "紅焔" 															then return "CRYSTALDIUM (X)"				--Kouen
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "雫" 																then return "BOOM DARK "..Boom				--Shizuku
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "隅田川夏恋歌" 														then return "CRYSTALDIUM (X)"				--Sumidagawa karenka
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "天上の星 ～黎明記～" 												then return "CYBER (X2)"					--Tenjou no Hoshi -Reimeiki-
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "コネクト" 															then return "CYBER (X2)"					--Connect
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ヘビーローテーション" 													then return "LOVE SWEETS (X)"				--Heavy Rotation
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ビューティフル レシート" 													then return "BOOM LIGHT (X2)"				--Beautiful Receipt
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "女々しくて" 														then return "DANCING RAYS (X)"				--Memeshikute
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "繚乱ヒットチャート" 													then return "VIDEO WHITE (X2)"				--Ryouran Hit Chart
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋閃繚乱" 														then return "CRYSTALDIUM (X)"				--Rensen ryouran
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Amalgamation" 													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRILLIANT 2U (AKBK MIX)" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Chronos" 														then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "COME BACK TO MY HEART" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Cosmic Hurricane" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CRAZY♥LOVE" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Diamond Dust" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "dreaming can make a wish come true" 							then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ever snow" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Fever" 															then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Find You Again" 												then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "FLOWER" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "future gazer" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Get Back Up!" 													then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Go For The Top" 												then return "REPLICANT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Haunted Rhapsody" 												then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HEART BEAT FORMULA" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HEARTBREAK (Sound Selektaz remix)" 								then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I/O" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "In The Air" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "IN THE ZONE" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "KEEP ON MOVIN' (Y&Co. DJ BOSS remix)" 							then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Let's Get Away" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "London EVOLVED Ver.A" 											then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "London EVOLVED Ver.B" 											then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "London EVOLVED Ver.C" 											then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE & JOY" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE IS THE POWER -Re:born-" 									then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAGIC PARADE" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Mermaid girl" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "message" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "NEPHILIM DELTA" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New Beginning" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New York EVOLVED (Type A)" 										then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New York EVOLVED (Type B)" 										then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New York EVOLVED (Type C)" 										then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "osaka EVOLVED -毎度、おおきに！- (TYPE1)" 							then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "osaka EVOLVED -毎度、おおきに！- (TYPE2)" 							then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "osaka EVOLVED -毎度、おおきに！- (TYPE3)" 							then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA (kskst mix)" 											then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARANOiA Revolution" 											then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Private Eye" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Programmed Universe" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PUT YOUR FAITH IN ME (DA's Twinkly Disco Remix)" 				then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "REBORN MAGIC" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Rescue Me" 														then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Resurrection" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "REVOLUTIONARY ADDICT" 											then return "REPLICANT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Rhythms Inside" 												then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Seasons" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Seule" 															then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Share The Love" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SigSig" 														then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SILVER☆DREAM" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "snow prism" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Something Special" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STRAIGHT JET" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Take A Step Forward" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The Heavens Above" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TIME" 															then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tohoku EVOLVED" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "tokyoEVOLVED (TYPE1)" 											then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "tokyoEVOLVED (TYPE2)" 											then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "tokyoEVOLVED (TYPE3)" 											then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tribe" 															then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE (xac nanoglide mix)" 								then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE EVOLUTION" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TWINKLE♡HEART" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "UNBELIEVABLE (Sparky remix)" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Until the End" 													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Wicked Plastik" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Wings of an Angel (Fly With Me)" 								then return "CRYSTALDIUM (X)"
		
----------------------------------------------------------------------------- DDR 2013 -----------------------------------------------------------------------------
	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "つけまつける" 														then return "DANCING RAYS (X)"				--Tsukematsukeru
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ふりそでーしょん" 														then return "DANCING RAYS (X)"				--Furisodation
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ウッーウッーウマウマ(ﾟ∀ﾟ)(Speedcake Remix)" 								then return "DANCING RAYS (X)"				--U-u-uma uma (Speedcake Remix)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "お米の美味しい炊き方、そしてお米を食べることによるその効果。" 						then return "CYBER (X2)"					--Okome no oishii takikata, soshite okome wo taberu koto ni yoru sono kouka
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "オリオンをなぞる" 														then return "DANCING RAYS (X)"				--Orion wo nazoru
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "からふるぱすてる" 													then return "BIG SCREEN (X2)"				--Colorful Pastel
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "キケンな果実"													 	then return "BOOM LIGHT (X2)"				--Kiken na kajitsu
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ジョジョ～その血の運命～"												then return "DANCING RAYS (X)"				--JoJo ~Sono Chi no Sadame~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ずっとみつめていて (Ryu☆Remix)"										then return "DANCING RAYS (X)"				--Zutto Mitsu Meteite (Ryu Remix)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "晴天Bon Voyage"													then return "CRYSTALDIUM (X)"				--Seiten Bon Voyage
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "創世ノート"															then return "BOOM LIGHT (X2)"				--Sousei Note
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ちくわパフェだよ☆CKP"													then return "LOVE SWEETS (X)"				--Chikuwa parfait da yo CKP
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "†渚の小悪魔ラヴリィ～レイディオ†" 											then return "DANCING RAYS (X)"				--Nagisa no koakuma lovely~radio
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "虹色の花"															then return "BOOM BOOM BOOM (X)"			--Nijiiro no hana
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "フー・フローツ"														then return "CRYSTALDIUM (X)"				--Who Floats
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "マジLOVE1000%"													then return "DANCING RAYS (X)"				--Maji LOVE 1000%
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "めうめうぺったんたん！！"													then return "LOVE SWEETS (X)"				--Meumeupettantan!!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ラキラキ"															then return "BOOM LIGHT (X2)"				--Lucky Lucky
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "凛として咲く花の如く ～ひなビタ♪ edition～"									then return "LOVE SWEETS (X)"				--Rin to shite saku hana no gotoku ~HinaBitter edition~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ロンドンは夜8時(LON 8PM - TYO 4AM)" 									then return "DANCING RAYS (X)"				--London wa Yoru 8 Ji (LON 8PM - TYO 4AM)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "折れないハート" 														then return "DANCING RAYS (X)"				--Orenai Heart
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ACROSS WORLD" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Ah La La La" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Air Heroes" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Another Phase" 													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Back In Your Arms" 												then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Beautiful Dream" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Blew My Mind" 													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Bombay Bomb" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRIGHT STREAM" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Burst The Gravity" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Children of the Beat" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Chinese Snowy Dance" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Choo Choo TRAIN" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Condor" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Confession" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Desert Journey" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Diamond Night" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Elemental Creation" 											then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Empathetic" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "escape" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Everything I Need" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Find The Way" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GAIA" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "heron" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Hoping To Be Good" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "JOKER" 															then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LOVE & JOY -Risk Junk MIX-" 									then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Magnetic" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Mickey Mouse March(Eurobeat Version)" 							then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Monkey Business" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New Generation" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New Gravity" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "nightbird lost wing" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PRANA" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "printemps" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Qipchãq" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Right on time (Ryu☆Remix)" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "RЁVOLUTIФN" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "sola" 															then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Somehow You Found Me" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "south" 															then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Spanish Snowy Dance" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Starry HEAVEN" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Straight Oath" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STULTI" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sucka Luva" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Summer Fairytale" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sweet Rain" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Synergy For Angels" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tell me what to do" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The Island Song" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "THE REASON" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The Wind of Gold" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Top The Charts" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Triple Journey -TAG EDITION-" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "WILD SIDE" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Windy Fairy" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Wow Wow VENUS" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "You" 															then return "DANCING RAYS (X)"
		
----------------------------------------------------------------------------- DDR 2014 ---------------------------------------------------------------------------------

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "朝色の紙飛行機" 													then return "CYBER (X2)"					--Asa-iro no kami hikouki
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "妖隠し -あやかしかくし-" 												then return "BOOM DARK "..Boom				--Ayakashi kakushi
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "阿波おどり -Awaodori- やっぱり踊りはやめられない" 							then return "BOOM LIGHT (X2)"				--Awa odori -Awaodori- yappari odori wa yame rarenai
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "エンドルフィン" 														then return "CYBER (X2)"					--Endorphin
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "御千手メディテーション" 													then return "CYBER (X2)"					--Osenju meditation
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "乙女繚乱 舞い咲き誇れ" 												then return "LOVE SWEETS (X)"				--Otome ryouran mai sakihokore
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "女言葉の消失" 														then return "BOOM LIGHT (X2)"				--Onna kotoba no shoushitsu
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "クリムゾンゲイト" 														then return "BOOM DARK "..Boom				--Crimson Gate
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "激アツ☆マジヤバ☆チアガール" 												then return "BOOM LIGHT (X2)"				--Gekiatsu majiyaba cheer girl
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "幻想系世界修復少女" 												then return "CRYSTALDIUM (X)"				--Gensoukei sekai shuufuku shoujo
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋はどう？モロ◎波動OK☆方程式！！" 										then return "LOVE SWEETS (X)"				--Koi hadou Moro Hadou OK Houteishiki!!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "漆黒のスペシャルプリンセスサンデー" 											then return "BOOM BOOM BOOM (X)"			--Shikkoku no special princess sundae
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "灼熱Beach Side Bunny" 											then return "BOOM LIGHT (X2)"				--Shakunetsu Beach Side Bunny
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "セツナトリップ" 														then return "BOOM LIGHT (X2)"				--Setsuna Trip
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "地方創生☆チクワクティクス" 												then return "LOVE SWEETS (X)"				--Chihou sousei chikuwactics
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ちゅ～いん☆バニー" 													then return "LOVE SWEETS (X)"				--Chewin' Bunny
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "チョコレートスマイル" 													then return "LOVE SWEETS (X)"				--Chocolate Smile
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "デッドボヲルdeホームラン" 												then return "DANCING RAYS (X)"				--Deadball de homerun
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "天空の華" 														then return "BOOM DARK "..Boom				--Tenkuu no hana
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ドーパミン" 															then return "BOOM DARK "..Boom				--Dopamine
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ドキドキ☆流星トラップガール!!" 											then return "CRYSTALDIUM (X)"				--Dokidoki ryuusei trap girl!!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "突撃！ガラスのニーソ姫！" 												then return "CRYSTALDIUM (X)"				--Totsugeki! Glass no kneeso hime!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "轟け！恋のビーンボール！！" 												then return "BOOM LIGHT (X2)"				--Todoroke! Koi no beanball!!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "嘆きの樹" 															then return "BOOM DARK "..Boom				--Nageki no ki
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "夏色DIARY -DDR mix-" 											then return "BOOM BOOM BOOM (X)"			--SUMMER DIARY -DDR mix-
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "爆なな☆てすとロイヤー" 													then return "LOVE SWEETS (X)"				--Bakunana Testroyer
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "はなまるぴっぴはよいこだけ" 												then return "DANCING RAYS (X)"				--Hanamaru pippi wa yoiko dake
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "パ→ピ→プ→Yeah!" 													then return "LOVE SWEETS (X)"				--Pa pi pu Yeah!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "バンブーソード・ガール" 													then return "CYBER (X2)"					--Bamboo Sword Girl
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ビビットストリーム" 													then return "DANCING RAYS (X)"				--BeBeatStream
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "星屑のキロク" 														then return "CRYSTALDIUM (X)"				--Hoshikuzu no kiroku
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ホメ猫☆センセーション" 													then return "LOVE SWEETS (X)"				--Home neko sensation
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "マインド・ゲーム" 														then return "BOOM LIGHT (X2)"				--Mind Game
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "回レ！雪月花" 														then return "BIG SCREEN (X2)"				--Maware! Setsugetsuka
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ミライプリズム" 														then return "CRYSTALDIUM (X)"				--Mirai prism
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "滅亡天使 † にこきゅっぴん" 												then return "LOVE SWEETS (X)"				--Metsubou tenshi nikokyuppin
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "野球の遊び方　そしてその歴史　～決定版～" 									then return "DANCING RAYS (X)"				--Yakyuu no asobikata soshite sono rekishi ~ketteiban~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ヤマトなでなで♡かぐや姫" 												then return "CRYSTALDIUM (X)"				--Yamato nadenade Kaguya-hime
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ラクガキスト" 														then return "DAWN STREETS (X)"				--Luckgakist
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "海神" 															then return "BOOM DARK "..Boom 				--Wadatsumi
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Adularia" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ÆTHER" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AWAKE" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "chaos eater" 													then return "BOOM BLUE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Cleopatrysm" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Daily Lunch Special" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dance Partay" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Destination" 													then return "BOOM GREEN "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Din Don Dan" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dispersion Star" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Do The Evolution" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dreamin'" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "EGOISM 440" 													then return "REPLICANT (A PERIOD)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Electronic or Treat!" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Elysium" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Engraved Mark" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "esrev:eR" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Follow Tomorrow" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "FUJIMORI -祭- FESTIVAL" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "FUNKY SUMMER BEACH" 											then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Go↓Go↑Girls&Boys!" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Habibe (Antuh muhleke)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HAPPY☆LUCKY☆YEAPPY" 											then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HEART BEAT FORMULA (Vinyl Mix)" 								then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HYENA" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Idola" 															then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "IMANOGUILTS" 	 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "In The Breeze" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "JOMANDA" 	 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "KHAMEN BREAK" 	 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "M.A.Y.U." 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX.(period)" 													then return "REPLICANT (2014 MAX)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "neko＊neko" 														then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Nostalgia Is Lost" 	 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "One Sided Love" 	 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Over The “Period”" 												then return "REPLICANT (A PERIOD)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Party Lights (Tommie Sunshine's Brooklyn Fire Remix)" 	 		then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Plan 8" 														then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "POSSESSION(EDP Live Mix)" 										then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PRANA+REVOLUTIONARY ADDICT (U1 DJ Mix)" 						then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PUNISHER" 	 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Remain" 														then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Romancing Layer" 	 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SABER WING (satellite silhouette remix)" 						then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sakura Mirage" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Samurai Shogun vs. Master Ninja" 								then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sand Blow" 														then return "BOOM YELLOW "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Scarlet Moon" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "second spring storm" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SPECIAL SUMMER CAMPAIGN!" 										then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Squeeze" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Starlight Fantasia" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Starlight Fantasia (Endorphins Mix)" 							then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "starmine" 														then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Stella Sinistra" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Strobe♡Girl" 													then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Struggle" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Summer fantasy (Darwin remix)" 									then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SUPER HERO" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Thank You Merry Christmas" 										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The Lonely Streets" 											then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Truare!" 														then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "True Blue" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TSUBASA" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "VEGA" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "8000000" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "IX" 	 														then return "BOOM DARK "..Boom
		
----------------------------------------------------------------------------- U.M.U × BEMANI

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "僕は君に恋をした" 	 												then return "BIG SCREEN (X2)"				--Boku wa kimi ni koi wo shita
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Che Che Chelip～魔法のコトバ～" 	 									then return "BIG SCREEN (X2)"				--Che Che Chelip ~mahou no kotoba~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ドリームキャッチャー" 	 												then return "BIG SCREEN (X2)"				--DREAM CATCHER
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HAPPY☆きたかた" 	 												then return "BIG SCREEN (X2)"				--HAPPY kitakata
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "川崎純情音頭" 	 													then return "BIG SCREEN (X2)"				--Kawasaki junjo ondo
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "キライじゃないのぉ" 	 												then return "BIG SCREEN (X2)"				--Kiraijanaino
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ルシャナの気持ち" 	 												then return "BIG SCREEN (X2)"				--Le Siana no kimochi
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ラブラブキュートなハピハピサンデー" 	 										then return "BIG SCREEN (X2)"				--Love love cute na happy happy sunday
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "マーメイド" 	 													then return "BIG SCREEN (X2)"				--Mermaid
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MITOれて！いばらきっしゅだ～りん" 	 										then return "BIG SCREEN (X2)"				--MITOrete! Ibarakisshuda~rin
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "乙女の真骨頂" 	 													then return "BIG SCREEN (X2)"				--Otome no shinkocchou
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "らいらら" 	 														then return "BIG SCREEN (X2)"				--Rairara
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "瞬間 I LOVE YOU" 	 											then return "BIG SCREEN (X2)"				--Shunkan I LOVE YOU
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ザッツ！KAIYODO" 	 												then return "BIG SCREEN (X2)"				--That's! KAIYODO
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "We are チャリンコエンジェルス" 	 										then return "BIG SCREEN (X2)"				--We are Charinko Angels
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "A to Z" 	 													then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Boom! Boom! Miracle Emotion" 	 								then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CAPTIVE" 	 													then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dong! Dong!" 	 												then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Everybody Say EDOGAWA" 	 										then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Field on!" 	 													then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HeartLatte" 	 												then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LoveLove DokiDoki" 	 											then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LUCKY-YO!!" 	 												then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "my cosmic world" 	 											then return "BIG SCREEN (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MY HERO" 	 													then return "BIG SCREEN (X2)"

----------------------------------------------------------------------------- DDR A

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "愛言葉" 															then return "LOVE SWEETS (X)"				--Ai kotoba
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "天ノ弱" 															then return "BOOM LIGHT (X2)"				--Ama no jyaku
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ありふれたせかいせいふく" 												then return "BOOM BOOM BOOM (X)"			--Arifureta sekai seifuku
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "いーあるふぁんくらぶ" 													then return "DANCING RAYS (X)"				--Yi-er fanclub
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "イーディーエム・ジャンパーズ" 												then return "BOOM LIGHT (X2)"				--EDM jumpers
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "色は匂へど散りぬるを" 													then return "BOOM BOOM BOOM (X)"			--Iro wa nio e do chirinuru wo
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "エイリアンエイリアン" 													then return "DANCING RAYS (X)"				--Alien Alien
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "エキサイティング!!も・ちゃ・ちゃ☆" 											then return "LOVE SWEETS (X)" 				--Exciting!! Mo-cha-cha
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "おねがいダーリン" 														then return "LOVE SWEETS (X)" 				--Onegai darling
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "朧" 																then return "BOOM LIGHT (X2)"  				--Oboro
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "朧 (dj TAKA Remix)" 												then return "CRYSTALDIUM (X)" 				--Oboro (dj TAKA Remix)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "きゅん×きゅんばっきゅん☆LOVE" 											then return "BOOM BOOM BOOM (X)" 			--Kyun kyun bakkyun LOVE
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "倉野川音頭" 														then return "BOOM LIGHT (X2)"				--Kuranogawa ondo
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "黒髪乱れし修羅となりて～凛 edition～" 									then return "CRYSTALDIUM (X)" 				--Kurokami midareshi shura to narite ~Rin edition~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "君氏危うくも近うよれ" 													then return "BOOM BOOM BOOM (X)" 			--Kunshi ayauku mo chikou yore
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋時雨" 															then return "BOOM BOOM BOOM (X)" 			--Koishigure
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋する☆宇宙戦争っ!!" 												then return "BOOM LIGHT (X2)" 				--Koisuru uchuu sensou!!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋のパズルマジック" 													then return "CRYSTALDIUM (X)" 				--Koi no puzzle magic
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "この青空の下で" 														then return "CRYSTALDIUM (X)" 				--Kono aozora no shita de
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "さよならトリップ ～夏陽 EDM edition～" 									then return "CRYSTALDIUM (X)" 				--Sayonara trip ~Natsuhi EDM edition~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "幸せになれる隠しコマンドがあるらしい" 										then return "BOOM BOOM BOOM (X)"			--Shiawase ni nareru kakushi command ga arurashii
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "しゃかりきリレーション" 													then return "LOVE SWEETS (X)" 				--Shakariki relation
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "十二星座の聖域" 													then return "CRYSTALDIUM (X)" 				--Juuniseiza no seiiki
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "シュレーディンガーの猫" 													then return "LOVE SWEETS (X)" 				--Schrodinger no neko
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "春風ブローインウィンド" 													then return "BOOM LIGHT (X2)" 				--Shunpuu blowing wind
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "すろぉもぉしょん" 														then return "CRYSTALDIUM (X)" 				--SLoWMoTIoN
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "星座が恋した瞬間を。" 													then return "CRYSTALDIUM (X)" 				--Seiza ga koishita shunkan wo
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "千年ノ理" 															then return "BOOM BOOM BOOM (X)" 			--Sennen no kotowari
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "宇宙(ソラ)への片道切符" 												then return "BOOM BOOM BOOM (X)" 			--Sora e no katamichi kippu
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "闘え！ダダンダーンV" 													then return "DANCING RAYS (X)" 				--Tatakae! Dadandarn V
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "打打打打打打打打打打" 												then return "DANCING RAYS (X)" 				--Dadadadadadadadadada
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "チルノのパーフェクトさんすう教室" 											then return "CRYSTALDIUM (X)" 				--Cirno's Perfect Math Class
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "チルノのパーフェクトさんすう教室 (EDM REMIX)" 								then return "CRYSTALDIUM (X)" 				--Cirno's Perfect Math Class (EDM REMIX)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ナイト・オブ・ナイツ" 													then return "BOOM DARK "..Boom 				--Night of knights
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "脳漿炸裂ガール" 													then return "CYBER (X2)" 					--Nou shou sakuretsu girl
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "初音ミクの消失" 														then return "BOOM LIGHT (X2)" 				--Hatsune Miku no shoushitsu
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ハッピーシンセサイザ" 													then return "DANCING RAYS (X)" 				--Happy synthesizer
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ハピ恋☆らぶりぃタイム!!" 												then return "LOVE SWEETS (X)" 				--Happy koi lovely time!!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ハルイチバン" 														then return "BOOM LIGHT (X2)" 				--Haru ichiban
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "*ハロー、プラネット。" 													then return "CLUB (X2)"						--Hello, planet
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "向日葵サンセット" 													then return "BOOM LIGHT (X2)" 				--Himawari sunset
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "風鈴花火" 														then return "DANCING RAYS (X)" 				--Fuurin hanabi
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "無頼ック自己ライザー" 													then return "CLUB (X2)"						--Buraikku jikorizer
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "プレインエイジア -PHQ remix-" 											then return "BOOM BOOM BOOM (X)" 			--Plain Asia -PHQ remix-
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ベィスドロップ・フリークス" 												then return "LOVE SWEETS (X)" 				--Bassdrop freaks
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "放課後ストライド"														then return "BOOM LIGHT (X2)" 				--Houkago stride
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "魔法のたまご ～心菜 ELECTRO POP edition～" 							then return "CRYSTALDIUM (X)" 				--Mahou no tamago ~Cocona ELECTRO POP edition~
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "魔理沙は大変なものを盗んでいきました" 										then return "LOVE SWEETS (X)" 				--Marisa wa taihen na mono wo nusunde ikimashita
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "妄想税" 															then return "CYBER (X2)" 					--Mousou zei
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ようこそジャパリパークへ" 												then return "BOOM LIGHT (X2)" 				--Youkoso Japari Park e
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "輪廻転生" 														then return "BOOM DARK "..Boom 				--Rinnetensei
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ルミナスデイズ" 														then return "DANCING RAYS (X)" 				--Luminous days
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋愛観測" 														then return "LOVE SWEETS (X)" 				--Renai kansoku
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ロールプレイングゲーム" 													then return "CYBER (X2)" 					--Role-playing game
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "六兆年と一夜物語" 													then return "CYBER (X2)" 					--Rokuchounen to ichiya monogatari
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "炉心融解" 														then return "CRYSTALDIUM (X)" 				--Roshin yuukai
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ロストワンの号哭" 													then return "BOOM BOOM BOOM (X)" 			--Lost one no goukoku
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ロンロンへ ライライライ!" 												then return "BOOM LIGHT (X2)" 				--Ronron e rairairai!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ACE FOR ACES" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ALGORITHM" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ALL MY HEART -この恋に、わたしの全てを賭ける-" 							then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Angelic Jelly" 													then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ANNIVERSARY ∴∵∴ ←↓↑→" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Astrogazer" 													then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Bad Apple!! feat. nomico" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "bass 2 bass" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Be a Hero!" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Believe" 														then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Boss Rush" 														then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Break Free" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Catch Our Fire!" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CHAOS Terror-Tech Mix" 											then return "BOOM YELLOW "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CHOCOLATE PHILOSOPHY" 											then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Chronos (walk with you remix)" 									then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Come to Life" 													then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Cosy Catastrophe" 												then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Cytokinesis" 													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DANCE ALL NIGHT (DDR EDITION)" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dancer in the flare" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DDR MEGAMIX" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Determination" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DREAMING-ING!!" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Electric Dance System Music" 									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Emera" 															then return "BOOM GREEN "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ENDYMION" 														then return "REPLICANT (A ENDYMION)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Eternal Summer" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Far east nightbird" 											then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Far east nightbird kors k Remix -DDR edit ver-" 				then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "First Time" 													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Fly far bounce" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Grand Chariot" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Grip & Break down !!" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HANDS UP IN THE AIR" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Happy" 															then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Ha・lle・lu・jah" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Help me, ERINNNNNN!!" 											then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "High School Love" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Hillbilly Shoes" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Hopeful" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I Want You To Know" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Illegal Function Call" 											then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "IN BETWEEN" 													then return "BOOM YELLOW "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "invisible rain" 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Ishtar" 														then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Jewelry days" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Lesson by DJ" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Life is beautiful" 												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Love You More" 													then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Love♡Shine わんだふるmix" 											then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX 360" 														then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "More One Night" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Neutrino" 														then return "BOOM BLUE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New Century" 													then return "BOOM GREEN "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "#OurMemories" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "out of focus" 													then return "BOOM GREEN "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Poochie" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "POSSESSION (20th Anniversary Mix)" 								then return "BOOM BLUE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Prey" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Puberty Dysthymia" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pursuer" 														then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Reach The Sky, Without you" 									then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Rejoin" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "RISING FIRE HAWK" 												then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "S!ck" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sakura Reflection" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sephirot" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SHION" 															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Show me your moves" 											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Shut Up and Dance" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "siberite" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Smiling Passion" 												then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Special One" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Star Trail" 													then return "VIDEO WHITE (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Start a New Day" 												then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STERLING SILVER" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STERLING SILVER (U1 overground mix)" 							then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Strawberry Chu♡Chu♡" 											then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "StrayedCatz" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SUN² SUMMER STEP!" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SUPER SUMMER SALE" 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TECH-NOID" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The Night Away (MK Remix)" 										then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Time Of Our Lives" 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Towards the TOWER" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Triple Counter" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Twin memories W" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Vanquish The Ghost" 											then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Wake Me Up" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Yeah! Yeah!" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ZEPHYRANTHES" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "39" 															then return "BOOM LIGHT (X2)"
		
----------------------------------------------------------------------------- DDR A20 ---------------------------------------------------------------------------------

		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "おーまい！らぶりー！すうぃーてぃ！だーりん！" 									then return "LOVE SWEETS (X)"				--Oh my! lovely! sweety! darling!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "革命パッショネイト" 													then return "BOOM BOOM BOOM (X)"			--Kakumei passionate
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "腐れ外道とチョコレゐト" 												then return "CRYSTALDIUM (X)"				--Kusare gedou to chocolate
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "最終鬼畜妹フランドール・S" 												then return "BOOM RED "..Boom				--Saishuu kichiku imouto Flandre-S
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "最小三倍完全数" 													then return "CYBER (X2)"					--Saishou sanbai kanzensuu
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "スイーツはとまらない♪" 													then return "LOVE SWEETS (X)"				--Sweets wa tomaranai
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "すきなことだけでいいです" 												then return "BOOM BOOM BOOM (X)"			--Sukina koto dakede ii desu
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "タイガーランペイジ" 													then return "BOOM BOOM BOOM (X)"			--Tiger rampage
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "どきドキ バレンタイン" 													then return "LOVE SWEETS (X)"				--Dokidoki Valentine
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "毒占欲" 															then return "BOOM BOOM BOOM (X)"			--Dokusenyoku
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ナイト・オブ・ナイツ (Ryu☆Remix)" 										then return "BOOM BLUE "..Boom				--Night of Knights (Ryu Remix)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "熱情のサパデアード" 													then return "CLUB (X2)"						--Netsujou no zapadeado
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "び" 																then return "LOVE SWEETS (X)"				--Bi
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ヒカリユリイカ" 														then return "BOOM LIGHT (X2)"				--Hikari eureka
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ベビーステップ" 														then return "BOOM LIGHT (X2)"				--Baby step
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ホーンテッド★メイドランチ" 												then return "BOOM DARK "..Boom				--Haunted maid lunch
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "星屑の夜果て" 														then return "CRYSTALDIUM (X)"				--Hoshikuzu no yoru hate
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "未完成ノ蒸氣驅動乙女 (DDR Edition)" 									then return "BOOM YELLOW "..Boom			--Mikansei no jouki kudou otome (DDR Edition)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ミッドナイト☆WAR" 													then return "LOVE SWEETS (X)"				--Midnight WAR
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "未来（ダ）FUTURE" 													then return "DANCING RAYS (X)"				--Mirai (da) FUTURE	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "妄想感傷代償連盟" 													then return "DANCING RAYS (X)"				--Mousou kanshou daishou renmei
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ライアーダンス" 														then return "DANCING RAYS (X)"				--Liar dance
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ラブキラ☆スプラッシュ" 													then return "LOVE SWEETS (X)"				--Love kira splash
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ランカーキラーガール" 													then return "BOOM YELLOW "..Boom			--Ranker killer girl
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "令和" 															then return "BOOM LIGHT (X2)"				--Reiwa
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Ace out" 														then return "BOOM YELLOW "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Afterimage d'automne" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Alone" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ALPACORE" 														then return "BOOM BLUE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Avenger" 														then return "BOOM BLUE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BLACK JACKAL" 													then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BLSTR" 															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Bounce Trippy" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BUTTERFLY (20th Anniversary Mix)" 								then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CARTOON HEROES (20th Anniversary Mix)" 							then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Clarity" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Crazy Shuffle" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CROSS" 															then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CyberConnect" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Dead Heat" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DIGITAL LUV" 													then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "District of the Shadows" 										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DOWNER & UPPER" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Drop The Bounce" 												then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ENDLESS" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "F4SH10N" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Firestorm" 														then return "BOOM YELLOW "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Get On Da Floor" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Give Me" 														then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Glitch Angel" 													then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Golden Arrow" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HAVE YOU NEVER BEEN MELLOW (20th Anniversary Mix)" 				then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Helios" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Hunny Bunny" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I Love You" 													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I’m an Albatraoz" 												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "IRON HEART" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Lachryma《Re:Queen’M》" 											then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LEVEL UP" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LONG TRAIN RUNNIN' (20th Anniversary Mix)" 						then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Mythomane" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Neverland" 														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New Era" 														then return "BOOM YELLOW "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "New Rules" 														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "No Tears Left to Cry" 											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ORCA" 															then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Our Soul" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ΩVERSOUL" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Party Rock Anthem" 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Play Hard" 														then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Procyon" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Rampage Hero" 													then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Re:GENERATION" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Right Time Right Way" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Seta Para Cima↑↑" 												then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Silly Love" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Six String Proof" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SKY HIGH (20th Anniversary Mix)" 								then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Skywalking" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Small Steps" 													then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SODA GALAXY" 													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Something Just Like This (Alesso Remix) " 						then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Splash Gold" 													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Starlight in the Snow" 											then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Starry Sky" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Stay 4 Ever" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SWEET HOME PARTY" 												then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The History of the Future" 										then return "BOOM BLUE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The Light" 														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "The World Ends Now" 											then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "This Beat Is....." 												then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Toy Box Factory" 												then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "toy boxer" 														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Trill auf G" 													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Une mage blanche" 												then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "voltississimo" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Waiting" 														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "50th Memorial Songs -Beginning Story-" 							then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "50th Memorial Songs -Flagship medley-" 							then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "50th Memorial Songs -二人の時 ～under the cherry blossoms～-" 		then return "LOVE SWEETS (X)"	
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "50th Memorial Songs -The BEMANI History-" 						then return "CYBER (X2)"
	
----------------------------------------------------------------------------- DDR A20 PLUS ---------------------------------------------------------------------------
		
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "蒼が消えるとき"														then return "BOOM BOOM BOOM (X)"			--Ao ga kieru toki
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "アリスサイド・キャスリング"													then return "CRYSTALDIUM (X)"				--Alice side castling
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "鋳鉄の檻"															then return "BOOM BOOM BOOM (X)"			--Itetsu no pride
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "イノセントバイブル"														then return "BOOM BOOM BOOM (X)"			--Innocent bible
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ウソツキ横丁は雨模様"													then return "BOOM BOOM BOOM (X)"			--Usotsuki yokochou wa amemoyou
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "梅雪夜"															then return "CRYSTALDIUM (X)"				--Umeyukiyo
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "御伽噺に幕切れを"													then return "BOOM BOOM BOOM (X)"			--Otogibanashi ni makugire wo
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "彼方のリフレシア"														then return "BOOM LIGHT (X2)"				--Kanata no Reflesia
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "狂水一華"															then return "DANCING RAYS (X)"				--Kyousui ichika
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋"																then return "DANCING RAYS (X)"				--Koi
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ここからよろしく大作戦143"												then return "BOOM BOOM BOOM (X)"			--Koko kara yoroshiku daisakusen 143
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "逆さま♥シンデレラパレード"												then return "LOVE SWEETS (X)"				--Sakasama Cinderella parade
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "雑草魂なめんなよ！"													then return "BOOM LIGHT (X2)"				--Zassou tamashii namen na yo!
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "至上のラトゥーリア"													then return "BOOM BOOM BOOM (X)"			--Shijou no laturia
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "思想犯"															then return "BOOM BOOM BOOM (X)"			--Shisouhan
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "灼熱 Pt.2 Long Train Running"									then return "DANCING RAYS (X)"				--Shakunetsu Pt 2 Long Train Running
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "シル・ヴ・プレジデント"													then return "LOVE SWEETS (X)"				--S'il vous president
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "スーパー戦湯ババンバーン"												then return "BOOM LIGHT (X2)"				--Super sentou Babanburn
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "スカイクラッドの観測者"													then return "BOOM WHITE "..Boom				--Skyclad no kansokusha
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "世界の果てに約束の凱歌を -DDR Extended Megamix-"						then return "BOOM YELLOW "..Boom			--Sekai no hate ni yakusoku no gaika wo -DDR Extended Megamix-
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "追憶のアリア"														then return "BOOM LIGHT (X2)"				--Tsuioku no aria
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "東京神話"															then return "BOOM BOOM BOOM (X)"			--Tokyo shinwa
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "なだめスかし Negotiation"											then return "LOVE SWEETS (X)"				--Nadame sukashi Negotiation
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ノルエピネフリン"														then return "BOOM BOOM BOOM (X)"			--Norepinephrine
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "花は折りたし梢は高し"													then return "BOOM BOOM BOOM (X)"			--Hana wa oritashi kozue wa takashi
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ハラショー！おにぎりサーカス団☆"											then return "LOVE SWEETS (X)"				--Khorosho! Onigiri circus dan
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "春を告げる"														then return "BOOM BOOM BOOM (X)"			--Haru wo tsugeru
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "叛逆のディスパレート"													then return "BOOM BOOM BOOM (X)"			--Hangyaku no disparate
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ほしのつくりかた"														then return "CRYSTALDIUM (X)"				--Hoshi no tsukurikata
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "勇猛無比"															then return "BOOM BOOM BOOM (X)"			--YU-MOU-MU-HI
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ユメブキ"															then return "CYBER (X2)"					--Yumebuki
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ロキ(w/緒方恵美)"													then return "BOOM BOOM BOOM (X)"			--Roki (Megumi Ogata)
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AI"																then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ANTI ANTHEM"													then return "BOOM YELLOW "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Bang Pad(Werk Mix)"												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BITTER CHOCOLATE STRIKER"										then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "BRIDAL FESTIVAL !!!"											then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "City Never Sleeps"												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Come Back To Me" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "CONNECT-"														then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Crazy Hot"														then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DANCERUSH STARDOM ANTHEM" 										then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DEADLOCK -Out Of Reach-"										then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DeStRuCtIvE FoRcE" 												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DIGITALIZER"													then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Draw the Savage" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Evans"															then return "BOOM BLUE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Feidie"															then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GHOST KINGDOM"													then return "DAWN STREETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Globe Glitter"													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Going Hypersonic" 												then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Good Looking"													then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "GUILTY DIAMONDS"												then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HARD BRAIN"														then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Hella Deep"														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "High & Low"														then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Hyper Bomb" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HYPERDRIVE" 													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "HyperTwist" 													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I believe what you said"										then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "I Want To Do This Keep"											then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "If"																then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "In the past"													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Inner Spirit -GIGA HiTECH MIX-"									then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Jetcoaster Windy"												then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Jucunda Memoria"												then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Last Card" 														then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Last Twilight"													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LET'S CHECK YOUR LEVEL!"										then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Lightspeed" 													then return "BOOM YELLOW "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "LIKE A VAMPIRE"													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Midnight Amaretto" 												then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MOVE! (We Keep It Movin')"										then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MUTEKI BUFFALO"													then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Never See You Again"											then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Next Phase"														then return "BOOM BLUE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "No Life Queen [DJ Command Remix]"								then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ONYX"															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Our Love"														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PANIC HOLIC"													then return "BOOM DARK "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "paparazzi"														then return "CLUB (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PARTY ALL NIGHT(DJ KEN-BOW MIX)" 								then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Poppin' Soda"													then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Rave Accelerator" 												then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Realize"														then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Red Cape Theorem"												then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Riot of Color"													then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "ROOM"															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Run The Show" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Seize The Day"													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SHINY DAYS"														then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sparkle Smilin'"												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "STEP MACHINE" 													then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Step This Way"													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sweet Clock"													then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Sword of Vengeance"												then return "BOOM RED "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "take me higher" 												then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Taking It To The Sky (PLUS step)"								then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Together Going My Way"											then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Triple Cross"													then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Twinkle Wonderland" 											then return "BOOM LIGHT (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Uh-Oh"															then return "LOVE SWEETS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Vertigo"														then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "We're so Happy"													then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "X-ray binary"													then return "DANCING RAYS (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Yuni's Nocturnal Days"											then return "DANCING RAYS (X)"
		
----------------------------------------------------------------------------- OTHER SONGS 
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Re:Elemental Creation"											then return "BOOM WHITE "..Boom
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Haryu"															then return "CYBER (X2)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "dEKA"															then return "CRYSTALDIUM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "U.N. Owen Was Her"												then return "BOOM BOOM BOOM (X)"
		elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "You Goddamn Fish"												then return "BOOM LIGHT (X2)"
		
		else
			local RDS = math.random(1,7)
			if RDS == 1 then
				return "BOOM BOOM BOOM (X)"
			elseif RDS == 2 then
				return "BOOM LIGHT (X2)"
			elseif RDS == 3 then
				return "CRYSTALDIUM (X)"
			elseif RDS == 4 then
				return "CYBER (X2)"
			elseif RDS == 5 then
				return "DANCING RAYS (X)"
			elseif RDS == 6 then
				return "DAWN STREETS (X)"
			elseif RDS == 7 then
				return "LOVE SWEETS (X)"
			end;
		
		end;
----------------------------------------------------------------------------- OTHER OPTION
	
	elseif GetUserPref("OptionRowStage")=='RANDOM' then
		local RDS = math.random(1,23)
		if RDS == 1 then
			return "BOOM BLUE "..Boom
		elseif RDS == 2 then
			return "BOOM BOOM BOOM (X)"
		elseif RDS == 3 then
			return "BOOM DARK "..Boom
		elseif RDS == 4 then
			return "BOOM GREEN "..Boom
		elseif RDS == 5 then
			return "BOOM LIGHT (X2)"
		elseif RDS == 6 then
			return "BOOM RED "..Boom
		elseif RDS == 7 then
			return "BOOM WHITE "..Boom
		elseif RDS == 8 then
			return "BOOM YELLOW "..Boom
		elseif RDS == 9 then
			return "CLUB (X2)"
		elseif RDS == 10 then
			return "CRYSTALDIUM (X)"
		elseif RDS == 11 then
			return "CYBER (X2)"
		elseif RDS == 12 then
			return "DANCING RAYS (X)"
		elseif RDS == 13 then
			return "DAWN STREETS (X)"
		elseif RDS == 14 then
			return "LOVE SWEETS (X)"
		elseif RDS == 15 then
			return "BIG SCREEN (X2)"
		elseif RDS == 16 then
			return "REPLICANT (2014 MAX)"
		elseif RDS == 17 then
			return "REPLICANT (A ENDYMION)"
		elseif RDS == 18 then
			return "REPLICANT (A PERIOD)"
		elseif RDS == 19 then
			return "REPLICANT (X2 POSSESSION)"
		elseif RDS == 20 then
			return "REPLICANT (X2 VALKYRIE)"
		elseif RDS == 21 then
			return "REPLICANT (X2)"
		elseif RDS == 22 then
			return "VIDEO BLACK (X2)"
		elseif RDS == 23 then
			return "VIDEO WHITE (X2)"
		end;
	
	elseif GetUserPref("OptionRowStage")=='BOOM BLUE' then
		return "BOOM BLUE "..Boom
	elseif GetUserPref("OptionRowStage")=='BOOM BOOM' then
		return "BOOM BOOM BOOM (X)"
	elseif GetUserPref("OptionRowStage")=='BOOM DARK' then
		return "BOOM DARK "..Boom
	elseif GetUserPref("OptionRowStage")=='BOOM GREEN' then
		return "BOOM GREEN "..Boom
	elseif GetUserPref("OptionRowStage")=='BOOM LIGHT' then
		return "BOOM LIGHT (X2)"
	elseif GetUserPref("OptionRowStage")=='BOOM RED' then
		return "BOOM RED "..Boom
	elseif GetUserPref("OptionRowStage")=='BOOM WHITE' then
		return "BOOM WHITE "..Boom
	elseif GetUserPref("OptionRowStage")=='BOOM YELLOW' then
		return "BOOM YELLOW "..Boom
	elseif GetUserPref("OptionRowStage")=='CLUB' then
		return "CLUB (X2)"
	elseif GetUserPref("OptionRowStage")=='CRYSTALDIUM' then
		return "CRYSTALDIUM (X)"
	elseif GetUserPref("OptionRowStage")=='CYBER' then
		return "CYBER (X2)"
	elseif GetUserPref("OptionRowStage")=='DANCING RAYS' then
		return "DANCING RAYS (X)"
	elseif GetUserPref("OptionRowStage")=='DAWN STREETS' then
		return "DAWN STREETS (X)"
	elseif GetUserPref("OptionRowStage")=='LOVE SWEETS' then
		return "LOVE SWEETS (X)"
	elseif GetUserPref("OptionRowStage")=='MOVIE STAGE' then
		return "BIG SCREEN (X2)"
	elseif GetUserPref("OptionRowStage")=='REPLICANT DARK BLUE' then
		return "REPLICANT (2014 MAX)"
	elseif GetUserPref("OptionRowStage")=='REPLICANT DARK PURPLE' then
		return "REPLICANT (X2 VALKYRIE)"
	elseif GetUserPref("OptionRowStage")=='REPLICANT LIGHT BLUE' then
		return "REPLICANT (X2)"
	elseif GetUserPref("OptionRowStage")=='REPLICANT LIGHT GRAY' then
		return "REPLICANT (A PERIOD)"
	elseif GetUserPref("OptionRowStage")=='REPLICANT LIGHT PURPLE' then
		return "REPLICANT (X2 POSSESSION)"
	elseif GetUserPref("OptionRowStage")=='REPLICANT RED' then
		return "REPLICANT (A ENDYMION)"
	elseif GetUserPref("OptionRowStage")=='VIDEO DARK BLUE' then
		return "VIDEO BLACK (X2)"
	elseif GetUserPref("OptionRowStage")=='VIDEO LIGHT BLUE' then
		return "VIDEO WHITE (X2)"
	end;
----------------------------------------------------------------------------- END OF SONG LIST
end;
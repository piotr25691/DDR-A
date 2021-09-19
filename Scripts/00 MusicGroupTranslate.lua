function mySortGroupName(group)
	local ret="";
		if group == "DanceDanceRevolution 1stMIX" or group == "01 - DDR 1st" then
					ret="Version/DDR 1st";
				elseif group == "DanceDanceRevolution 2ndMIX" or group == "02 - DDR 2ndMIX" then
					ret="Version/2ndMIX";
				elseif group == "DanceDanceRevolution 3rdMIX + VER.Korea" or group == "DanceDanceRevolution 3rdMIX" or group == "03 - DDR 3rdMIX" then
					ret="Version/3rdMIX";
				elseif group == "DanceDanceRevolution 4thMIX" or group == "04 - DDR 4thMIX" then
					ret="Version/4thMIX";
				elseif group == "DanceDanceRevolution 5thMIX" or group == "05 - DDR 5thMIX" then
					ret="Version/5thMIX";
				elseif group == "DanceDanceRevolution 6thMIX MAX" or group == "06 - DDR MAX" then
					ret="Version/MAX";
				elseif group == "DanceDanceRevolution 7thMIX MAX2" or group == "07 - DDR MAX2" then
					ret="Version/MAX2";
				elseif group == "DanceDanceRevolution 8thMIX EXTREME" or group == "08 - DDR EXTREME" then
					ret="Version/EXTREME";
				elseif group == "DanceDanceRevolution SuperNOVA" or group == "09 - DDR SuperNOVA" then
					ret="Version/SuperNOVA";
				elseif group == "DanceDanceRevolution SuperNOVA2" or group == "10 - DDR SuperNOVA2" then
					ret="Version/SuperNOVA2";
				elseif group == "DanceDanceRevolution X" or group == "11 - DDR X" then
					ret="Version/X";
				elseif group == "DanceDanceRevolution X2" or group == "12 - DDR X2" then
					ret="Version/X2";
				elseif group == "DanceDanceRevolution X3" or group == "DanceDanceRevolution X3 VS 2ndMIX" or group == "13 - DDR X3 vs 2ndMIX" then
					ret="Version/X3 vs 2ndMIX";
				elseif group == "DDR 2013" or group == "14 - DDR 2013" then
					ret="Version/DDR 2013";
				elseif group == "DDR 2014" or group == "15 - DDR 2014" then
					ret="Version/DDR 2014";
				elseif group == "DDR A" or group == "16 - DDR A" then
					ret="Version/DDR A";
				elseif group == "00 - ORIGINAL SONG FILE"  then
					ret="Version/Edit"
				elseif group == "00A - DDR console Exclusive" then
					ret="Version/Consumer"
				else
					ret = group;
				end
	return ret;
end


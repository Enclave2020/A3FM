	// TimeTicker
	[] spawn {
		while {true} do {
			missionNameSpace setVariable ["FM_Time", Time, True];
			sleep 1;
		};
	};
	
	// Search stations
	FM_Stations = ["FM DISABLED"];
	FM_Station = [["", 0]];
	
	_stationAddons = "getText (_x >> 'addonRootClass') == 'FM_Core'" configClasses (configFile >> "cfgPatches");
	for "_i" from 0 to count _stationAddons - 1 do {
		_settings = getArray ((_stationAddons select _i) >> "stationInfo");
		FM_Stations pushBack (_settings select 0);
		FM_Station pushBack ["", 0];
		[_settings select 1, _i + 1] spawn FM_fnc_stationSim;
	};
	
	publicVariable "FM_Stations";
	publicVariable "FM_Station";
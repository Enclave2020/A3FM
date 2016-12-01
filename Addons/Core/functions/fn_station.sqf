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
	
	_stations = "true" configClasses (configFile >> "CfgStations");
	for "_i" from 0 to count _stations - 1 do {
		FM_Stations pushBack (getText (_stations select _i >> "name"));
		FM_Station pushBack ["", 0];
		[getNumber (_stations select _i >> "trackBegin"), _i + 1] spawn FM_fnc_stationSim;
	};
	
	publicVariable "FM_Stations";
	publicVariable "FM_Station";
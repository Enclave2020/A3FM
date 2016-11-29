	missionNameSpace setVariable ["FM_Stations", ["FM DISABLED", "IDEEE FM", "ANDREW FM"], True]; 
	missionNameSpace setVariable ["FM_Station", [["", 0], ["", 0], ["", 0]], True];
	
	// TICKER
	[] spawn {
		while {true} do {
			missionNameSpace setVariable ["FM_Time", Time, True];
			sleep 1;
		};
	};
	
	// STATION SIM
	_settings = [0, 100];
	for "_i" from 1 to count FM_Stations - 1 do {
		[(_settings select (_i - 1)), _i] spawn FM_fnc_stationSim;
	};
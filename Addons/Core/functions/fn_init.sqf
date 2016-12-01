if (hasInterface) then {
	waitUntil{player == player};
	player addEventHandler ["GetInMan", {[] spawn FM_fnc_inVehicle}];
	
	[33, [false, false, false], {
		False call FM_fnc_stationChange;
		}] call CBA_fnc_addKeyHandler;
	
	[34, [false, false, false], {
		True call FM_fnc_stationChange;
		}] call CBA_fnc_addKeyHandler;
};

if (isServer) then {
	[] spawn FM_fnc_station;
};
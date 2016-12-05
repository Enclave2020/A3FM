if (hasInterface) then {
	waitUntil{player == player};
	player addEventHandler ["GetInMan", {[] spawn FM_fnc_inVehicle}];
	
	[19, [false, false, false], {
		if (vehicle player != player) then {
			createDialog "radioGUI";
			call FM_fnc_guiUpdate;
		};
		}] call CBA_fnc_addKeyHandler;
};

if (isServer) then {
	[] spawn FM_fnc_station;
};
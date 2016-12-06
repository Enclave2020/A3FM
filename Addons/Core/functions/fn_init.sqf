if (hasInterface) then {
	waitUntil{player == player};
	player addEventHandler ["GetInMan", {[] spawn FM_fnc_inVehicle}];
	
	["A3FM", "open_radio_key", "Open radio GUI", {call FM_fnc_show}, "", [19, [false, false, false]]] call CBA_fnc_addKeybind;
};

if (isServer) then {
	[] spawn FM_fnc_station;
};
	params ["_raise"];
	if (vehicle player == player) exitWith {};
	if (player != driver vehicle player) exitWith {};
	
	_volume = vehicle player getVariable ["FM_Volume", 1];
	if (_raise) then {_volume = _volume + 0.1} else {_volume = _volume - 0.1};
	if (_volume > 2) then {_volume = 0};
	if (_volume < 0) then {_volume = 2};
	
	remoteExec ["FM_fnc_updateVolume"];
	vehicle player setVariable ["FM_Volume", _volume, True];
	call FM_fnc_guiUpdate;
	if (vehicle player == player) exitWith {};
	_volume = vehicle player getVariable ["FM_Volume", 1];
	0 fadeMusic _volume;
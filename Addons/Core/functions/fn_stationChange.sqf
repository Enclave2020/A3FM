	params ["_increasing"];
	if (vehicle player == player) exitWith {};
	
	_max = count (missionNameSpace getVariable ["FM_Stations", 0]) - 1;
	_current = vehicle player getVariable ["FM_Station", 0];
	
	if (_increasing) then {
		_current = _current + 1;
		_current = _current min _max; 
	} else {
		_current = _current - 1;
		_current = _current max 0;
	};
	
	vehicle player setVariable ["FM_Station", _current, True];
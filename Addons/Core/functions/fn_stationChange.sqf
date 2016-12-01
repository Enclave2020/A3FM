	params ["_increasing"];
	if (vehicle player == player) exitWith {};
	if (player != driver vehicle player) exitWith {};
	
	_max = count (missionNameSpace getVariable ["FM_Stations", 0]) - 1;
	_current = vehicle player getVariable ["FM_Station", 0];
	
	if (_increasing) then {
		_current = _current + 1;
		if (_current > _max) then {_current = 0};
	} else {
		_current = _current - 1;
		if (_current < 0) then {_current = _max};
	};
	
	vehicle player setVariable ["FM_Station", _current, True];
	params ["_begin", "_id"];
	
	_max = _begin;
	for "_i" from _begin to _begin + 100 do {
		if (("radio" + str _i) call FM_fnc_duration == 0) exitWith {};
		_max = _i;
	};
	_max = _max - _begin;
	
	_station = missionNameSpace getVariable ["FM_Station", []] select _id;
	while {true} do {
		_track = Format ["radio%1", _begin + (floor random _max)];
		_station = [_track, missionNameSpace getVariable ["FM_Time", 0]];
		_stations = missionNameSpace getVariable ["FM_Station", []];
		_stations set [_id, _station];
		missionNameSpace setVariable ["FM_Station", _stations, True];
		
		_duration = _track call FM_fnc_duration;
		sleep _duration - 1;
	};
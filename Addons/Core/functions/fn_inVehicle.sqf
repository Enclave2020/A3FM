	_radioStations = missionNameSpace getVariable "FM_Stations";
	_radioPlaying = 0;
	
	"Player in vehicle." call bis_fnc_log;
	
	while {vehicle player != player} do {
		// Get vehicle FM
		_radioStation = vehicle player getVariable ["FM_Station", 0];
		
		if (_radioStation != _radioPlaying) then {
			["Changing station from %1 to %2", _radioPlaying, _radioStation] call bis_fnc_logFormat;
			(_radioStations select _radioStation) call FM_fnc_stationShow;
			_radioTime = missionNameSpace getVariable ["FM_Time", 0];
			_radioTrack = missionNameSpace getVariable ["FM_Station", []] select _radioStation;
			_radioTimeOffset = _radioTime - (_radioTrack select 1);
			_radioTimeEnd = _radioTime + (((_radioTrack select 0) call FM_fnc_duration) - _radioTimeOffset);
			
			["FM Time: %1. End time: %2. Time offset: %3. Playing: %4", _radioTime, _radioTimeEnd, _radioTimeOffset, _radioTrack] call bis_fnc_logFormat;
			
			0 fadeMusic 0.6;
			playMusic [_radioTrack select 0, _radioTimeOffset];
			_radioPlaying = _radioStation;
			
			"Wait to music end..." call bis_fnc_log;
			waitUntil {
				sleep 0.33;
				_radioStation = vehicle player getVariable ["FM_Station", 0];
				_radioTime = missionNameSpace getVariable ["FM_Time", 0];
				((_radioStation != _radioPlaying) or (_radioTime > _radioTimeEnd))
			};
			"Track ended!" call bis_fnc_log;
			
			_radioPlaying = -1;
			playMusic "";
		};
		sleep 0.33;
	};
	playMusic "";
	"Player left vehicle." call bis_fnc_log;
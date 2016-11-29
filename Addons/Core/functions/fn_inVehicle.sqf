	_radioStations = missionNameSpace getVariable "FM_Stations";
	_radioPlaying = 0;
	while {vehicle player != player} do {
		// Get vehicle FM
		_radioStation = vehicle player getVariable ["FM_Station", 0];
		
		if (_radioStation != _radioPlaying) then {
			(_radioStations select _radioStation) call FM_fnc_stationShow;
			_radioTime = missionNameSpace getVariable ["FM_Time", 0];
			_radioTrack = missionNameSpace getVariable ["FM_Station", []] select _radioStation;
			_radioTimeLeft = _radioTime - (_radioTrack select 1);
			_radioTimeEnd = _radioTime + ((_radioTrack select 0) call FM_fnc_duration);
				
			playMusic [_radioTrack select 0, _radioTimeLeft];
			_radioPlaying = _radioStation;
			
			waitUntil {
				sleep 0.1;
				_radioStation = vehicle player getVariable ["FM_Station", 0];
				_radioTime = missionNameSpace getVariable ["FM_Time", 0];
				(_radioStation != _radioPlaying) or (_radioTime > _radioTimeEnd)
			};
			
			_radioPlaying = -1;
			playMusic "";
		};
		sleep 0.1;
	};
	playMusic "";
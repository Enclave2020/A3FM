	if (isNull (uiNameSpace getVariable ["FM_Gui", objNull])) exitWith {};
	
	
	_radio = FM_Stations select (vehicle player getVariable ["FM_Station", 0]);
	_volume = vehicle player getVariable ["FM_Volume", 1];
	
	disableSerialization;
	_display = uiNameSpace getVariable "FM_Gui";
	(_display displayCtrl 1100) ctrlSetStructuredText parseText _radio;
	(_display displayCtrl 1101) ctrlSetStructuredText parseText Format ["%1%2", round (_volume * 100), "%"];
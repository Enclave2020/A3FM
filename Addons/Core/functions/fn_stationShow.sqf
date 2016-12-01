	params ["_text"];
	
	if (isNull (uiNameSpace getVariable ["FMHUD", objNull])) then {1415 cutRsc ["FMHUD", "PLAIN"]};
	
	disableSerialization;
	_display = uiNameSpace getVariable "FMHUD";
	_radio = _display displayCtrl 1001;
	_radio ctrlSetStructuredText parseText _text;
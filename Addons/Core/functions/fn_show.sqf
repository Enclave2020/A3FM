	if ((vehicle player != player) and (isNull (uiNameSpace getVariable ["FM_Gui", objNull]))) then {
		createDialog "radioGUI";
		call FM_fnc_guiUpdate;
	};
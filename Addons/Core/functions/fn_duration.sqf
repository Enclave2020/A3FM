	params ["_music"];
	getNumber (configFile >> "cfgMusic" >> _music >> "duration")
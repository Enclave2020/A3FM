#include "defines.hpp"
#include "radioGUI.hpp"

class CfgPatches 
{
	class FM {
		units[] = {};
	};
};

class CfgFunctions
{
	class FM
	{
		class Main
		{
			file = "\FM\functions";
			class inVehicle {};
			class station {};
			class duration {};
			class guiUpdate {};
			class stationChange {};
			class stationSim {};
			class vehicleVolume {};
			class show {};
			class updateVolume {};
			class init {postInit = 1;};
		};
	};
};
#include "defines.hpp"
#include "hud.hpp"

class CfgPatches 
{
	class FM_Core {};
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
			class stationShow {};
			class stationChange {};
			class stationSim {};
			class init {postInit = 1;};
		};
	};
};
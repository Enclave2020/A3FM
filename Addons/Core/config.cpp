#include "defines.hpp"
#include "hud.hpp"

class CfgPatches 
{
	class FM_Core
	{
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F"};
		requiredVersion = 0.1;
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
			class stationShow {};
			class stationChange {};
			class stationSim {};
			class init {postInit = 1};
		};
	};
};
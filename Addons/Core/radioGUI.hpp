/* #Qetabe
$[
	1.063,
	["RadioGUI",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1200,"",[1,"radio.paa",["0.207742 * safezoneW + safezoneX","0.486 * safezoneH + safezoneY","0.584516 * safezoneW","0.476 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1100,"",[1,"HELLO WORLD",["0.521919 * safezoneW + safezoneX","0.724 * safezoneH + safezoneY","0.168048 * safezoneW","0.042 * safezoneH"],[-1,-1,-1,-1],[0,-1,-1,0],[-1,-1,-1,-1],"","-1"],[]],
	[1201,"",[1,"#(argb,8,8,3)color(1,1,1,1)",["0.405016 * safezoneW + safezoneX","0.64 * safezoneH + safezoneY","0.0219193 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Raise volume.","-1"],[]],
	[1202,"",[1,"#(argb,8,8,3)color(1,1,1,1)",["0.405016 * safezoneW + safezoneX","0.794 * safezoneH + safezoneY","0.0219193 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Lower volume.","-1"],[]],
	[1203,"",[1,"#(argb,8,8,3)color(1,1,1,1)",["0.456161 * safezoneW + safezoneX","0.71 * safezoneH + safezoneY","0.0219193 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Next station.","-1"],[]],
	[1204,"",[1,"#(argb,8,8,3)color(1,1,1,1)",["0.353871 * safezoneW + safezoneX","0.71 * safezoneH + safezoneY","0.0219193 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Previous station.","-1"],[]]
]
*/

class RadioGUI
{
    idd = 1500;
    movingEnable = true;
	onLoad = "uiNamespace setVariable ['FM_Gui', _this select 0]";
	onUnload = "uiNamespace setVariable ['FM_Gui', nil]";
    class Controls
    {
		class backGround: RscPicture
		{
			idc = 1200;
			text = "\FM\radio.paa";
			x = 0.207742 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.584516 * safezoneW;
			h = 0.476 * safezoneH;
		};
		class radioTitle: RscStructuredText
		{
			idc = 1100;
			text = "FM DISABLED";
			x = 0.521919 * safezoneW + safezoneX;
			y = 0.69 * safezoneH + safezoneY;
			w = 0.168048 * safezoneW;
			h = 0.042 * safezoneH;
			colorBackground[] = {0,-1,-1,0};
			class Attributes{
				font = "EtelkaNarrowMediumPro";
				color = "#FFFFFF";
				align = "CENTER";
				valign = "top";
				shadow = false;
				shadowColor = "#000000";
				underline = false;
				size = "1";
			}; 
		};
		class volume: RscStructuredText
		{
			idc = 1101;
			text = "100%";
			x = 0.521919 * safezoneW + safezoneX;
			y = 0.75 * safezoneH + safezoneY;
			w = 0.19 * safezoneW;
			h = 0.042 * safezoneH;
			colorBackground[] = {0,-1,-1,0};
			class Attributes{
				font = "EtelkaNarrowMediumPro";
				color = "#FFFFFF";
				align = "RIGHT";
				valign = "top";
				shadow = false;
				shadowColor = "#000000";
				underline = false;
				size = "0.7";
			}; 
		};
		class raiseVolume: RscStructuredText
		{
			idc = 1201;
			x = 0.405016 * safezoneW + safezoneX;
			y = 0.64 * safezoneH + safezoneY;
			w = 0.0219193 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Raise volume.";
			onMouseButtonDown = "True call FM_fnc_vehicleVolume;";
		};
		class lowerVolume: RscStructuredText
		{
			idc = 1202;
			x = 0.405016 * safezoneW + safezoneX;
			y = 0.794 * safezoneH + safezoneY;
			w = 0.0219193 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Lower volume.";
			onMouseButtonDown = "False call FM_fnc_vehicleVolume;";
		};
		class nextStation: RscStructuredText
		{
			idc = 1203;
			x = 0.456161 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.0219193 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Next station.";
			onMouseButtonDown = "True call FM_fnc_stationChange";
		};
		class previousStation: RscStructuredText
		{
			idc = 1204;
			x = 0.353871 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.0219193 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Previous station.";
			onMouseButtonDown = "False call FM_fnc_stationChange";
		};
    };
};
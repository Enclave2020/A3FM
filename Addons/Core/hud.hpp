class RscTitles
{
    class FMHUD
    {
		idd = 1415;
		fadeOut = 1;
		fadeIn = 1;
		duration = 5;
		onLoad = "uiNamespace setVariable ['FMHUD', _this select 0]";
		onUnload = "uiNamespace setVariable ['FMHUD', nil]";
		class Controls {
			class structuredText
			{
				access = 0;
				type = 13;
				idc = 1001;
				style = 0x00;
				lineSpacing = 1;
				x = safeZoneX + safeZoneW * 0.005;
				y = safeZoneY + safeZoneH - 0.1;
				w = safeZoneW * 0.5; 
				h = 0.1;
				size = 0.020;
				colorBackground[] = {0,0,0,0};
				colorText[] = {1,1,1,1};
				text = "";
				font = "PuristaSemiBold";
				class Attributes {
					font = "PuristaSemiBold";
					color = "#FFFFFF";
					align = "LEFT";
					valign = "top";
					shadow = false;
					shadowColor = "#000000";
					underline = false;
					size = "4";
				}; 
			};
		};
	};
};
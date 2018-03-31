{
	{
		//_x setDamage 0.95; //old code
		[_x, FALSE] call BIS_fnc_switchLamp; //1.64 code
	}foreach(getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition") nearObjects [_x,20000]);
}foreach[
	"Land_LightHouse_F",
	"Land_Lighthouse_small_F",
	"Land_LampAirport_F",
	"Land_LampDecor_F",
	"Land_LampHalogen_F",
	"Land_LampHarbour_F",
	"Land_LampShabby_F",
	"Land_LampStreet_F",
	"Land_LampStreet_small_F",
	"Land_FloodLight_F",
	"Land_LampStadium_F",
	"Land_LampSolar_F",
	"Land_PortableLight_single_F",
	"Lamps_Base_F",
	"PowerLines_base_F",
	"PowerLines_Small_base_F",
	"Land_PowerPoleWooden_F",
	"Land_PowerPoleWooden_L_F",
	"Land_PowerPoleWooden_small_F",
	"Land_fs_roof_F",
	"Land_fs_sign_F",
	"Land_NavigLight",
	"Land_NavigLight_3_F",
	"Land_Flush_Light_green_F",
	"Land_Flush_Light_red_F",
	"Land_Flush_Light_yellow_F",
	"Land_runway_edgelight",
	"Land_runway_edgelight_blue_F",
	"Land_Flush_Light_green_F",
	"Land_Flush_Light_red_F",
	"Land_Flush_Light_yellow_F",
	"Land_Runway_PAPI",
	"Land_Runway_PAPI_2",
	"Land_Runway_PAPI_3",
	"Land_Runway_PAPI_4",
	"Land_PortableHelipadLight_01_F",
	"PortableHelipadLight_01_blue_F",
	"PortableHelipadLight_01_green_F",
	"PortableHelipadLight_01_red_F",
	"PortableHelipadLight_01_white_F",
	"PortableHelipadLight_01_yellow_F",
	"Land_LampAirport_off_F",
	"Land_LampDecor_off_F",
	"Land_LampHalogen_off_F",
	"Land_LampHarbour_off_F",
	"Land_LampShabby_off_F",
	"Land_LampSolar_off_F",
	"Land_LampStreet_off_F",
	"Land_LampStreet_small_off_F"

];




/* these are apparently on client side... they don't make much difference anyway
{   
	{    
		_x setDamage 1;   
	}foreach(getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition") nearObjects [_x,20000]);
}foreach["Land_runway_edgelight","Land_Flush_Light_yellow_F","Land_Flush_Light_green_F","Land_NavigLight"];
*/
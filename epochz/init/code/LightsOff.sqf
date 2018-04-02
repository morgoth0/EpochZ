{
	{
		//_x setDamage 0.95; //old code
		[_x, false] call BIS_fnc_switchLamp; //1.64 code
	}foreach(getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition") nearObjects [_x,20000]);
}foreach[
	// altis start
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
	"Land_Flush_Light_red_F",
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
	"Land_LampStreet_small_off_F",
	// altis end
	// redux start
	"Land_chz_jupiter_fence_light",
	"Land_roadbarrier_light",
	"RoadCone_L_F",
	"Land_Lighthouse_small_F",
	"Land_LightHouse_F",
	"Land_NAV_Lighthouse2",
	"Land_NAV_Lighthouse",
	"Land_Majak",
	"Land_Majak2",
	"Land_PowLines_WoodL",
	"Land_Stoplight02",
	"Land_Stoplight01",
	"Land_FloodLight_F",
	"Red_Light_EP1",
	"Red_Light_Blinking_EP1",
	"Misc_Wall_lamp",
	"Land_lamp_1",
	"Land_lamp_2",
	"Land_lamp_3",
	"Land_lamp_4",
	"Land_lamp_5",
	"Land_lamp_6",
	"Land_lamp_7",
	"Land_lamp_8",
	"Land_lamp_9",
	"Land_lamp_10",
	"Land_lamp_11",
	"Land_lamp_12",
	"Land_lamp_13",
	"Land_lamp_14",
	"Land_lamp_15",
	"Land_lamp_16",
	"Land_lamp_17",
	"Land_lamp_18",
	"Land_lamp_19",
	"Land_PowerPoleWooden_L_F",
	"Land_Lampa_ind_b",
	"Land_Lampa_ind",
	"Land_Lampa_ind_zebr",
	"Land_Lampa_cut",
	"Land_Lampa_sidl_3",
	"Land_Lampa_sidl_2",
	"Land_Lampadrevo",
	"Land_Vo_seda",
	"Land_Tlampac_vo_seda",
	"Land_Vo_zlut",
	"Land_Lampa_valec",
	"Land_Lampa_vysoka",
	"Land_PowLines_ConcL",
	"Land_PowLines_Conc2L_EP1"
	// redux end

];




/* these are apparently on client side... they don't make much difference anyway
{   
	{    
		_x setDamage 1;   
	}foreach(getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition") nearObjects [_x,20000]);
}foreach["Land_runway_edgelight","Land_Flush_Light_yellow_F","Land_Flush_Light_green_F","Land_NavigLight"];
*/

// EpochZ 1.0 by Grahame, nAtOeD and Drokz //
// Based on ExileZ 2.0 by Patrix87 of http:\\multi-jeux.quebec //
// Incorporates code by rvg?! and Richie to generate the heli crash sites

sleep 1;

diag_log "\\\ --- Starting EpochZ 1.0 --- ///";

//Set Ryanzombies public variables

if (_Ryanzombieshealth >= 0) then 
{
	Ryanzombieshealth = _Ryanzombieshealth;
	publicVariable "Ryanzombieshealth";
};

if (_Ryanzombieshealthdemon >= 0) then 
{
	Ryanzombieshealthdemon = _Ryanzombieshealthdemon;
	publicVariable "Ryanzombieshealthdemon";
};

if (_Ryanzombiesattackspeed >= 0) then 
{
	Ryanzombiesattackspeed = _Ryanzombiesattackspeed;
	publicVariable "Ryanzombiesattackspeed";
};

if (_Ryanzombiesattackdistance >= 0) then 
{
	Ryanzombiesattackdistance = _Ryanzombiesattackdistance;
	publicVariable "Ryanzombiesattackdistance";
};

if (_Ryanzombiesattackstrenth >= 0) then 
{
	Ryanzombiesattackstrenth = _Ryanzombiesattackstrenth;
	publicVariable "Ryanzombiesattackstrenth";
};

if (_Ryanzombiesdamage >= 0) then 
{
	Ryanzombiesdamage = _Ryanzombiesdamage;
	publicVariable "Ryanzombiesdamage";
};

if (_Ryanzombiesdamagecar >= 0) then 
{
	Ryanzombiesdamagecar = _Ryanzombiesdamagecar;
	publicVariable "Ryanzombiesdamagecar";
};

if (_Ryanzombiesdamageair >= 0) then 
{
	Ryanzombiesdamageair = _Ryanzombiesdamageair;
	publicVariable "Ryanzombiesdamageair";
};

if (_Ryanzombiesdamagetank >= 0) then 
{
	Ryanzombiesdamagetank = _Ryanzombiesdamagetank;
	publicVariable "Ryanzombiesdamagetank";
};

if (_Ryanzombiesdamagecarstrenth >= 0) then 
{
	Ryanzombiesdamagecarstrenth = _Ryanzombiesdamagecarstrenth;
	publicVariable "Ryanzombiesdamagecarstrenth";
};

if (_Ryanzombiesdamageairstrenth >= 0) then 
{
	Ryanzombiesdamageairstrenth = _Ryanzombiesdamageairstrenth;
	publicVariable "Ryanzombiesdamageairstrenth";
};

if (_Ryanzombiesdamagetankstrenth >= 0) then 
{
	Ryanzombiesdamagetankstrenth = _Ryanzombiesdamagetankstrenth;
	publicVariable "Ryanzombiesdamagetankstrenth";
};

if (_Ryanzombiescanthrow >= 0) then 
{
	Ryanzombiescanthrow = _Ryanzombiescanthrow;
	publicVariable "Ryanzombiescanthrow";
};

if (_Ryanzombiescanthrowtank >= 0) then 
{
	Ryanzombiescanthrowtank = _Ryanzombiescanthrowtank;
	publicVariable "Ryanzombiescanthrowtank";
};

if (_Ryanzombiescanthrowdistance >= 0) then 
{
	Ryanzombiescanthrowdistance = _Ryanzombiescanthrowdistance;
	publicVariable "Ryanzombiescanthrowdistance";
};

if (_Ryanzombiescanthrowdemon >= 0) then 
{
	Ryanzombiescanthrowdemon = _Ryanzombiescanthrowdemon;
	publicVariable "Ryanzombiescanthrowdemon";
};

if (_Ryanzombiescanthrowtankdemon >= 0) then 
{
	Ryanzombiescanthrowtankdemon = _Ryanzombiescanthrowtankdemon;
	publicVariable "Ryanzombiescanthrowtankdemon";
};

if (_Ryanzombiescanthrowdistancedemon >= 0) then 
{
	Ryanzombiescanthrowdistancedemon = _Ryanzombiescanthrowdistancedemon;
	publicVariable "Ryanzombiescanthrowdistancedemon";
};

if (_ryanzombiesdisablemoaning >= 0) then 
{
	ryanzombiesdisablemoaning = _ryanzombiesdisablemoaning;
	publicVariable "ryanzombiesdisablemoaning";
};

if (_ryanzombiesdisableaggressive >= 0) then 
{
	ryanzombiesdisableaggressive = _ryanzombiesdisableaggressive;
	publicVariable "ryanzombiesdisableaggressive";
};

if (_ryanzombiescivilianattacks >= 0) then 
{
	ryanzombiescivilianattacks = _ryanzombiescivilianattacks;
	publicVariable "ryanzombiescivilianattacks";
};

if (_Ryanzombieslogicroam >= 0) then 
{
	Ryanzombieslogicroam = _Ryanzombieslogicroam;
	publicVariable "Ryanzombieslogicroam";
};

if (_Ryanzombieslogicroamdemon >= 0) then 
{
	Ryanzombieslogicroamdemon = _Ryanzombieslogicroamdemon;
	publicVariable "Ryanzombieslogicroamdemon";
};

if (_Ryanzombiescanthrowtankdistance >= 0) then 
{
	Ryanzombiescanthrowtankdistance = _Ryanzombiescanthrowtankdistance;
	publicVariable "Ryanzombiescanthrowtankdistance";
};

if (_Ryanzombiescanthrowtankdistancedemon >= 0) then 
{
	Ryanzombiescanthrowtankdistancedemon = _Ryanzombiescanthrowtankdistancedemon;
	publicVariable "Ryanzombiescanthrowtankdistancedemon";
};

if (_ryanzombiesdisablebleeding >= 0) then 
{
	ryanzombiesdisablebleeding = _ryanzombiesdisablebleeding;
	publicVariable "ryanzombiesdisablebleeding";
};

if (_ryanzombiesstartinganim >= 0) then 
{
	ryanzombiesstartinganim = _ryanzombiesstartinganim;
	publicVariable "ryanzombiesstartinganim";
};

if (_ryanzombieslimit >= 0) then 
{
	ryanzombieslimit = _ryanzombieslimit;
	publicVariable "ryanzombieslimit";
};

if (_Ryanzombiesjump >= 0) then 
{
	Ryanzombiesjump = _Ryanzombiesjump;
	publicVariable "Ryanzombiesjump";
};

if (_Ryanzombiesjumpdemon >= 0) then 
{
	Ryanzombiesjumpdemon = _Ryanzombiesjumpdemon;
	publicVariable "Ryanzombiesjumpdemon";
};

if (_Ryanzombiesfeed >= 0) then 
{
	Ryanzombiesfeed = _Ryanzombiesfeed;
	publicVariable "Ryanzombiesfeed";
};

if (_Ryanzombiesfeeddemon >= 0) then 
{
	Ryanzombiesfeeddemon = _Ryanzombiesfeeddemon;
	publicVariable "Ryanzombiesfeeddemon";
};

if (_Ryanzombiesinfection >= 0) then 
{
	Ryanzombiesinfection = _Ryanzombiesinfection;
	publicVariable "Ryanzombiesinfection";
};

if (_ryanzombiesinfectedchance >= 0) then 
{
	ryanzombiesinfectedchance = _ryanzombiesinfectedchance;
	publicVariable "ryanzombiesinfectedchance";
};

if (_ryanzombiesinfectedrate >= 0) then 
{
	ryanzombiesinfectedrate = _ryanzombiesinfectedrate;
	publicVariable "ryanzombiesinfectedrate";
};

if (_ryanzombiesinfectedsymptoms >= 0) then 
{
	ryanzombiesinfectedsymptoms = _ryanzombiesinfectedsymptoms;
	publicVariable "ryanzombiesinfectedsymptoms";
};

if (_ryanzombiesinfecteddeath >= 0) then 
{
	ryanzombiesinfecteddeath = _ryanzombiesinfecteddeath;
	publicVariable "ryanzombiesinfecteddeath";
};

if (_ryanzombiesantivirusduration >= 0) then 
{
	ryanzombiesantivirusduration = _ryanzombiesantivirusduration;
	publicVariable "ryanzombiesantivirusduration";
};

if (_ryanzombiesmovementspeedwalker >= 0) then 
{
	ryanzombiesmovementspeedwalker = _ryanzombiesmovementspeedwalker;
	publicVariable "ryanzombiesmovementspeedwalker";
};

if (_ryanzombiesmovementspeedslow >= 0) then 
{
	ryanzombiesmovementspeedslow = _ryanzombiesmovementspeedslow;
	publicVariable "ryanzombiesmovementspeedslow";
};

if (_ryanzombiesmovementspeedmedium >= 0) then 
{
	ryanzombiesmovementspeedmedium = _ryanzombiesmovementspeedmedium;
	publicVariable "ryanzombiesmovementspeedmedium";
};

if (_ryanzombiesmovementspeedfast >= 0) then 
{
	ryanzombiesmovementspeedfast = _ryanzombiesmovementspeedfast;
	publicVariable "ryanzombiesmovementspeedfast";
};

if (_ryanzombiesmovementspeeddemon >= 0) then 
{
	ryanzombiesmovementspeeddemon = _ryanzombiesmovementspeeddemon;
	publicVariable "ryanzombiesmovementspeeddemon";
};

if (_ryanzombiesmovementspeedspider >= 0) then 
{
	ryanzombiesmovementspeedspider = _ryanzombiesmovementspeedspider;
	publicVariable "ryanzombiesmovementspeedspider";
};

if (_ryanzombiesmovementspeedcrawler >= 0) then 
{
	ryanzombiesmovementspeedcrawler = _ryanzombiesmovementspeedcrawler;
	publicVariable "ryanzombiesmovementspeedcrawler";
};

//compile code
CreateTriggers = compile preprocessFile "epochz\init\code\CreateTriggers.sqf";
TriggerLoop = compile preprocessFile "epochz\init\code\TriggerLoop.sqf";
HarassingZombiesLoop = compile preprocessFile "epochz\init\code\HarassingZombiesLoop.sqf";
InitGroup = compile preprocessFile "epochz\init\code\InitGroup.sqf";
SpawnZombie = compile preprocessFile "epochz\init\code\SpawnZombie.sqf";
ZMPKilled = compile preprocessFile "epochz\init\code\MPKilled.sqf";
Safezone = compile preprocessFile "epochz\init\code\Safezone.sqf";
GetRandomLocation = compile preprocessFile "epochz\init\code\GetRandomLocation.sqf";
SpawnZombie = compile preprocessFile "epochz\init\code\SpawnZombie.sqf";
VerifyLocation = compile preprocessFile "epochz\init\code\VerifyLocation.sqf";
HordeLoop = compile preprocessFile "epochz\init\code\HordeLoop.sqf";
ZombieDeleter = compile preprocessFile "epochz\init\code\ZombieDeleter.sqf";
TurnTheLightsOff = compile preprocessFile "epochz\init\code\LightsOff.sqf";

//Exile vars
MaxTerritoryRange = getNumber (missionConfigFile >> "CfgTerritories" >> "maximumRadius");

fn_rnd_num = {
	_low = _this select 0;
	_high = _this select 1; 
	_calc = _high - _low;
	_rnd_num = round(random _calc) + _low;

	_rnd_num
};


//Create Triggers
if (UseTriggers) then
{
	{
		_useThisTrigger = _x select 0;
		_triggerPositions = _x select 1;
		_heli_crashes = _x select 18;
		if (_useThisTrigger) then {
			
			if (_heli_crashes) then {
				_currentTrigger = _x;
				_zgroup = _currentTrigger select 13;
				_triggerPositions = [];
				if (Debug) then {
					Diag_log Format["EpochZ 1.0: Compounding Zombie Group Weight, Selected Group Trigger Index : %1",_forEachIndex];
				};
				_count = 0;
				{
					_count = _count + (_x select 1);
					if (Debug) then {
						Diag_log Format["EpochZ 1.0: Zombie Type Index : %1		Weight : %2		Compound Weight Value : 	%3",_forEachIndex,_x select 1,_count];
					};
					(_zgroup select _forEachIndex) set [1,_count];
				}foreach (_zgroup);

				_size = getNumber (configFile >> "CfgWorlds" >> worldName >> "MapSize");

				epochz_mapcenter_pos = [_size/2,_size/2,0];

				_crash_amount = epochz_crashsites call fn_rnd_num;

				for "_crashsites" from 1 to _crash_amount do {
					_loot_amount = epochz_crashsite_loot call fn_rnd_num;
		
					_crashpos = [epochz_mapcenter_pos, 100, 7000,15,0,30,0] call BIS_fnc_findSafePos;
		
					epochz_wrecks call BIS_fnc_arrayshuffle;
					_crashObj = selectRandom epochz_wrecks;
		
					_crashObj_final = _crashObj createVehicle _crashpos;
		
					_fire = "test_EmptyObjectForFireBig" createVehicle _crashpos;
					_fire attachto [_crashObj_final, [0,0,-1]];  
		
					_crashObj_final setVariable ["LAST_CHECK", (diag_tickTime + 14400)];
		
					for "_crashloot" from 1 to _loot_amount do {
						_lootpos = [_crashpos,2,10,0,0,30,0] call BIS_fnc_findSafePos;
			
						_crate0 = createVehicle ["groundWeaponHolder", _lootpos, [], 0, "can_collide"];
					
						epochz_guns call BIS_fnc_arrayshuffle;
						_lootObj = selectRandom epochz_guns;
			
						_ammo = getarray(configFile >> "cfgWeapons" >> _lootObj >> "magazines" );
						
						_crate0 addItemCargoGlobal [_lootobj, 1]; 
						_crate0 addItemCargoGlobal [_ammo select 0, 3];
			
						_crate0 setVariable ["LAST_CHECK", (diag_tickTime + 14400)];
					};
		
					diag_log format ["EpochZ 1.0: Crashsite at %1 with %2 lootpiles ",_crashpos,_loot_amount];

					_crashpos set [2, 200]; 
					_triggerPositions pushback _crashpos;
				};

				//Create trigger
				{nul = [_x,_CurrentTrigger] spawn CreateTriggers;
				sleep 0.01;
				}foreach (_triggerPositions);
			} else {
				//Weight Zombie Group
				_currentTrigger = _x;
				_zgroup = _currentTrigger select 13;
				if (Debug) then {
					Diag_log Format["EpochZ 1.0: Compounding Zombie Group Weight, Selected Group Trigger Index : %1",_forEachIndex];
				};
				_count = 0;
				{
					_count = _count + (_x select 1);
					if (Debug) then {
						Diag_log Format["EpochZ 1.0: Zombie Type Index : %1		Weight : %2		Compound Weight Value : 	%3",_forEachIndex,_x select 1,_count];
					};
					(_zgroup select _forEachIndex) set [1,_count];
				}foreach (_zgroup);

				//Create triggers
				{nul = [_x,_CurrentTrigger] spawn CreateTriggers;
				sleep 0.01;
				}foreach (_triggerPositions);
			};
		};
	}foreach Triggers;
};
//No need to define SafeZones anymore..
//Create Triggers for safezones

{nul = [_x] spawn Safezone;
	sleep 0.01;
}foreach SafeZonePositions;

//Enable the HarassingZombies
if (UseHarassingZombies) then {
	nul = [HSet] spawn HarassingZombiesLoop;
};


//Enable the Horde
if (UseHorde) then {
	nul = [HordeSet] spawn HordeLoop;
};

if (LightsOff) then {
	nul = [] spawn TurnTheLightsOff;
};


sleep 1;

diag_log "/// --- EpochZ 1.0 Started --- \\\";

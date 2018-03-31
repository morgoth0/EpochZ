// EpochZ 1.0 by Grahame, nAtOeD and Drokz //
// Based on ExileZ 2.0 by Patrix87 of http:\\multi-jeux.quebec //

private ["_device","_zombie","_zombiePos","_zombieClass","_distanceDeath","_distance","_radius","_avoidTerritory","_flags"];

jammer_in_range = {
	private["_config","_position","_result","_jammerRange","_jammers","_distance","_radius"];
	_position = _this;
	_result = false;

	_config = 'CfgEpochClient' call EPOCH_returnConfig;
	_jammerRange = getNumber(_config >> "buildingJammerRange");

	_jammers = _position nearObjects ["PlotPole_EPOCH", _jammerRange * 2];
	if !(_jammers isEqualTo []) then
	{
		{
			_distance = (getPosATL _x) distance2D _position;
			if (_distance <= _jammerRange) exitWith 
			{
				_result = true;
			};
		}	
		forEach _jammers;
	};
	_result
};

_zombie = _this select 0;
_avoidTerritory = _this select 1;
_zombieClass = typeOf _zombie;
_distanceDeath = false;

while {alive _zombie} do {
	sleep MaxTime;
	_zombiePos = getPos _zombie;
	
	//check for the absence of players
	if (({isplayer _x} count (_zombiePos nearEntities MaxDistance) == 0) && alive _zombie) then {
		_zombie setdamage 1;
		sleep 5;
		deleteVehicle _zombie;
		_distanceDeath = true;
	};
	
	//check for safe zones
	//if (RemoveZfromTraders && alive _zombie) then
	//{
	//	if ((getPosATL _zombie) call ExileClient_util_world_isInTraderZone) then 
	//	{
	//		_zombie setdamage 1;
	//		sleep 5;
	//		deleteVehicle _zombie;
	//		_distanceDeath = true;
	//	};
	//};
	
	//check for flags
	//if ((RemoveZfromTerritory || _avoidTerritory) && alive _zombie) then
	//{
	//	if ((getPosATL _zombie) call jammer_in_range) then 
	//	{
	//		_zombie setdamage 1;
	//		sleep 5;
	//		deleteVehicle _zombie;
	//		_distanceDeath = true;
	//	};
	//};
	
};

if !(_distanceDeath) then 
{
	sleep CorpseDeleteDelay;
	deleteVehicle _zombie;
};

if (Debug) then {
	diag_log format["EpochZ 1.0: Removing 1 Zombie	|	Position : %1	|	Class : %2",_zombiePos,_zombieClass];
};

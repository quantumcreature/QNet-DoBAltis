#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

//switch(__GETC__(life_coplevel)) do
//{
//	case 1: {life_paycheck = life_paycheck + 10000;};//cadet
//	case 2: {life_paycheck = life_paycheck + 15000;};//patrolman
//	case 3: {life_paycheck = life_paycheck + 20000;};//sergeant
//	case 4: {life_paycheck = life_paycheck + 25000;};//lt
//	case 5: {life_paycheck = life_paycheck + 30000;};//
//	case 6: {life_paycheck = life_paycheck + 35000;};
//	case 7: {life_paycheck = life_paycheck + 40000;};
//};

player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] call life_fnc_updateClothing; // Line added for cop uniforms
#include <macro.h>
/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(EQUAL(_item,"")) exitWith {};

M_CONFIG(getNumber,"VirtualItems",_item,"weight");
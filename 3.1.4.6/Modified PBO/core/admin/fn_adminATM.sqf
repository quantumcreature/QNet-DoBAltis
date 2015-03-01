#include <macro.h>
/*
    File: fn_adminAtm.sqf
    Author: ColinM9991
    Description:
*/
    if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};
    while {dialog} do {
    closeDialog 0;
    sleep 0.01;
    };
    sleep 2;
    [] call life_fnc_atmMenu;


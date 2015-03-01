/*
*	Author: CAPTNCAPS
* 	Version: 1.3
*	Special Thanks to: 
*	-TeamProSkill for being my clan!
*	-Cruoriss for fixing the never ending effects!
*	-sxp2high for helping me with the check script!
*	
*	Please notify me if you make any changes so that I can make them official!
*
*/

	_plane = _this select 0; 		// 0=[this]execVM "planecrash.sqf";

_CheckDist ={
	private ["_veh"];
	_veh = _this select 0;
	_pos = getPos _veh;
	_height = _pos select 2;
	if (_height <= 3) then {
		if (surfaceIsWater _pos) then { 
			{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_fire nearEntities 10);   deleteVehicle _fire;
			_veh allowDamage true;
		} 
		else {
			sleep 20;
			_veh setDamage 1;
			sleep 150;
			{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_fire nearEntities 10);   deleteVehicle _fire; //deletes fire after 2 min 30 sec
		};
	} 	
	else {
		[_veh] call _CheckDist;
	};
};
	
	if((damage _plane) > 0.2 || !canMove _plane) then {									//0.2 is easily achieved with 1 Titan Shot. 0.5 is not 
		_plane setDamage 0.85;			
		_plane allowDamage false;	
		_fire = "test_EmptyObjectForFireBig" createVehicle position _plane;
		_fire attachTo [_plane,[0,-3,0]];  
		sleep 2;
		_plane setFuel 0;
		[_plane] call _CheckDist;	
	};
	

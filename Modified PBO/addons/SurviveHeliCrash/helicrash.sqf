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


	_heli = _this select 0;

_CheckDist ={
	private ["_veh"];
	_veh = _this select 0;
	_pos = getPos _veh;
	_height = _pos select 2;
	if (_height <= 3) then {
		if (surfaceIsWater _pos) then {
			{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_smoke nearEntities 10);   deleteVehicle _smoke;  
			{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_fire nearEntities 10);   deleteVehicle _fire;
			_veh allowDamage true;
		} 
		else {
			sleep 10;
			_veh setDamage 1;
			sleep 60;
			{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_smoke nearEntities 10);   deleteVehicle _smoke;  
			{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_fire nearEntities 10);   deleteVehicle _fire;
		};
	} 
	else {
		[_veh] call _CheckDist;
	};
};
	
	if((damage _heli) > 0.2 || !canMove _heli) then {				//0.2 is easily achieved with 1 Titan Shot. 0.5 is not 
		_heli setDamage 0.85;			
		_heli allowDamage false;
		_heli setHitPointDamage ["HitVRotor", 1]; 	
		_smoke = "test_EmptyObjectForSmoke" createVehicle position _heli;
		_smoke attachTo [_heli,[0,-5,0]];  
		_heli vehicleChat "We're hit! Can't hold on for long!";			//put your message here, or delete if you don't like
		sleep 15;
		_heli setFuel 0.001;
		_fire = "test_EmptyObjectForFireBig" createVehicle position _heli;
		_fire attachTo [_heli,[0.2,0.5,0.5]];
		_heli vehicleChat "The Engine's out! We're going down!";		//put your message here, or delete if you don't like
		[_heli] call _CheckDist;										
	};
	

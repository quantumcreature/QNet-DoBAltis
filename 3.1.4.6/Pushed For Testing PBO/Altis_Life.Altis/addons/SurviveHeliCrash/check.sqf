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

while {true} do {

    _heli = player nearEntities [["Helicopter_Base_H","Heli_Attack_01_base_F","Heli_Attack_02_base_F","I_Heli_light_03_base_F"], 2000]; 	// nearEntities is better for performance, keep the radius to a minimum
	_plane = player nearEntities ["Plane_Base_F",2000];		// checks for Planes in a radius of 2000m around the player

    if ((count _heli) > 0) then { // Anything found at all?
        {
            if (isNil {_x getVariable "eh_assigned"}) then {
				_x setVariable ["eh_assigned", true];
				_x addEventHandler ["Hit", { 0 = [(_this select 0)] execVM "addons\SurviveHeliCrash\helicrash.sqf"; }]; 
			};
        } forEach _heli;
    };
	if ((count _plane) > 0) then { // Anything found at all?
        {
            if (isNil {_x getVariable "eh_assigned"}) then {
				_x setVariable ["eh_assigned", true];
				_x addEventHandler ["Hit", { 0 = [(_this select 0)] execVM "addons\SurviveHeliCrash\planecrash.sqf"; }]; 
			};
        } forEach _plane;
    };
    sleep 10;

};  

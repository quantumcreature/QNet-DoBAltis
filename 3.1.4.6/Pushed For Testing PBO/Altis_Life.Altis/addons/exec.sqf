/*
	File: exec.sqf
	Author: Lt.Bigglesworth / Itsyuka (AltisLifeRPG Forums)
	Description:
	Finds Player UID and allows access to the Admin Tools and starts up the anti-afk system.
*/
// Admin Tool and Afk kick
//   
waituntil 
{!alive player ; !isnull (finddisplay 46)};

if 
		((getPlayerUID player) in 
		["76561198010333231", "76561198077394014", "76561198037729193",
		"76561198040050837"]) then {
	sleep 10;
	//execVM "addons\scripts\script_adminMenu.sqf";
} else {
	execVM "addons\scripts\script_afkKick.sqf";
};
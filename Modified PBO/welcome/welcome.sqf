/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 1; //<-- How long is the text on the screen for ? Recommended: 1 

sleep 3; //Wait in seconds before the credits start after player is in-game
playSound "Intro"; // This calls the code inside of description.ext //

_role1 = "Welcome To Dirty Old Gamers (Powered By The Quantum Network)";
_role1names = ["Owners (QuantumCreature,Diodenerd)"];
_role2 = "Co-Owners (Preacher,Eliud,Clay,Karmah,Ajax)!";
_role2names = ["Admins (QuantumCreature,Clay,Preacher,Eliud,Karmah,Ajax)"];
_role3 = "Teamspeak 3 (QuantumNetwork.co)";
_role3names = ["WebSite (QuantumNetwork.co/forum)"];
_role4 = "Moderators (SMALL TEXT)";
_role4names = ["Developers (QuantumCreature)"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names]
];
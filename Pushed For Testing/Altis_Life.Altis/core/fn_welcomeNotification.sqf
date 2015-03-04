/*
File: welcomeciv.sqf
Author: ZedBuster
    Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
Description:
Creates an intro on the bottom-right hand corner of the screen.
*/
 
_serverName = "Dirty Old Gamers-Powered By The Quantum Network";
_plrName = profileName;
_class = playerSide player;
_sound = "Intro";
 
//Pause the script until the player has spawned.
waitUntil {alive player};
 
_imag  = "<img image='textures\intro.jpg' size='10' align='center'/>"; _text = format["<br/><t color='#C5B6B5' size='1.8' align='center'>Welcome %1 to %2</t><br/><br/>",_plrName,_serverName];  
hint parseText (_imag + _text);
 
_onScreenTime = 3;
 
//Figure out what class the player is in.
switch (_class) do
{
case west: { _sound = "copintro" };
case civilian: { _sound = "civintro" };
case independent: { _sound = "medicalintro" };
default: { _sound = "Intro" }; //Because why not.
};
 
playsound _sound;
sleep 2; //Wait in seconds before the credits start after player is in-game
_role1 = "Owners";  //Add your texts here!
_role1names = ["QuantumCreature,Diodenerd"];  //Add your texts here!
_role2 = "Head Staff/Co-Owners";  //Add your texts here!
_role2names = ["Eliud,Clay,Preacher,Ajax,Karmah"];  //Add your texts here!
_role3 = "Developers";  //Add your texts here!
_role3names = ["QuantumCreature,Clay,Preacher,Ajax,Karmah"];  //Add your texts here!
_role4 = "Admins";  //Add your texts here!
_role4names = ["QuantumCreature,Preacher,Clay,Ajax,Karmah,Diodenerd"];  //Add your texts here!
_role5 = "Moderators";  //Add your texts here!
_role5names = [""];  //Add your texts here!
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
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
[_role4, _role4names],
[_role5, _role5names]
];
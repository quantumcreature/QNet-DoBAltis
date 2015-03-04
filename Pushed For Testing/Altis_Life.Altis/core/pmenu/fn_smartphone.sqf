#include <macro.h>
/ *

file: fn_smartphone.sqf
Author: Silex

* /
private ["_ display", "_ units", "_ type", "_ data", "_ rowData", "_ msg"];
_type = [_this, 0,0] call BIS_fnc_param;
_data = [_this, 1.0, ["", [], 0]] call BIS_fnc_param;


disableSerialization;
WAITUNTIL {isNull find display 88888!};
_Display = find display 88888;
_cPlayerList = _Display displayCtrl 88881;
_cMessageList = _Display displayCtrl 88882;
_cMessageHeader = _Display displayCtrl 88886;
_cMessageHeader ctrlSetText format ["From: Message:"];
ctrlEnable [887892, false];
switch (_type) do
{
case 0:
{
lbClear _cPlayerList;
{
if (alive _x _x &&! = player) then
{
switch (side _x) do
{
Case Western: {_type = "Cop"};
civilian case: {_type = "Civ"};
independent case: {_type = "Med"};
};
_cPlayerList lbAdd format ["% 1 (% 2)", _ x getVariable ["real name", name _x] _ type];
_cPlayerList lbSetData [(lbSize _cPlayerList) -1, str (_x)];
};
} ForEach playable units;

[[GetPlayerUID player, player], "TON_fnc_msgRequest", false] spawn life_fnc_MP;
ctrlEnable [887892, false];
};
case 1:
{
_msg = [select _data 2,40] call KRON_StrLeft;
_rowData = [_data select 0, _data select 1, 2 _data select, select _data 3];
_cMessageList lnbAddRow [_data select 3, format ["% 1 ...", _ msg]];
_cMessageList lnbSetData [[((lnbSize _cMessageList) select 0) -1,0], str (_rowData)];
};
case 2:
{
ctrlEnable [887892, true];
_target lbData = [88881, (lbCurSel 88881)];
life_smartphoneTarget = call compile format ["% 1", _ target];
};

case 4:
{
createDialog "Life_smartphone_schreiben";
ctrlSetText [88886, format ["message:% 1", name life_smartphoneTarget]];
if ((__ __ GETC (life_adminlevel) <1)) then
{
ctrlShow [888897, false];
};
};
};
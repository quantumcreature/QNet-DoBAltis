/*
file: fn_robShop.sqf
Author: [GSN] Paronity
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!

*/
private["_robber","_shopID","_timer","_funds","_dist"];
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_shopID = [_this,3,ObjNull,[ObjNull]] call BIS_fnc_param;
_timer = 60;
_funds = 5000;
_dist = _robber distance _shopID;

if(life_can_rob_gas_station) then
{
	if(vehicle player == _robber && {alive _robber} && {currentWeapon _robber != ""}) then
	{
		if(vehicle player != _robber) exitWith { hint "You can't rob a station from your car. Noob..."; };
		hint format ["%1 seconds remaining - safe is being opened - stand by!",_timer];
		while {_timer > 0} do
		{
			sleep 1;
			_timer = _timer - 1;
			_dist = _robber distance _shopID;
			if(!alive _robber) exitWith
			{
				hint "You failed because you died!";
			};
			if(_dist > 3) exitWith
			{
				hint "You failed because you chickened out!";
			};
		};
		life_cash = life_cash + _funds;
		hint format["You have robbed the gas station of $%1 and have been added to the wanted list!",_funds];
		[[format["%1 is robbing the %2 gas station. They have been added to the wanted list!",name player,_shopID],"Anonymous Tipper",1],"clientMessage",true,false] spawn life_fnc_MP;
		[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;

		[] spawn
		{
			life_can_rob_gas_station = false;
			sleep 420;
			life_can_rob_gas_station = true;
		};
	};
}
else
{
	hint "You recently robbed a gas station, and must wait to rob another.";
}; 
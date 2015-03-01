#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",6500],
			["C_Hatchback_01_F",25000],
			["C_Offroad_01_F",70000],
			["C_SUV_01_F",85000],
			["C_Van_01_transport_F",100000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",10000],
			["I_Truck_02_transport_F",175000],
			["I_Truck_02_covered_F",1100000],
			["B_Truck_01_transport_F",1275000],
			["O_Truck_03_transport_F",1200000],
			["O_Truck_03_covered_F",1250000],
			["B_Truck_01_box_F",1350000],
			["O_Truck_03_device_F",1800000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",10000],
			["B_G_Offroad_01_F",35000],
			["O_MRAP_02_F",160000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",500000]];
			_return set[count _return,
			["O_Truck_03_ammo_F",1500000]];
			_return set[count _return,
			["O_Truck_03_medical_F",1000000]];
			_return set[count _return,
			["O_Truck_03_fuel_F",300000]];
			_return set[count _return,
			["O_Truck_03_device_F",1000000]];
			_return set[count _return,
			["B_Truck_01_box_F",3500000]];
			_return set[count _return,
			["O_Truck_03_repair_F",300000]];
			_return set[count _return,
			["B_APC_Wheeled_01_cannon_F",1500000]];
			_return set[count _return,
			["I_Heli_light_03_F",3000000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",2000000]];
			_return set[count _return,
			["O_MBT_02_cannon_F",5000000]];
			_return set[count _return,
			["O_APC_Tracked_02_cannon_F",4000000]];
			_return set[count _return,
			["O_APC_Tracked_02_AA_F",5000000]];
			_return set[count _return,
			["O_MRAP_02_hmg_F",500000]];
			_return set [count _return,
			["B_Heli_Attack_01_F",4000000]];
			_return set[count _return,
			["I_MBT_03_cannon_F",5000000]];
			_return set[count _return,
			["I_APC_tracked_03_cannon_F",3500000]];
			_return set[count _return,
			["O_Heli_Attack_02_F",3000000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_gmg_F",1500000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",1500000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_APC_Wheeled_01_cannon_F",2000000]];
			_return set[count _return,
			["B_MBT_01_cannon_F",3000000]];
			_return set[count _return,
			["B_APC_Tracked_01_AA_F",2000000]];
			_return set[count _return,
			["B_MBT_01_TUSK_F",4000000]];
			_return set[count _return,
			["B_APC_Tracked_01_CRV_F",1500000]];
			_return set[count _return,
			["B_APC_Tracked_01_rcws_F",1000000]];
			_return set[count _return,
			["B_MBT_01_TUSK_F",5000000]];
			_return set[count _return,
			["O_MBT_02_cannon_F",5000000]];
			_return set[count _return,
			["O_APC_Tracked_02_cannon_F",4000000]];
			_return set[count _return,
			["O_APC_Tracked_02_AA_F",5000000]];
			_return set[count _return,
			["I_MBT_03_cannon_F",5000000]];
			_return set[count _return,
			["I_APC_tracked_03_cannon_F",3500000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",50000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",75000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",80000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",1000000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_Heli_Light_01_armed_F",150000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1750000]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_return set[count _return,
			["B_Heli_Attack_01_F",2500000]];
		};
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["O_Boat_Armed_01_hmg_F",750000]];
			_return set[count _return,
			["O_SDV_01_F",500000]];
			_return set[count _return,
			["O_Boat_Transport_01_F",5000]];
		};
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",300],
			["C_Boat_Civil_01_police_F",2000],
			["B_Boat_Armed_01_minigun_F",50000],
			["B_SDV_01_F",600000]
		];
	};
};

_return;

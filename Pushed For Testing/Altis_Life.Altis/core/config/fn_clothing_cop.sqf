#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) == 0) then
		{
        	_ret =
		[
			["U_Rangemaster","Grunt Uniform",500]
		];
		};
		if(__GETC__(life_coplevel) == 1) then
		{
        	_ret =
		[
			["U_Rangemaster","Grunt Uniform",500]
		];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_Competitor","Officer",500]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Sergeant",500]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["U_IG_Guerilla2_1","DEA",500]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","SWAT",1250]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","Police Chief",1250]];
		};
		
		[] call life_fnc_updateClothing;
	};

	//Hats
	case 1:
	{
		_ret =
		[
			["H_MilCap_blue","Cop Blue Hat",500],
			["H_MilCap_gry","Cop Grey Hat",500]
		];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE","Sergeant Hat",500]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Beret_Colonel","Lieutenant Hat",500]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_PilotHelmetHeli_B","SWAT Helmet",500]];
			_ret set[count _ret,["H_Watchcap_blk","SWAT Beanie Hat",500]];
			_ret set[count _ret,["H_HelmetSpecB_blk","SWAT Helmet",500]];
			_ret set[count _ret,["H_CrewHelmetHeli_B","Tear Gas Helmet",500]];			
			_ret set[count _ret,["H_Cap_blk",250]];
		};
	};

		//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black","Black Shades",500],
			["G_Shades_Blue","Blue Shades",500],
			["G_Sport_Blackred","Black Red Shades",500],
			["G_Sport_Checkered","Checkered Shades",500],
			["G_Sport_Blackyellow","Black Yellow Shades",500],
			["G_Sport_BlackWhite","Black White Shades",500],
			["G_Aviator","Aviators",500],
			["G_Squares","Square Glasses",500],
			["G_Lowprofile","Lowprofile Glasses",500],
			["G_Combat","Combat Goggles",500]
		];
	};

		//Vest
	case 3:
	{
		_ret =
		[
			["V_RebreatherB","Rebreather", 500],
			["V_TacVest_blk_POLICE","Cop Vest",500]
		];
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_TacVestIR_blk","SWAT Vest",500]];
		};			
	};


	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr","Police Backpack",500]
		];
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["B_Kitbag_sgg","SWAT Backpack",500]];
		};		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["B_UAV_01_backpack_F","Darter UAV",50000]];
		};
	};
};

_ret;
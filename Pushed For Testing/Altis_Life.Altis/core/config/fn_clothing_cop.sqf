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
		_ret pushBack ["U_Rangemaster","Cop Uniform",0];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,0];
			_ret pushBack ["U_B_survival_uniform",nil,0];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_worn",nil,0];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret pushBack ["U_BG_Guerilla2_1",nil,0];
			_ret pushBack ["U_B_GhillieSuit",nil,0];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_HelmetB_plain_mcamo",nil,0];
			_ret pushBack ["H_Booniehat_mcamo",nil,0];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_MilCap_mcamo",nil,0];
		};
		
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret pushBack ["H_Cap_blk",nil,0];
			_ret pushBack ["H_Beret_blk_POLICE",nil,0];
			_ret pushBack ["H_CrewHelmetHeli_B",nil,0];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Aviator",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_PlateCarrier2_rgr",nil,0];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret pushBack ["V_TacVest_blk_POLICE",nil,0];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Bergen_blk",nil,0],
			["B_Carryall_cbr",nil,0]
		];
	};
};

_ret;
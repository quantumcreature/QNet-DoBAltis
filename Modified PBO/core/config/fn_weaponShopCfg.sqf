#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["hgun_P07_snds_F","Taser",0],
						["16Rnd_9x21_Mag","Taser Cartridges",0],
						["Rangefinder",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles_OPFOR",nil,0]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not a patrol officer!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["SMG_01_F",nil,0],
						["30Rnd_45ACP_Mag_SMG_01",nil,0],
						["optic_Holosight_smg",nil,0]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not a Sergeant!"};
			default
			{
				["Altis Sergeant Shop",
					[
						["arifle_MXC_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["optic_Hamr",nil,0],
						["optic_Holosight",nil,0],
						["acc_pointer_IR",nil,0],
						["acc_flashlight",nil,0],
						["HandGrenade_Stone","Flashbang",0]
					]
				];
			};
		};
	};
	
		case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not a Lieutenant!"};
			default
			{
				["Altis Lieutenant Shop",
					[
						["arifle_MX_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["arifle_MX_SW_Black_F",nil,0],
						["100Rnd_65x39_caseless_mag",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_Hamr",nil,0],
						["optic_Holosight",nil,0],
						["acc_pointer_IR",nil,0],
						["acc_flashlight",nil,0],
						["HandGrenade_Stone","Flashbang",0]
					]
				];
			};
		};
	};
	
			case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not a Captain!"};
			default
			{
				["Altis Captain Shop",
					[
						["arifle_MX_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["srifle_LRR_F",nil,0],
						["7Rnd_408_Mag",nil,0],
						["optic_LRPS",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_Hamr",nil,0],
						["optic_Holosight",nil,0],
						["acc_pointer_IR",nil,0],
						["acc_flashlight",nil,0],
						["HandGrenade_Stone","Flashbang",0]
					]
				];
			};
		};
	};
	
				case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not a Major!"};
			default
			{
				["Altis Major Shop",
					[
						["srifle_EBR_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
						["srifle_LRR_F",nil,0],
						["7Rnd_408_Mag",nil,0],
						["LMG_Mk200_F",nil,0],
						["200Rnd_65x39_cased_Box",nil,0],
						["200Rnd_65x39_cased_Box_Tracer",nil,0],
						["optic_tws",nil,0],
						["optic_tws_mg",nil,0],
						["optic_LRPS",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_Hamr",nil,0],
						["optic_Holosight",nil,0],
						["acc_pointer_IR",nil,0],
						["acc_flashlight",nil,0],
						["HandGrenade_Stone","Flashbang",0]
					]
				];
			};
		};
	};
	
		case "cop_chief":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You wish you were Chief!"};
			default
			{
				["Altis Chiefs Shop",
					[
						["srifle_EBR_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
						["arifle_Katiba_F",nil,0],
						["30Rnd_65x39_caseless_green",nil,0],
						["srifle_LRR_F",nil,0],
						["7Rnd_408_Mag",nil,0],
						["srifle_GM6_F",nil,0],
						["5Rnd_127x108_APDS_Mag",nil,0],
						["LMG_Zafir_F","Big Baby",0],
						["150Rnd_762x51_Box",nil,0],
						["150Rnd_762x51_Box_Tracer",nil,0],
						["launch_RPG32_F",nil,0],
						["RPG32_F",nil,0],
						["optic_optic_Nightstalker",nil,0],
						["optic_tws",nil,0],
						["optic_tws_mg",nil,0],
						["optic_LRPS",nil,0],
						["optic_SOS",nil,0],
						["optic_DMS",nil,0],
						["optic_Hamr",nil,0],
						["optic_Holosight",nil,0],
						["acc_pointer_IR",nil,0],
						["acc_flashlight",nil,0],
						["HandGrenade_Stone","Flashbang",0]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};

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
						["arifle_sdar_F","Taser Rifle",150],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",0],
						["hgun_P07_snds_F","Stun Pistol",0],
						["16Rnd_9x21_Mag",nil,0],
						["Binocular",nil,50],
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_attach":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Weapon Attachment Shop",
					[
						["muzzle_snds_H",nil,35],
						["muzzle_snds_L",nil,35],
						["muzzle_snds_M",nil,35],
						["muzzle_snds_B",nil,40],
						["muzzle_snds_H_MG",nil,40],
						["muzzle_snds_acp",nil,40],
						["optic_Arco",nil,60],
						["optic_Hamr",nil,60],
						["optic_Aco",nil,65],
						["optic_ACO_grn",nil,65],
						["optic_Aco_smg",nil,65],
						["optic_ACO_grn_smg",nil,65],
						["optic_Holosight",nil,70],
						["optic_Holosight_smg",nil,70],
						["optic_SOS",nil,95],
						["acc_flashlight",nil,95],
						["acc_pointer_IR",nil,95],
						["optic_MRCO",nil,95],
						["optic_DMS",nil,100],
						["optic_Yorris",nil,125],
						["optic_MRD",nil,125],
						["optic_LRPS",nil,125],
						["optic_NVS",nil,150],
						["optic_Nightstalker",nil,500],
						["optic_tws",nil,1000],
						["optic_tws_mg",nil,1500]
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
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["MineDetector",nil,1000]
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
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MXC_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						["B_UavTerminal",nil,2500],
						["Laserdesignator_mounted",nil,2500]
					]
				];
			};
		};
	};
	
	case "cop_lt":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a Lieutenant!"};
			default
			{
				["Altis Lieutenant Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["arifle_MXC_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag",nil,60],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						["B_UavTerminal",nil,2500],
						["Laserdesignator_mounted",nil,2500]
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
			case (__GETC__(life_coplevel) < 5): {"You are not at a Captain!"};
			default
			{
				["Altis Captain Officer Shop",
					[
						["arifle_MXC_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_GL_ACO_pointer_F","MX GL",35000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["1Rnd_HE_Grenade_shell",nil,250],
						["LMG_Mk200_F","MK200",35000],
						["200Rnd_65x39_cased_Box",nil,500],
						["srifle_LRR_F","408 Intervention",40000],
						["7Rnd_408_Mag",nil,500],
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag",nil,60],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],	
						["HandGrenade_Stone","Flashbang",1700],
						["B_UavTerminal",nil,2500],
						["Laserdesignator_mounted",nil,2500]
					]
				];
			};
		};
	};
	
	case "cop_colonel":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not at a Colonel!"};
			default
			{
				["Altis Colonel Officer Shop",
					[						
                                         ["srifle_GM6_SOS_F",nil,20000],
                                         ["5Rnd_127x108_APDS_Mag",nil,250],
						["arifle_MXC_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_GL_ACO_pointer_F","MX GL",35000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["1Rnd_HE_Grenade_shell",nil,250],
						["srifle_LRR_F","408 Intervention",40000],
						["7Rnd_408_Mag",nil,500], 
						["LMG_Mk200_F","MK200",35000],
						["200Rnd_65x39_cased_Box",nil,500],
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag",nil,60],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						["B_UavTerminal",nil,2500],
						["Laserdesignator_mounted",nil,2500]
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
			case (__GETC__(life_coplevel) < 7): {"You are not at the Chief !"};
			default
			{
				["Altis Chief Officer Shop",
					[
						["arifle_MXC_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_GL_ACO_pointer_F","MX GL",35000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["1Rnd_HE_Grenade_shell",nil,250],
						["srifle_LRR_F","408 Intervention",40000],
						["7Rnd_408_Mag",nil,500], 				
						["LMG_Mk200_F","MK200",35000],
						["200Rnd_65x39_cased_Box",nil,500],	
						["srifle_EBR_F","EBR",25000],
						["20Rnd_762x51_Mag","EBR Mag",200],	
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag",nil,60],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						["B_UavTerminal",nil,2500],
						["Laserdesignator_mounted",nil,2500]
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
						["arifle_MXC_Black_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["arifle_MX_Black_F",nil,12500],
						["30Rnd_65x39_caseless_mag",nil,250],
						["arifle_MX_SW_Black_F",nil,25000],
						["100Rnd_65x39_caseless_mag",nil,350],
						["arifle_MXM_Black_F",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["LMG_Zafir_F",nil,50000],
						["150Rnd_762x51_Box",nil,500],
						["srifle_GM6_LRPS_F",nil,50000],
						["5Rnd_127x108_Mag",nil,750],
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,50000],
						["10Rnd_762x51_Mag",nil,500],
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["srifle_LRR_F","408 Intervention",40000],
						["7Rnd_408_Mag",nil,500],
						["hgun_Pistol_heavy_01_F",nil,3500],
						["11Rnd_45ACP_Mag",nil,150],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],						
						["optic_SOS",nil,750],
						["optic_MRCO",nil,750],
						["optic_DMS",nil,750],
						["optic_Yorris",nil,250],
						["optic_MRD",nil,250],
						["optic_LRPS",nil,5000],
						["optic_NVS",nil,5000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_Holosight_smg",nil,400],
						["optic_Hamr",nil,7500],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["ItemGPS",nil,100],
						["NVGoggles",nil,1200]
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

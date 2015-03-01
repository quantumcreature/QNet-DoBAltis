/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_G_Story_Protagonist_F",nil,5000],
			["U_I_G_resistanceLeader_F",nil,6000],
			["U_IG_leader","Guerilla Leader",3500],
			["U_O_SpecopsUniform_ocamo",nil,3500],
			["U_O_CombatUniform_ocamo",nil,3500],
			["U_O_CombatUniform_oucamo",nil,3500],
			["U_O_SpecopsUniform_ocamo",nil,3500],
			["U_O_SpecopsUniform_blk",nil,3500],	
			["U_B_SpecopsUniform_sgg",nil,3500],
			["U_B_CombatUniform_mcam_worn",nil,300],
			["U_B_GhillieSuit",nil,15000],
			["U_B_HeliPilotCoveralls",nil,3500],
			["U_B_PilotCoveralls",nil,3500],
			["U_I_CombatUniform",nil,3000],
			["U_I_CombatUniform_tshirt",nil,1500],
			["U_I_pilotCoveralls",nil,3500],
			["U_I_HeliPilotCoveralls",nil,3500],
			["U_I_GhillieSuit",nil,15000]	
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,85],
			["H_Shemag_olive",nil,80],
			["H_ShemagOpen_khk",nil,80],
			["H_HelmetO_ocamo",nil,250],
			["H_MilCap_oucamo",nil,120],
			["H_Bandanna_camo",nil,65],
			["H_HelmetB_light",250],
			["H_Helmet_Kerry",250],
			["H_HelmetB_grass",nil,250],
			["H_HelmetB_snakeskin",nil,250],
			["H_HelmetB_desert",nil,250],
			["H_HelmetB_black",nil,250],
			["H_HelmetB_sand",nil,250],
			["H_HelmetB_light_grass",nil,150],
			["H_HelmetB_light_snakeskin",nil,150],
			["H_HelmetB_light_desert",nil,150],
			["H_HelmetB_light_black",nil,150],
			["H_HelmetB_light_sand",nil,150],
			["H_BandMask_khk",nil,150],
			["H_BandMask_reaper",nil,150],
			["H_BandMask_demon",nil,150],
			["H_PilotHelmetFighter_B",nil,1500],
			["H_PilotHelmetHeli_B",nil,1000],
			["H_PilotHelmetHeli_I",nil,1000],
			["H_CrewHelmetHeli_I",nil,2000],
			["H_HelmetLeaderO_ocamo",nil,2500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Squares",nil,100],
			["G_Lowprofile",nil,1500],
			["G_Combat",nil,2000]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_HarnessO_brn",nil,350],
			["V_HarnessOGL_brn",nil,350],
			["V_HarnessOGL_gry",nil,350],
			["V_PlateCarrier1_rgr",nil,700],
			["V_PlateCarrier2_rgr",nil,700],
			["V_PlateCarrier3_rgr",nil,700],
			["V_PlateCarrierGL_rgr",nil,1000],
			["V_PlateCarrier1_blk",nil,1000],
			["V_PlateCarrierSpec_rgr",nil,1000],
			["V_PlateCarrierIA1_dgtl",nil,1000],
			["V_PlateCarrierL_CTRG",nil,1000],
			["V_PlateCarrierIAGL_dgtl",nil,4000],
			["V_PlateCarrierH_CTRG",nil,4000],
			["V_PlateCarrierIA2_dgtl",nil,6000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};
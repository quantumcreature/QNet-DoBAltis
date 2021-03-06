#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = true;
life_god = false; 
life_frozen = false; 
life_markers = false;
Life_request_timer = false; 
life_drink = 0;
life_sex_ill = 0;
life_checked = 0;
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,10000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_fatigue = 0.5; 
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_action_gather = false;
life_thirst = 150;
life_hunger = 150;
life_fadeSound = false;
life_smartphoneTarget = ObjNull;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,6500);
__CONST__(life_impound_boat,1500);
__CONST__(life_impound_air,9500);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 250000; //Starting Bank Money
		life_paycheck = 10000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 250000; //Starting Bank Money
		life_paycheck = 3500; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 250000;
		life_paycheck = 6000;
	};
};
/*
*********************************************
****** Custom Variables - FAER System *******
*********************************************
*/

speeding_points = 0;

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_cornmeal",
	"life_inv_beerp",
	"life_inv_whiskey",
	"life_inv_rye",
	"life_inv_hops",
	"life_inv_yeast",
	"life_inv_bottles",
	"life_inv_bottledshine",
	"life_inv_bottledbeer",
	"life_inv_bottledwhiskey",
	"life_inv_moonshine",
	"life_inv_mash"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_stiller","civ"],
	["license_civ_liquor","civ"],
	["license_civ_bottler","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["moonshine",9000],["bottledshine",11000],["mash",5000]
];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",2500],
	["heroinp",6000],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",4500],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3500],
	["cocainep",7000],
	["diamond",1750],
	["diamondc",6000],
	["iron_r",3500],
	["copper_r",2500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",1950],
	["goldbar",200000],
	["bottledshine",15000], 
    ["bottledwhiskey",11000], 
    ["bottledbeer",10000], 
    ["moonshine",7000], 
    ["whiskey",5000], 
    ["beerp",4500], 
    ["mash",2500], 
    ["rye",2000], 
    ["hops",1800], 
    ["yeast",2000], 
    ["cornmeal",200], 
    ["bottles",75] 
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",50000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["bottledshine",12500], 
	["bottledwhiskey",8000], 
	["bottledbeer",8000], 
	["moonshine",7500], 
	["whiskey",5500], 
	["beerp",5000], 
	["cornmeal",500], 
	["mash",2500], 
	["bottles",100]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30],
	["arifle_MXC_Black_F",10000],
	["30Rnd_65x39_caseless_mag",250],
	["arifle_MX_Black_F",12500],
	["30Rnd_65x39_caseless_mag",250],
	["arifle_MX_SW_Black_F",25000],
	["100Rnd_65x39_caseless_mag",350],
	["arifle_MXM_Black_F",15000],
	["30Rnd_65x39_caseless_mag",250],
	["LMG_Zafir_F",50000],
	["150Rnd_762x51_Box",500],
	["srifle_GM6_LRPS_F",50000],
	["5Rnd_127x108_Mag",750],
	["arifle_TRG20_F",25000],
	["30Rnd_556x45_Stanag",300],
	["arifle_Katiba_F",30000],
	["30Rnd_65x39_caseless_green",275],
	["srifle_DMR_01_F",50000],
	["10Rnd_762x51_Mag",500],
	["arifle_SDAR_F",20000],
	["20Rnd_556x45_UW_mag",125],
	["srifle_LRR_F","408 Intervention",40000],
	["7Rnd_408_Mag",500],
	["hgun_Pistol_heavy_01_F",3500],
	["11Rnd_45ACP_Mag",150],
	["hgun_ACPC2_F",17500],
	["9Rnd_45ACP_Mag",200],						
	["optic_SOS",750],
	["optic_MRCO",750],
	["optic_DMS",750],
	["optic_Yorris",250],
	["optic_MRD",250],
	["optic_LRPS",5000],
	["optic_NVS",5000],
	["optic_ACO_grn",3500],
	["optic_Holosight",3600],
	["optic_Holosight_smg",400],
	["optic_Hamr",7500],
	["acc_pointer_IR",150],
	["acc_flashlight",1000],
	["ToolKit",250],
	["FirstAidKit",150],
	["ItemGPS",100],
	["NVGoggles",1200],
	["arifle_MXC_F",20000],
	["30Rnd_65x39_caseless_mag",100],
	["arifle_MX_F",25000],
	["30Rnd_65x39_caseless_mag",100],
	["arifle_MX_GL_ACO_pointer_F","MX GL",35000],
	["30Rnd_65x39_caseless_mag",100],
	["1Rnd_HE_Grenade_shell",250],
	["srifle_LRR_F","408 Intervention",40000],
	["7Rnd_408_Mag",500], 				
	["LMG_Mk200_F","MK200",35000],
	["200Rnd_65x39_cased_Box",500],	
	["srifle_EBR_F","EBR",25000],
	["20Rnd_762x51_Mag","EBR Mag",200],	
	["SMG_02_ACO_F",15000],
	["30Rnd_9x21_Mag",60],
	["hgun_ACPC2_F",17500],
	["9Rnd_45ACP_Mag",200],
	["MineDetector",1000],
	["muzzle_snds_H",250],
	["muzzle_snds_L",250],
	["muzzle_snds_M",250],
	["muzzle_snds_B",250],
	["muzzle_snds_H_MG",250],
	["muzzle_snds_acp",250],
	["optic_Arco",500],
	["optic_Hamr",500],
	["optic_Aco",300],
	["optic_ACO_grn",300],
	["optic_Aco_smg",300],
	["optic_ACO_grn_smg",300],
	["optic_Holosight",400],
	["optic_Holosight_smg",400],
	["optic_SOS",750],
	["acc_flashlight",150],
	["acc_pointer_IR",150],
	["optic_MRCO",750],
	["optic_DMS",750],
	["optic_Yorris",250],
	["optic_MRD",250],
	["optic_LRPS",5000],
	["optic_NVS",5000],
	["arifle_sdar_F","Taser Rifle",20000],
	["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
	["hgun_P07_snds_F","Stun Pistol",2000],
	["16Rnd_9x21_Mag",50],
	["Binocular",150],
	["ItemGPS",100],
	["ToolKit",250],
	["FirstAidKit",150],
	["Medikit",1000],
	["NVGoggles",2000],
	["HandGrenade_Stone","Flashbang",1700]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",45000],
	["B_Heli_Light_01_F",45000],
	["O_Heli_Light_02_unarmed_F",65000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_APC_Wheeled_01_cannon_F",10000],
	["B_MRAP_01_F",7500],
	["I_Heli_light_03_unarmed_F",1000],
	["B_Heli_Light_01_armed_F",3500],
	["I_Heli_light_03_F",3750],
	["B_Heli_Attack_01_F",4500],
	["O_MRAP_02_hmg_F",5000],
	["O_APC_Tracked_02_AA_F",7500],
	["O_APC_Tracked_02_cannon_F",9000],
	["O_MBT_02_cannon_F",7000],
	["O_Heli_Attack_02_F",3000],
	["I_APC_tracked_03_cannon_F",3500],
	["I_MBT_03_cannon_F",5000],
	["B_MBT_01_TUSK_F",5000],
	["O_MRAP_02_hmg_F",5000],
	["O_APC_Tracked_02_AA_F",5000],
	["O_APC_Tracked_02_cannon_F",4000],
	["O_Truck_03_ammo_F",1500],
	["O_Truck_03_medical_F",1000],
	["O_Truck_03_fuel_F",300],
	["O_Truck_03_device_F",4500],
	["B_Truck_01_box_F",3500],
	["O_Truck_03_repair_F",300],
	["B_APC_Tracked_01_rcws_F",1000],
	["B_APC_Tracked_01_CRV_F",1500],
	["B_APC_Tracked_01_AA_F",2000],
	["B_MBT_01_cannon_F",3000],
	["B_MRAP_01_hmg_F",1000],
	["B_MRAP_01_gmg_F",1500],
	["I_MRAP_03_F",1500],
	["I_MRAP_03_hmg_F",1500],
	["O_Boat_Armed_01_hmg_F",7500],
	["O_SDV_01_F",5000],
	["O_Boat_Transport_01_F",500]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000],
	["B_APC_Wheeled_01_cannon_F",15000],
	["B_MRAP_01_F",7500],
	["I_Heli_light_03_unarmed_F",1000],
	["B_Heli_Light_01_armed_F",3500],
	["I_Heli_light_03_F",3750],
	["B_Heli_Attack_01_F",4500],
	["O_MRAP_02_hmg_F",5000],
	["O_APC_Tracked_02_AA_F",7500],
	["O_APC_Tracked_02_cannon_F",9000],
	["O_MBT_02_cannon_F",7000],
	["O_Heli_Attack_02_F",3000],
	["I_APC_tracked_03_cannon_F",3500],
	["I_MBT_03_cannon_F",5000],
	["B_MBT_01_TUSK_F",5000],
	["O_MRAP_02_hmg_F",5000],
	["O_APC_Tracked_02_AA_F",5000],
	["O_APC_Tracked_02_cannon_F",4000],
	["O_Truck_03_ammo_F",1500],
	["O_Truck_03_medical_F",1000],
	["O_Truck_03_fuel_F",300],
	["O_Truck_03_device_F",4500],
	["B_Truck_01_box_F",3500],
	["O_Truck_03_repair_F",300],
	["B_APC_Tracked_01_rcws_F",1000],
	["B_APC_Tracked_01_CRV_F",1500],
	["B_APC_Tracked_01_AA_F",2000],
	["B_MBT_01_cannon_F",3000],
	["B_MRAP_01_hmg_F",1000],
	["B_MRAP_01_gmg_F",1500],
	["I_MRAP_03_F",1500],
	["I_MRAP_03_hmg_F",1500],
	["O_Boat_Armed_01_hmg_F",7500],
	["O_SDV_01_F",5000],
	["O_Boat_Transport_01_F",500]
];
__CONST__(life_garage_sell,life_garage_sell);

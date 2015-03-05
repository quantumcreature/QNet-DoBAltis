/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
	};
	
	case west:
    {
        //CopEnter - Driver Seat
        life_cop_enter_actions = [
            player addAction[
                localize "STR_pAct_DriverSeat",
                life_fnc_copEnter,
                "driver",
                200,
                false,
                false,
                "",
                '!isNull cursorTarget &&
                ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Ship")) &&
                (locked cursorTarget) != 0 &&
                cursorTarget distance player < 3.5 &&
                (vehicle player == player) &&
                cursorTarget in life_vehicles &&
                isNull (driver cursorTarget)'
            ]
        ];
        //CopEnter - Pilot Seat
        life_cop_enter_actions = life_cop_enter_actions + [
            player addAction[
                localize "STR_pAct_PilotSeat",
                life_fnc_copEnter,
                "driver",
                200,
                false,
                false,
                "",
                '!isNull cursorTarget &&
                (cursorTarget isKindOf "Air") &&
                (locked cursorTarget) != 0 &&
                cursorTarget distance player < 3.5 &&
                (vehicle player == player) &&
                cursorTarget in life_vehicles &&
                isNull (driver cursorTarget)'
            ]
        ];
        //CopEnter - Passenger Seat
        life_cop_enter_actions = life_cop_enter_actions + [
            player addAction[
                localize "STR_pAct_PassengerSeat",
                life_fnc_copEnter,
                "passenger",
                100,
                false,
                false,
                "",
                '!isNull cursorTarget &&
                ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) &&
                (locked cursorTarget) != 0 &&
                cursorTarget distance player < 3.5 &&
                (vehicle player == player) &&
                cursorTarget in life_vehicles'
            ]
        ];
        //CopEnter - Gunner Seat
        life_cop_enter_actions = life_cop_enter_actions + [
            player addAction[
                localize "STR_pAct_GunnerSeat",
                life_fnc_copEnter,
                "gunner",
                100,
                false,
                false,
                "",
                '!isNull cursorTarget &&
                ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) &&
                (locked cursorTarget) != 0 &&
                cursorTarget distance player < 3.5 &&
                (vehicle player == player) &&
                cursorTarget in life_vehicles &&
                isNull (gunner cursorTarget) &&
                (
                    typeOf cursorTarget != O_Heli_Light_02_unarmed_F &&
                    typeOf cursorTarget != O_Lifeboat &&
                    typeOf cursorTarget != O_SDV_01_F &&
                    typeOf cursorTarget != O_G_Boat_Transport_01_F &&
                    typeOf cursorTarget != O_MRAP_02_F &&
                    typeOf cursorTarget != O_Quadbike_01_F &&
                    typeOf cursorTarget != O_G_Quadbike_01_F &&
                    typeOf cursorTarget != O_Truck_02_covered_F &&
                    typeOf cursorTarget != O_Truck_02_transport_F &&
                    typeOf cursorTarget != O_Truck_03_transport_F  &&
                    typeOf cursorTarget != O_Truck_03_covered_F  &&
                    typeOf cursorTarget != O_Truck_03_repair_F &&
                    typeOf cursorTarget != O_Truck_03_ammo_F &&
                    typeOf cursorTarget != O_Truck_03_fuel_F &&
                    typeOf cursorTarget != O_Truck_03_medical_F &&
                    typeOf cursorTarget != O_Truck_03_device_F &&
                    typeOf cursorTarget != O_Truck_02_box_F &&
                    typeOf cursorTarget != O_Truck_02_medical_F &&
                    typeOf cursorTarget != O_Truck_02_Ammo_F &&
                    typeOf cursorTarget != O_Truck_02_fuel_F &&
                    typeOf cursorTarget != O_G_Van_01_transport_F &&
                    typeOf cursorTarget != O_G_Van_01_fuel_F &&
                    typeOf cursorTarget != O_UGV_01_F &&
                    typeOf cursorTarget != B_Heli_Light_01_F &&
                    typeOf cursorTarget != B_Truck_01_transport_F &&
                    typeOf cursorTarget != B_Truck_01_covered_F &&
                    typeOf cursorTarget != B_Truck_01_mover_F &&
                    typeOf cursorTarget != B_Truck_01_box_F &&
                    typeOf cursorTarget != B_Truck_01_Repair_F &&
                    typeOf cursorTarget != B_Truck_01_ammo_F &&
                    typeOf cursorTarget != B_Truck_01_fuel_F &&
                    typeOf cursorTarget != B_Truck_01_medical_F &&
                    typeOf cursorTarget != B_G_Van_01_transport_F &&
                    typeOf cursorTarget != B_G_Van_01_fuel_F &&
                    typeOf cursorTarget != B_UGV_01_F &&
                    typeOf cursorTarget != I_Boat_Transport_01_F &&
                    typeOf cursorTarget != I_SDV_01_F &&
                    typeOf cursorTarget != I_G_Offroad_01_F &&
                    typeOf cursorTarget != I_Quadbike_01_F &&
                    typeOf cursorTarget != I_G_Quadbike_01_F &&
                    typeOf cursorTarget != I_MRAP_03_F &&
                    typeOf cursorTarget != I_Truck_02_covered_F &&
                    typeOf cursorTarget != I_Truck_02_transport_F &&
                    typeOf cursorTarget != I_Truck_02_ammo_F &&
                    typeOf cursorTarget != I_Truck_02_box_F &&
                    typeOf cursorTarget != I_Truck_02_medical_F &&
                    typeOf cursorTarget != I_Truck_02_fuel_F &&
                    typeOf cursorTarget != I_G_Van_01_transport_F &&
                    typeOf cursorTarget != I_G_Van_01_fuel_F &&
                    typeOf cursorTarget != I_UGV_01_F &&
                    typeOf cursorTarget != C_Rubberboat &&
                    typeOf cursorTarget != Submarine_01_F &&
                    typeOf cursorTarget != C_Boat_Civil_01_F &&
                    typeOf cursorTarget != C_Boat_Civil_01_rescue_F &&
                    typeOf cursorTarget != C_Boat_Civil_01_police_F &&
                    typeOf cursorTarget != C_Offroad_01_F &&
                    typeOf cursorTarget != C_Quadbike_01_F &&
                    typeOf cursorTarget != C_Hatchback_01_F &&
                    typeOf cursorTarget != C_Hatchback_01_sport_F &&
                    typeOf cursorTarget != C_SUV_01_F &&
                    typeOf cursorTarget != C_Van_01_transport_F &&
                    typeOf cursorTarget != C_Van_01_box_F &&
                    typeOf cursorTarget != C_Van_01_fuel_F &&
                    typeOf cursorTarget != C_Kart_01_F &&
                    typeOf cursorTarget != C_Kart_01_Fuel_F &&
                    typeOf cursorTarget != C_Kart_01_Blu_F &&
                    typeOf cursorTarget != C_Kart_01_Red_F &&
                    typeOf cursorTarget != C_Kart_01_Vrana_F                    
                )'
            ]
        ];         
    };
	
	 //Seize PlayerWeapons
    life_actions = life_actions + [player addAction["Waffe beschlagnahmen",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
};
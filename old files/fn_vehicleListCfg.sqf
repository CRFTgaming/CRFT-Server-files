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
switch (_shop) do {
  case "kart_shop": {
    _return = [
        ["C_Kart_01_Blu_F",15000],
        ["C_Kart_01_Fuel_F",15000],
        ["C_Kart_01_Red_F",15000],
        ["C_Kart_01_Vrana_F",15000]
    ];
  };

  case "med_shop": {
    _return = [
        ["C_Offroad_01_F",40000],
        ["C_SUV_01_F",35000],
        ["C_Hatchback_01_F",30000],
        ["I_Truck_02_medical_F",25000],
        ["O_Truck_03_medical_F",45000],
        ["B_Truck_01_medical_F",60000]
    ];
  };
	
  case "med_air_hs": {
    _return = [
        ["B_Heli_Light_01_F",50000],
        ["O_Heli_Light_02_unarmed_F",75000],
        ["O_Heli_Transport_04_medevac_F",500000]
    ];
  };
	
  case "civ_car": {
    _return = [
        ["B_Quadbike_01_F",9000],
        ["C_Hatchback_01_F",30000],
        ["C_Offroad_01_F",45000],
        ["C_SUV_01_F",45000],
        ["C_Van_01_transport_F",50000]
    ];
  };
	
  case "civ_truck": {
    _return = [
        ["C_Van_01_box_F",60000],
        ["I_Truck_02_transport_F",75000],
        ["I_Truck_02_covered_F",100000],
        ["B_Truck_01_transport_F",275000],
        ["B_Truck_01_box_F",350000],
        ["O_Truck_03_device_F",4500000],
        ["O_Truck_02_fuel_F",250000],
        ["O_Truck_02_box_F",250000],
        ["B_Truck_01_mover_F",800000],
        ["IG_supplyCrate_F",100000]
    ];
  };

  case "civ_air": {
    _return = [
        ["B_Heli_Light_01_F", 253000],
        ["O_Heli_Light_02_unarmed_F", 750000],
        ["I_Heli_Transport_02_F", 1200000],
        ["C_Heli_Light_01_civil_F", 200000]
    ];
  };
	
  case "civ_ship": {
    _return = [
        ["C_Rubberboat",5000],
        ["C_Boat_Civil_01_F",22000],
        ["I_Boat_Armed_01_Minigun_F", 5000000],
        ["B_SDV_01_F", 2000000]
    ];
  };
	
  case "cop_car_shop": {
    // Vehicles that public cops get.

    _return pushBack ["C_Offroad_01_F",40000];
    if (__GETC__(life_coplevel) < 1) exitWith {};
    // Vehicles available to cops level 1 or higher.
   
    if (__GETC__(life_coplevel) < 2) exitWith {};
    // Vehicles available to cops level 2 or higher.
	_return pushBack ["C_SUV_01_F",35000];
    _return pushBack ["B_Truck_01_covered_F",45000];
	

    if (__GETC__(life_coplevel) < 3) exitWith {};
    // Vehicles available to cops level 3 or higher.
    _return pushBack ["C_Hatchback_01_sport_F",35000];
    _return pushBack ["B_MRAP_01_F",40000];

    if (__GETC__(life_coplevel) < 4) exitWith {};
    // Vehicles available to cops level 4 or higher.

    if (__GETC__(life_coplevel) < 5) exitWith {};
    // Vehicles available to cops level 5 or higher.
	_return pushBack ["B_G_Quadbike_01_F",15000];
	_return pushBack ["B_Truck_01_ammo_F",400000];
	_return pushBack ["I_MRAP_03_F",750000];
	_return pushBack ["B_MRAP_01_hmg_F",900000];
	_return pushBack ["B_APC_Tracked_01_CRV_F",1000000];

    if (__GETC__(life_coplevel) < 6) exitWith {};
    // Vehicles available to cops level 6 or higher.
	_return pushBack ["I_MRAP_03_hmg_F",750000];
	_return pushBack ["B_MRAP_01_gmg_F",1000000];
	_return pushBack ["B_APC_Tracked_01_rcws_F",2000000];
	_return pushBack ["B_APC_Wheeled_01_cannon_F",4000000];
    
    if (__GETC__(life_coplevel) < 7) exitWith {};
    // Vehicles available to cops level 7 or higher.
	_return pushBack ["I_MRAP_03_gmg_F",2000000];
    _return pushBack ["O_APC_Tracked_02_cannon_F",6000000];

    if (__GETC__(life_coplevel) < 8) exitWith {};
    // Vehicles available to cops level 8 or higher.

  };

  case "cop_air_shop": {
    if (__GETC__(life_coplevel) < 1) exitWith {};
    // Vehicles available to cops level 1 or higher.
    
    if (__GETC__(life_coplevel) < 2) exitWith {};
    // Vehicles available to cops level 2 or higher.
    _return pushBack ["B_Heli_Light_01_F",100000];
	_return pushBack ["I_Heli_Light_03_unarmed_F",250000];

    if (__GETC__(life_coplevel) < 3) exitWith {};
    // Vehicles available to cops level 3 or higher.
	_return pushBack ["B_Heli_Transport_03_unarmed_F",750000];
	
    if (__GETC__(life_coplevel) < 4) exitWith {};
    // Vehicles available to cops level 4 or higher.
	_return pushBack ["B_Heli_Transport_01_F",4500000];

    if (__GETC__(life_coplevel) < 5) exitWith {};
    // Vehicles available to cops level 5 or higher.
    _return pushBack ["B_Heli_Light_01_armed_F",1000000];
    _return pushBack ["I_Heli_light_03_F",2000000];
	_return pushBack ["B_Heli_Transport_03_F",3000000];
	
    if (__GETC__(life_coplevel) < 6) exitWith {};
    // Vehicles available to cops level 6 or higher.

    if (__GETC__(life_coplevel) < 7) exitWith {};
    // Vehicles available to cops level 7 or higher.
	_return pushBack ["O_Heli_Transport_04_bench_F",1000000];
    _return pushBack ["O_Heli_Attack_02_black_F",4000000];
	
    if (__GETC__(life_coplevel) < 8) exitWith {};
    // Vehicles available to cops level 8 or higher.
  };

  case "cop_ship": {
    _return = [
        ["B_Boat_Transport_01_F",3000],
        ["C_Boat_Civil_01_police_F",20000],
        ["B_Boat_Armed_01_minigun_F",5000000],
        ["B_SDV_01_F",100000]
    ];
  };

  case "fancy_shop": {
    _return = [
        ["B_Quadbike_01_F",9000],
        ["C_Offroad_01_F",40000],
        ["C_SUV_01_F",35000],
        ["C_Van_01_Fuel_F",7500],
        ["B_Truck_01_box_F",250000],
		["O_APC_Wheeled_02_rcws_F",3250000]
    ];
	_return pushBack["C_Hatchback_01_sport_F",10000];
	_return pushBack["O_Truck_03_device_F",2000000];
	_return pushBack["B_G_Offroad_01_armed_F",500000];
	_return pushBack["O_MRAP_02_gmg_F",2000000];
	_return pushBack ["I_MRAP_03_hmg_F",2000000];
	_return pushBack ["I_MRAP_03_gmg_F",3000000];
	_return pushBack["B_APC_Wheeled_01_cannon_F",4000000],
    _return pushBack["I_APC_tracked_03_cannon_F",3500000];
    _return pushBack["B_Heli_Light_01_F",200000];
    _return pushBack["O_Heli_Light_02_unarmed_F",600000];    
	_return pushBack["B_Heli_Light_01_armed_F",1500000];
    _return pushBack["I_Heli_Transport_02_F",1200000];
    _return pushBack["B_Heli_Transport_01_camo_F",4500000];
    _return pushBack["I_Heli_light_03_F",3000000];
	_return pushBack["O_Heli_Attack_02_F",4000000];
    _return pushBack["O_Heli_Transport_04_F",3000000];
    _return pushBack["O_Heli_Transport_04_bench_F",2000000];
    _return pushBack["B_Heli_Transport_03_unarmed_F",2500000];
    _return pushBack["O_Heli_Transport_04_box_F",3000000];
  };

  case "reb_car_shop": {
    _return = [
        ["B_Quadbike_01_F",9000],
        ["B_G_Offroad_01_F",30000],
        ["B_G_Offroad_01_armed_F",750000],
		["O_MRAP_02_F",250000],
        ["O_MRAP_02_hmg_F",2000000],
        ["O_Truck_02_Ammo_F",250000],
        ["O_Truck_02_fuel_F",250000],
        ["O_Truck_02_box_F",250000],
        ["O_Truck_02_medical_F",250000],
        ["IG_supplyCrate_F",100000]
    ];
  };
  
  case "reb_air_shop": {
    _return = [
		["B_Heli_Light_01_F",200000],
		["O_Heli_Light_02_unarmed_F",600000],
		["I_Heli_Transport_02_F",1200000],
		["O_Heli_Transport_04_bench_F",2000000],
		["O_Heli_Transport_04_F",3000000],		
        ["IG_supplyCrate_F",100000]
    ];
  };
};

_return;

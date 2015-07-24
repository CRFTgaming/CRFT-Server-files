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
			["C_Kart_01_Blu_F",500],
			["C_Kart_01_Fuel_F",500],
			["C_Kart_01_Red_F",500],
			["C_Kart_01_Vrana_F",500]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",1500],
			["C_SUV_01_F",1300],
			["C_Hatchback_01_F",800],
			["I_Truck_02_medical_F",2500],
			["O_Truck_03_medical_F",4500],
			["B_Truck_01_medical_F",6000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["C_Heli_Light_01_civil_F",5000],
			["O_Heli_Light_02_unarmed_F",7500],
			["I_Heli_Transport_02_F",9000],
			["O_Heli_Transport_04_medevac_black_F",10000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",650],
			["C_Hatchback_01_F",800],
			["C_Offroad_01_F",1500],
			["C_Van_01_transport_F",2500],
			["C_Van_01_Box_F",2500],
			["C_SUV_01_F",1300],
			["C_Hatchback_01_sport_F",1100]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["B_G_Offroad_01_repair_F",nil,2000],
			["C_Van_01_fuel_F",2500],
			["C_Van_01_Box_F",2500],
			["C_Van_01_transport_F",2500],
			["I_Truck_02_transport_F",4000],
			["I_Truck_02_covered_F",4500],
			["O_Truck_03_transport_F",6000],
			["O_Truck_03_covered_F",6500],
			["I_Truck_02_fuel_F",7000],
			["I_Truck_02_box_F",8000],
			["O_Truck_03_fuel_F",8500],
			["O_Truck_03_repair_F",9500],
			["B_Truck_01_mover_F",10000],
			["B_Truck_01_transport_F",12500],
			["B_Truck_01_covered_F",13500],
			["B_Truck_01_fuel_F",15000],
			["B_Truck_01_box_F",20000],
			["O_Truck_03_device_F",20000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",650],
			["B_G_Offroad_01_F",1500],
			["O_MRAP_02_F",1800],
			["B_Heli_Light_01_F",10530]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",7000];
			_return pushBack
			["B_Heli_Transport_01_F",18500];
			_return pushBack
    		["B_Heli_Transport_03_F",22000];
		};
	};
	
  	case "cop_car": // Vehicles that public cops get.
  	{
    	_return pushBack 
    	["C_Offroad_01_F",400];
    	if(__GETC__(life_coplevel) > 0) then // Vehicles available to cops level 1 or higher.
   		{
   		};
    	if(__GETC__(life_coplevel) > 1) then // Vehicles available to cops level 2 or higher.
		{
			_return pushBack 
			["C_SUV_01_F",350];
    		_return pushBack 
    		["B_Truck_01_covered_F",450];
		};
    	if(__GETC__(life_coplevel) > 2) then // Vehicles available to cops level 3 or higher.
    	{
    		_return pushBack 
    		["C_Hatchback_01_sport_F",350];
    		_return pushBack 
    		["B_MRAP_01_F",400];
    	};
    	if(__GETC__(life_coplevel) > 3) then // Vehicles available to cops level 4 or higher.
    	{
    	};
    	if(__GETC__(life_coplevel) > 4) then // Vehicles available to cops level 5 or higher.
		{
			_return pushBack 
			["B_Quadbike_01_F",150];
			_return pushBack 
			["I_MRAP_03_F",750];
			_return pushBack 
			["B_G_Offroad_01_armed_F",1500];
		};
    	if(__GETC__(life_coplevel) > 5) then // Vehicles available to cops level 6 or higher.
		{	
    	};
    	if(__GETC__(life_coplevel) > 6) then // Vehicles available to cops level 7 or higher.
		{	
    	};
    	if(__GETC__(life_coplevel) > 7) then // Vehicles available to cops level 8 or higher.
    	{
    	};
  	};

	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",10530],
			["O_Heli_Light_02_unarmed_F",12500],
			["I_Heli_Transport_02_F",21000],
			["O_Heli_Transport_04_F",25000],
			["O_Heli_Transport_04_box_F",25000],
			["B_Heli_Transport_03_unarmed_F",20000]
		];
	};

	case "civ_pod":
	{
		_return =
		[
			["Land_Pod_Heli_Transport_04_ammo_F", 500],
			["Land_Pod_Heli_Transport_04_covered_F", 500],
			["Land_Pod_Heli_Transport_04_bench_F", 500],
			["Land_Pod_Heli_Transport_04_fuel_F", 500],
			["Land_Pod_Heli_Transport_04_repair_F", 500]
		];
	};
	
	case "cop_air": {
    	if (__GETC__(life_coplevel) < 1) exitWith {};
    	// Vehicles available to cops level 1 or higher. Cadet
    
    	if (__GETC__(life_coplevel) < 2) exitWith {};
    	// Vehicles available to cops level 2 or higher. Patrol Officer
    	_return pushBack ["C_Heli_Light_01_civil_F",1000];
		_return pushBack ["I_Heli_Light_03_unarmed_F",2500];

    	if (__GETC__(life_coplevel) < 3) exitWith {};
    	// Vehicles available to cops level 3 or higher. Sergeant
		_return pushBack ["B_Heli_Transport_03_unarmed_F",4500];
		_return pushBack ["B_Heli_Transport_01_F",5500];
	
    	if (__GETC__(life_coplevel) < 4) exitWith {};
    	// Vehicles available to cops level 4 or higher. Lieutenant

    	if (__GETC__(life_coplevel) < 5) exitWith {};
    	// Vehicles available to cops level 5 or higher. Captain
    	_return pushBack ["B_Heli_Light_01_F",1000];
    	_return pushBack ["O_Heli_Transport_04_bench_F",10000];
	
    	if (__GETC__(life_coplevel) < 6) exitWith {};
    	// Vehicles available to cops level 6 or higher. SWAT
    	_return pushBack ["B_Heli_Transport_03_F",12000];

    	if (__GETC__(life_coplevel) < 7) exitWith {};
    	// Vehicles available to cops level 7 or higher. Superintendant and Chiefs
    	_return pushBack ["I_Heli_Transport_02_F",8000];
	
    	if (__GETC__(life_coplevel) < 8) exitWith {};
    	// Vehicles available to cops level 8 or higher.
  	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",750];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",2000];
		};
	};

	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",500],
			["C_Boat_Civil_01_F",2200],
			["B_SDV_01_F",3200]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",300],
			["C_Boat_Civil_01_police_F",2000],
			["B_SDV_01_F",3000]
		];
	};

	case "fancy_shop": {
    	_return = [
        	["B_Quadbike_01_F",650],
        	["C_Offroad_01_F",1500],
        	["C_SUV_01_F",1300],
        	["C_Van_01_Fuel_F",2000],
        	["B_Truck_01_box_F",20000],
			["C_Hatchback_01_sport_F",1100],
			["O_Truck_03_device_F",20000],
			["B_G_Offroad_01_armed_F",7000],
			["B_Heli_Light_01_F",10530],
			["O_Heli_Light_02_unarmed_F",12500],    
			["I_Heli_Transport_02_F",21000],
			["B_Heli_Transport_01_camo_F",10500],
			["O_Heli_Transport_04_F",25000],
			["B_Heli_Transport_03_unarmed_F",4500],
			["O_Heli_Transport_04_box_F",25000]
    	];
	};

	case "admin_shop": {
		if(__GETC__(life_adminlevel) > 4) then 
		{	
			_return pushBack 
			["C_Offroad_01_repair_F",0];
    	};
	};
};

_return;

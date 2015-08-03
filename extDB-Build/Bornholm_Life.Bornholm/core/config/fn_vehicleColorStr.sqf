#include <macro.h>
/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Yellow"};
			case 9: {_color = "Police"};
			case 10: {_color = "APD"};
			case 11: {_color = "FalconPunch"};
			case 12: {_color = "Skull"};
			case 13: {_color = "Steel"};
			case 14: {_color = "Pokemon"};
			case 15: {_color = "Ram"};
			case 16: {_color = "EMS"};
			case 17: {_color = "America"};
			case 18: {_color = "Darkside"};
			
		};
	};

	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "EMS"};
            case 9: {_color = "Ganja"};
		};
	};

	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
			case 7: {_color = "Hello Kitty"};
			case 8: {_color = "Metallica"};
			case 9: {_color = "My Little Pony"};
			case 10: {_color = "Monster"};
			case 11: {_color = "Redbull"};
            case 12: {_color = "Batman"};
			case 13: {_color = "Swat"};
			case 14: {_color = "APD Hatchback"};
		};
	};

	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Silver";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Sheriff";};
			case 4: {_color = "Cop Cruiser";};
			case 5: {_color = "Taxi";};
			case 6: {_color = "Freeman";};
			case 7: {_color = "Fast & Furious";};
			case 8: {_color = "Cop Intercepter"};
			case 9: {_color = "EMS"};
			case 10: {_color = "Ferrari"};
		};
	};

	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};

	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};

	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};

	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
			case 9: {_color = "Police"};
		};
	};

	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Civ Blue"};
			case 2: {_color = "Civ Red"};
			case 3: {_color = "Digi Green"};
			case 4: {_color = "Blueline"};
			case 5: {_color = "Elliptical"};
			case 6: {_color = "Furious"};
			case 7: {_color = "Jeans Blue"};
			case 8: {_color = "Speedy Redline"};
			case 9: {_color = "Sunset"};
			case 10: {_color = "Vrana"};
			case 11: {_color = "Waves Blue"};
			case 12: {_color = "Rebel Digital"};
			case 13: {_color = "Rebel Camo"};
			case 14: {_color = "Rebel Wasp"};
		};
	};

	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS"};
			case 5: {_color = "Black"};
		};
	};
/*	
	case "I_Heli_light_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Swat Hellcat Green"};
			case 1: {_color = "Swat Hellcat Black"};
		};
	};
	
	case "O_MRAP_02_gmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Anonymous 1"};
			case 1: {_color = "Anonymous 2"};
		};
	};
*/	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Black"};
			case 2: {_color = "Unit 1"};
			case 3: {_color = "SWAT"};
		};
	};

	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SWAT"};
		};
	};

	case "O_APC_Tracked_02_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Military"};
		};
	};

	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};

	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Police"};
		};
	};

	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "C_Kart_01_Blu_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Cop"};
		};
	};
	
	case "C_Kart_01_Red_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Military"};
		};
	};

	case "C_Heli_Light_01_civil_F":
	{
		switch (_index) do
		{
			case 0: {_color = "APD"};
			case 1: {_color = "EMS"};
			case 2: {_color = "Sheriff"};
			
		};
	};

	case "C_Offroad_01_repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "TUNDRA"};
			case 1: {_color = "DOPPLER"};	
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Swat"};
		};
	};

	case "B_G_Offroad_01_armed_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Yellow"};
			case 2: {_color = "White"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Dark Red"};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "FalconPunch"};
			case 7: {_color = "Skull"};
			case 8: {_color = "Steel"};
			case 9: {_color = "Pokemon"};
			case 10: {_color = "Ram"};
			case 11: {_color = "America"};
			case 12: {_color = "Darkside"};
			case 13: {_color = "APD"};
		};
	};

	case "B_Heli_Transport_03_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "black"};
			case 1: {_color = "APD"};
		};
	};

	case "B_Heli_Transport_03_unarmed_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "black"};
			case 1: {_color = "APD"};
			case 2: {_color = "Airways"};
		};
	};
	
	case "O_Heli_Transport_04_medevac_black_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "black"};
			case 1: {_color = "MEDVAC"};
		};
	};
};

_color;

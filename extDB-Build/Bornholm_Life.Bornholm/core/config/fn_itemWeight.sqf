/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {3};
	case "oilp": {2};
	case "heroinu": {2};
	case "heroinp": {1};
	case "cannabis": {2};
	case "marijuana": {1};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {3};
	case "ironore": {4};
	case "copper_r": {2};
	case "iron_r": {2};
	case "sand": {3};
	case "salt": {2};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {3};
	case "diamondc": {1};
	case "cocaine": {2};
	case "cocainep": {1};
	case "spikeStrip": {15};
	case "rock": {3};
	case "cement": {2};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "zipties": {8};
	case "handcuffs": {8};
	case "rye": {2};
	case "hops": {2};
	case "yeast": {2};
	case "cornmeal": {2};
	case "mash": {2};
	case "whiskey": {4};
	case "beerp": {4};
	case "moonshine": {5};
	case "bottledwhiskey": {5};
	case "bottledbeer": {5};
	case "bottledshine": {5};
	case "bottles": {1};
	case "cotton": {1};
	case "APDuniform": {1};
	case "speedbomb": {10};
	case "uwsl": {5};
	case "extacy": {1};
	case "lsdx": {1};
	case "methx": {1};
	case "rso": {1};
	case "bho": {1};
	case "hash": {1};
	default {1};
};

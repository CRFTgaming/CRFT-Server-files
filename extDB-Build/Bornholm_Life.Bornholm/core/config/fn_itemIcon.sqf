/*
	File: fn_itemIcon.sqf
	Author: EdgeKiller

	Description:
	Return the icon for each altis life item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {("textures\icons\.paa")};
	case "life_inv_oilp": {("textures\icons\.paa")};
	case "life_inv_heroinu": {("textures\icons\.paa")};
	case "life_inv_heroinp": {("textures\icons\.paa")};
	case "life_inv_cannabis": {("textures\icons\.paa")};
	case "life_inv_marijuana": {("textures\icons\.paa")};
	case "life_inv_apple": {("textures\icons\.paa")};
	case "life_inv_rabbit": {("textures\icons\.paa")};
	case "life_inv_salema": {("textures\icons\.paa")};
	case "life_inv_ornate": {("textures\icons\.paa")};
	case "life_inv_mackerel": {("textures\icons\.paa")};
	case "life_inv_tuna": {("textures\icons\.paa")};
	case "life_inv_mullet": {("textures\icons\.paa")};
	case "life_inv_catshark": {("textures\icons\.paa")};
	case "life_inv_turtle": {("textures\icons\.paa")};
	case "life_inv_fishingpoles": {("textures\icons\.paa")};
	case "life_inv_water": {("textures\icons\.paa")};
	case "life_inv_coffee": {("textures\icons\.paa")};
	case "life_inv_turtlesoup": {("textures\icons\.paa")};
	case "life_inv_donuts": {("textures\icons\.paa")};
	case "life_inv_fuelE": {("textures\icons\.paa")};
	case "life_inv_fuelF": {("textures\icons\.paa")};
	case "life_inv_pickaxe": {("textures\icons\.paa")};
	case "life_inv_copperore": {("textures\icons\.paa")};
	case "life_inv_ironore": {("textures\icons\.paa")};
	case "life_inv_ironr": {("textures\icons\.paa")};
	case "life_inv_copperr": {("textures\icons\.paa")};
	case "life_inv_sand": {("textures\icons\.paa")};
	case "life_inv_salt": {("textures\icons\.paa")};
	case "life_inv_saltr": {("textures\icons\.paa")};
	case "life_inv_glass": {("textures\icons\.paa")};
	case "life_inv_diamond": {("textures\icons\.paa")};
	case "life_inv_diamondr": {("textures\icons\.paa")};
	case "life_inv_tbacon": {("textures\icons\.paa")};
	case "life_inv_redgull": {("textures\icons\.paa")};
	case "life_inv_lockpick": {("textures\icons\.paa")};
	case "life_inv_peach": {("textures\icons\.paa")};
	case "life_inv_coke": {("textures\icons\.paa")};
	case "life_inv_cokep": {("textures\icons\.paa")};
	case "life_inv_spikeStrip": {("textures\icons\.paa")};
	case "life_inv_rock": {("textures\icons\.paa")};
	case "life_inv_cement": {("textures\icons\.paa")};
	case "life_inv_goldbar": {("textures\icons\.paa")};
	case "life_inv_blastingcharge": {("textures\icons\.paa")};
	case "life_inv_boltcutter": {("textures\icons\.paa")};
	case "life_inv_defusekit": {("textures\icons\.paa")};
	case "life_inv_storagesmall": {("textures\icons\.paa")};
	case "life_inv_storagebig": {("textures\icons\.paa")};
	case "life_inv_cotton": {("textures\icons\.paa")};
	case "life_inv_APDuniform": {("textures\icons\.paa")};
	case "life_inv_mash": {("textures\icons\.paa")};
	case "life_inv_yeast": {("textures\icons\.paa")};
	case "life_inv_rye": {("textures\icons\.paa")};
	case "life_inv_hops": {("textures\icons\.paa")};
	case "life_inv_whiskey": {("textures\icons\.paa")};
	case "life_inv_beerp": {("textures\icons\.paa")};
	case "life_inv_bottles": {("textures\icons\.paa")};
	case "life_inv_cornmeal": {("textures\icons\.paa")};
	case "life_inv_bottledwhiskey": {("textures\icons\.paa")};
	case "life_inv_bottledbeer": {("textures\icons\.paa")};
	case "life_inv_bottledshine": {("textures\icons\.paa")};
	case "life_inv_moonshine": {"Distilled Moonshine"};
	case "life_inv_speedbomb": {("textures\icons\.paa")};
	case "life_inv_uwsl": {("textures\icons\.paa")};
	case "life_inv_extacy": {("textures\icons\.paa")};
	case "life_inv_lsdx": {("textures\icons\.paa")};
	case "life_inv_methx": {("textures\icons\.paa")};
	case "life_inv_rso": {("textures\icons\.paa")};
	case "life_inv_bho": {("textures\icons\.paa")};
	case "life_inv_hash": {("textures\icons\.paa")};
	case "life_inv_heroinp": {("textures\icons\.paa")};
};
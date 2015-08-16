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
	case "life_inv_oilu": {("textures\icons\oilu.paa")};
	case "life_inv_oilp": {("textures\icons\oilp.paa")};
	case "life_inv_heroinu": {("textures\icons\heroinu.paa")};
	case "life_inv_heroinp": {("textures\icons\heroinp.paa")};
	case "life_inv_cannabis": {("textures\icons\cannabis.paa")};
	case "life_inv_marijuana": {("textures\icons\marijuana.paa")};
	case "life_inv_apple": {("textures\icons\apple.paa")};
	case "life_inv_rabbit": {("textures\icons\rabbit.paa")};
	case "life_inv_salema": {("textures\icons\salema.paa")};
	case "life_inv_ornate": {("textures\icons\ornate.paa")};
	case "life_inv_mackerel": {("textures\icons\mackerel.paa")};
	case "life_inv_tuna": {("textures\icons\tuna.paa")};
	case "life_inv_mullet": {("textures\icons\mullet.paa")};
	case "life_inv_catshark": {("textures\icons\catshark.paa")};
	case "life_inv_turtle": {("textures\icons\turtle.paa")};
	//case "life_inv_fishingpoles": {("textures\icons\.paa")};
	case "life_inv_water": {("textures\icons\water.paa")};
	case "life_inv_coffee": {("textures\icons\coffee.paa")};
	case "life_inv_turtlesoup": {("textures\icons\turtlesoup.paa")};
	case "life_inv_donuts": {("textures\icons\donut.paa")};
	case "life_inv_fuelE": {("textures\icons\fuelE.paa")};
	case "life_inv_fuelF": {("textures\icons\fuelF.paa")};
	case "life_inv_pickaxe": {("textures\icons\pickaxe.paa")};
	case "life_inv_copperore": {("textures\icons\copperore.paa")};
	case "life_inv_ironore": {("textures\icons\ironore.paa")};
	case "life_inv_ironr": {("textures\icons\iron_r.paa")};
	case "life_inv_copperr": {("textures\icons\copper_r.paa")};
	case "life_inv_sand": {("textures\icons\sand.paa")};
	case "life_inv_salt": {("textures\icons\salt.paa")};
	case "life_inv_saltr": {("textures\icons\salt_r.paa")};
	case "life_inv_glass": {("textures\icons\glass.paa")};
	case "life_inv_diamond": {("textures\icons\diamondp.paa")};
	case "life_inv_diamondr": {("textures\icons\diamondu.paa")};
	//case "life_inv_tbacon": {("textures\icons\.paa")};
	case "life_inv_redgull": {("textures\icons\redgull.paa")};
	case "life_inv_lockpick": {("textures\icons\lockpick.paa")};
	//case "life_inv_peach": {("textures\icons\.paa")};
	case "life_inv_coke": {("textures\icons\cocaine.paa")};
	case "life_inv_cokep": {("textures\icons\cocainep.paa")};
	case "life_inv_spikeStrip": {("textures\icons\spikestrip.paa")};
	case "life_inv_rock": {("textures\icons\rock.paa")};
	case "life_inv_cement": {("textures\icons\cement.paa")};
	case "life_inv_goldbar": {("textures\icons\goldbar.paa")};
	case "life_inv_blastingcharge": {("textures\icons\c-4.paa")};
	case "life_inv_boltcutter": {("textures\icons\boltcutters.paa")};
	case "life_inv_defusekit": {("textures\icons\defusekit.paa")};
	case "life_inv_storagesmall": {("textures\icons\storagesmall.paa")};
	case "life_inv_storagebig": {("textures\icons\storagebig.paa")};
	case "life_inv_cotton": {("textures\icons\cotton.paa")};
	case "life_inv_APDuniform": {("textures\icons\apduniforms.paa")};
	//case "life_inv_mash": {("textures\icons\.paa")};
	case "life_inv_yeast": {("textures\icons\yeast.paa")};
	case "life_inv_rye": {("textures\icons\rye.paa")};
	case "life_inv_hops": {("textures\icons\hops.paa")};
	case "life_inv_whiskey": {("textures\icons\bottledwhiskey.paa")};
	case "life_inv_beerp": {("textures\icons\beerp.paa")};
	case "life_inv_bottles": {("textures\icons\bottle.paa")};
	case "life_inv_cornmeal": {("textures\icons\cornmeal.paa")};
	case "life_inv_bottledwhiskey": {("textures\icons\bottledwhiskey.paa")};
	case "life_inv_bottledbeer": {("textures\icons\.paa")};
	case "life_inv_bottledshine": {("textures\icons\moonshine.paa")};
	case "life_inv_moonshine": {("textures\icons\moonshine.paa")};
	case "life_inv_speedbomb": {("textures\icons\c-4.paa")};
	case "life_inv_uwsl": {("textures\icons\c-4.paa")};
	case "life_inv_extacy": {("textures\icons\extasy.paa")};
	case "life_inv_lsdx": {("textures\icons\lsdx.paa")};
	//case "life_inv_methx": {("textures\icons\.paa")};
	case "life_inv_rso": {("textures\icons\rso.paa")};
	case "life_inv_bho": {("textures\icons\bho.paa")};
	case "life_inv_hash": {("textures\icons\hash.paa")};
	case "life_inv_heroinp": {("textures\icons\heroinp.paa")};
	case "life_inv_zipties": {("textures\icons\zipties.paa")};
	case "life_inv_handcuffs": {("textures\icons\handcuffs.paa")};
};
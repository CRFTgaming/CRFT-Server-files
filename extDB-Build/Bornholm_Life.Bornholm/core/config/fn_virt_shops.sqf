/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig","uwsl"]]};
	case "rebel": {["Rebel Market",["water","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge", "zipties","speedbomb"]]};
	case "gang": {["Gang Market", ["water","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter", "zipties"]]};
	case "rebel": {["Rebel Market",["water","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge", "zipties","speedbomb"]]};
	case "gang": {["Gang Market", ["water","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter", "zipties"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","apple","redgull","fuelF","defusekit","handcuffs"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "bar": {["The Lounge",["bottledbeer","bottledwhiskey","bottles"]]};
	case "speakeasy": {["Speakeasy's",["bottledwhiskey","bottledshine","bottledbeer","cornmeal","bottles"]]};
	case "med_market": {["Medic Market",["water","apple","redgull","tbacon","fuelF","peach","lockpick"]]};
};
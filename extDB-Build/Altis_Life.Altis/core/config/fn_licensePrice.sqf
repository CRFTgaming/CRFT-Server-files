/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1000}; //Drivers License cost
	case "boat": {500}; //Boating license cost
	case "pilot": {150000}; //Pilot/air license cost
	case "gun": {25000}; //Firearm/gun license cost
	case "dive": {1000}; //Diving license cost
	case "oil": {28000}; //Oil processing license cost
	case "cair": {65000}; //Cop Pilot License cost
	case "swat": {85000}; //Swat License cost
	case "cg": {1000}; //Coast guard license cost
	case "heroin": {45000}; //Heroin processing license cost
	case "marijuana": {25000}; //Marijuana processing license cost
	case "medmarijuana": {30000}; //Medical Marijuana processing license cost
	case "gang": {45000}; //Gang license cost
	case "rebel": {175000}; //Rebel license cost
	case "truck": {48000}; //Truck license cost
	case "diamond": {90000};
	case "salt": {35000};
	case "cocaine": {45000};
	case "sand": {14500};
	case "iron": {12500};
	case "copper": {11500};
	case "cement": {10500};
	case "mair": {56000};
	case "home": {150000};
	case "stiller":{1000};
	case "liquor":{1000};
	case "bottler":{1000};
	case "mash":{1000};
	case "cotton":{0};
	case "bounty":{450000};
};
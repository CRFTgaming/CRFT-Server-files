/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health", "_cash", "_bank"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_cash = _ui displayCtrl 23516;
_bank = _ui displayCtrl 23517;
_thisServer = _ui displayCtrl 23518;
_homeServer = _ui displayCtrl 23519;

//Update food
_food ctrlSetPosition [safeZoneX+safeZoneW-0.11,safeZoneY+safeZoneH-0.548];
_food ctrlSetText format["%1", life_hunger];
_food ctrlCommit 0;
//Update Water
_water ctrlSetPosition [safeZoneX+safeZoneW-0.11,safeZoneY+safeZoneH-0.502];
_water ctrlSetText format["%1", life_thirst];
_water ctrlCommit 0;
//Update Health
_health ctrlSetPosition [safeZoneX+safeZoneW-0.11,safeZoneY+safeZoneH-0.456];
_health ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_health ctrlCommit 0;

// Update cash.
_cash ctrlSetPosition [safeZoneX+safeZoneW-0.11,safeZoneY+safeZoneH-0.406];
_cash ctrlSetText format["%1", format["%1",[life_cash] call life_fnc_numberText]];
_cash ctrlCommit 0;

// Update bank.
_bank ctrlSetPosition [safeZoneX+safeZoneW-0.11,safeZoneY+safeZoneH-0.356];
_bank ctrlSetText format["%1", format["%1",[life_atmcash] call life_fnc_numberText]];
_bank ctrlCommit 0;

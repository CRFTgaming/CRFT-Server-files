#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(str(player) in ["medic_1","medic_2","medic_3","medic_4"]) then {
    if((__GETC__(life_medicLevel)) < 1) exitWith {
      ["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
      sleep 35;
   };
};

player setVariable["rank",(__GETC__(life_mediclevel)),true];
[] call life_fnc_medicLoadout;
[] call life_fnc_Uniformscolor;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
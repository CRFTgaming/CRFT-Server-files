#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 2900)};
_display = findDisplay 2900;
_list = _display displayCtrl 2902;

#define CtrlCompensate 2904
#define CtrlRepairBuilding 2911

// Set some safe defaults
ctrlShow [CtrlCompensate, false];
ctrlShow [CtrlFreezeTarget, false];
ctrlShow [CtrlRepairBuilding, false];

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

// Quick lookup chart for admin levels:
// Admin level 1 = Moderators
// Admin level 2 = Lower admin
// Admin level 3 = owners

switch(__GETC__(life_adminlevel)) do {
	case 1: {
		ctrlShow [CtrlCompensate, true];
	};

	case 2: {
		ctrlShow [CtrlCompensate, true];
		ctrlShow [CtrlRepairBuilding, true];
	};

	case 3: {
		ctrlShow [CtrlCompensate, true];
		ctrlShow [CtrlRepairBuilding, true];
	};

	case 4: {
		ctrlShow [CtrlCompensate, true];
		ctrlShow [CtrlRepairBuilding, true];
	};

	case 5: {
		ctrlShow [CtrlCompensate, true];
		ctrlShow [CtrlRepairBuilding, true];
	};
};
//Purge List
lbClear _list;

{
	_side = switch(side _x) do {case west: {"Cop"}; case civilian: {"Civ"}; case independent: {"Medic"}; default {"Unknown"};};
	_list lbAdd format["%1 - %2", _x getVariable["realname",name _x],_side];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;
if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0;};
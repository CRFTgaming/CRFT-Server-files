#include <macro.h>
/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/

// Rules for restraining:
// 1. Public cops can restrain anybody *except* other cops.
// 2. Cop level > 2 can restrain anybody *including* other cops.
// 3. Rebels can restrain anybody as long as they have zip ties.

private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith { hint "No cursor target to restrain"; }; //Not valid
if((_unit getVariable "restrained")) exitWith { hint "Player already restrained."; };
if((player getVariable "restrained")) exitWith { hint "You cannot restrain someone when you are restrained."; };
if(player == _unit) exitWith { hint "You cannot restrain yourself!"; };
if(!isPlayer _unit) exitWith { hint "Cursor target is not a player"; };
if((player distance _unit > 3)) exitWith { hint "Target is too far way to restrain."; };

// As long as a civ is a rebel and has zip ties, he can restrain anybody.
if (side player == civilian) then {
	if (life_inv_zipties < 1) exitWith { hint "You have no zipties."; };
	if (!license_civ_rebel) exitWith { hint "Only rebels can use zipties!"; };
	life_inv_zipties = life_inv_zipties - 1;
	hint "Target restrained, use your interaction menu for more options";
};

// Cops < lvl 2 cannot restrain other cops.
if (side player == west) then {
	if (side _unit == west) then {
		if (__GETC__(life_coplevel) < 2) exitWith { hint "You cannot restrain another cop cadet!"; };
	};
};

//Broadcast!

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

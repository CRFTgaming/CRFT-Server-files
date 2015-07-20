/*
	File: fn_pulloutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Manage pulling of people out of vehicles.

*/
private["_crew"];
_crew = crew cursorTarget;

{
	// Pull out the person if they're being transported OR if they're being
	// pulled out by a cop.
	if (_x getVariable["transporting", false] || (side player == west)) then {
		_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
		[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
	};
} foreach _crew;

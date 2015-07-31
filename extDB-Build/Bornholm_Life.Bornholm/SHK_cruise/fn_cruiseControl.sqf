/* //////////////////////////////////////////////
Original Author and point of inspiration
Vehicle Cruise Control Mod
By Allen Kaganovsky
http://kaganovsky.ca

See it here:
http://opendayz.net/threads/vehicle-cruise-control-server-side-script.18583/

/////////////////////////////////////////////////

Current Modification Author: J.Shock
Note and thanks to DreadedEnitity for debugging.

Modifications: Move from a modded platform to a script/function version.
			   Allowed cruise control at speed when cruise control was 
			   set (not predefined).
			   
File: fn_cruiseControl.sqf
Parameters: None

*///////////////////////////////////////////////



cruiseSet = false;

cruiseSet = true;
SHK_setHint = composeText [parseText "<t color='#6cdd23' size='1' align='center' >Cruise Control Set</t>"];
SHK_stopHint = composeText [parseText "<t color='#ff0000' size='1' align='center' >Cruise Control Disabled</t>"];
publicVariable "cruiseSet";
hint SHK_setHint;
SHK_veh removeAction veh_action;
	
(findDisplay 46) displayAddEventHandler ["KeyDown","
	_keyDown = _this select 1;
	if (_keyDown == 0x1F) then {
		if (cruiseSet) then {
		hint SHK_stopHint;
		veh_action = SHK_veh addAction [""Cruise Control"",""[[],'SHK_fnc_cruiseControl',player,false,false] call BIS_fnc_MP"",[], 4, false, false, '', '(driver SHK_veh == player) && (speed (vehicle player) >=30)'];
		cruiseSet = false;
		publicVariable 'cruiseSet';
		};
};"];

_speed = speed SHK_veh;
	
while {cruiseSet} do {
	
	if (isNil {vehicle player}) exitWith { cruiseSet = false; publicVariable "cruiseSet"; };
	if (_speed < 30) exitWith { hint "Moving to slow for cruise control."; cruiseSet = false; publicVariable "cruiseSet"; };
	if (damage SHK_veh > 0.5) exitWith { hint "Vehicle is too damaged to continue on cruise control."; cruiseSet = false; publicVariable "cruiseSet";};
	_dir = getDir SHK_veh;
	_x = (sin _dir)*(_speed/3.6);
	_y = (cos _dir)*(_speed/3.6);
	SHK_veh setVelocity [(_x), (_y), ((velocity SHK_veh) select 2)];
	sleep 0.05;
};
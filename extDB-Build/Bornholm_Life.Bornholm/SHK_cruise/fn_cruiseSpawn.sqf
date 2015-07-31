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
			   
File: fn_cruiseSpawn.sqf
Parameters: None

*///////////////////////////////////////////////

_trg = createTrigger ["EmptyDetector", [0,0,0]];
_trg setTriggerArea [0, 0, 0, false];
_trg setTriggerActivation ["NONE", "PRESENT", true];
_trg setTriggerStatements ["('Car' countType [(vehicle player)] > 0)",
"SHK_veh = vehicle player;
veh_action = SHK_veh addAction ['Cruise Control',""[[],'SHK_fnc_cruiseControl',player,false,false] call BIS_fnc_MP"",[], 4, false, false, '', '(driver SHK_veh == player) && (speed (vehicle player) >=30)'];",
"SHK_veh removeAction veh_action; SHK_veh = nil;"];
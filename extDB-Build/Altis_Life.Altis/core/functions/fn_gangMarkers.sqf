// File:   fn_gangMarkers.sqf
// Author: San Mehat
// Desc:   Display markers for gang members on the map.

#include <macro.h>

private["_gangMarkers"];

_gangMarkers = [];
while {true} do {
	// Delete markers for people no longer in the gang.
	{
		if (!(_x in units player)) then {
			deleteMarkerLocal str _x;
		};
	} forEach _gangMarkers;
	_gangMarkers = [];

	// Draw / Update markers for current gang locations.
	{
		if(alive _x && isplayer _x && player != _x) then {
			deleteMarkerLocal str _x;
			_pSee = createMarkerLocal [str _x,getPos _x];
			_pSee setMarkerTypeLocal "mil_triangle";
			_pSee setMarkerPosLocal getPos _x;
			_pSee setMarkerSizeLocal [1,1];
			_pSee setMarkerTextLocal format['%1',_x getVariable["realname",name _x]];
			_pSee setMarkerColorLocal ("ColorGrey");
			_gangMarkers = _gangMarkers + [_x];
		};
	} foreach (units grpPlayer);
	sleep 0.2;
};

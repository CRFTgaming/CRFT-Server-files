#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	32 hours later...
*/
private["_grp","_grpMembers"];

if(steamid == (grpPlayer getVariable "gang_owner")) exitWith {hint localize "STR_GNOTF_LeaderLeave"};

_grp = grpPlayer;
_grpMembers = grpPlayer getVariable "gang_members";
_grpMembers = _grpMembers - [steamid];
_grp setVariable["gang_members",_grpMembers,true];
[[4,grpPlayer],"TON_fnc_updateGang",false,false] call life_fnc_MP;

hint "Leaving gang...";
sleep 10;
hint "You have left your gang";
[player] joinSilent (createGroup civilian);

closeDialog 0;
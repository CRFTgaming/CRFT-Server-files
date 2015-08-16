waituntil 
{!alive player ; !isnull (finddisplay 46)};

if 
		((getPlayerUID player) in 
		["76561198105556705","76561198134898961","76561198032047520","76561198054879039","76561197966618733","76561198056017572","76561198058368737","76561198033984650","76561198030376566","76561198089779519","76561198149395868"]) then {
	sleep 10;
	//execVM "addons\scripts\script_adminMenu.sqf";
} else {
	execVM "addons\scripts\script_afkKick.sqf";
};
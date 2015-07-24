/*
	File: exec.sqf
	Author: Lt.Bigglesworth / Itsyuka (AltisLifeRPG Forums)
	Description:
	Finds Player UID and allows access to the Admin Tools and starts up the anti-afk system.
*/
// Admin Tool and Afk kick
//   - NeTTwerk, Rad, Xane, Wolf, Soundman, Casey, Preacher, Cincinatus,
//     Toast, DriftingNitro, Clay
waituntil 
{!alive player ; !isnull (finddisplay 46)};

if 
		((getPlayerUID player) in 
		["76561197969879086", "76561198032047520", "76561197979697671",
		"76561198040050837", "76561197966156995", "76561198134898961",
        "76561197963876904", "76561198008962683", "76561197983394081",
        "76561198028017369", "76561197980077228"]) then {
	sleep 10;
	//execVM "addons\scripts\script_adminMenu.sqf";
} else {
	execVM "addons\scripts\script_afkKick.sqf";
};
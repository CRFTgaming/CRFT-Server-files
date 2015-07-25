/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 9; //<-- How long is the text on the screen for ? Recommended: 1

sleep 25; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome to";
_role1names = ["CRFT Gaming's Bornholm Server"];
_role2 = "IMPORTANT NOTICE:";
_role2names = ["This is a role-play server!  Please press M and read the Server Rules"];
_role3 = "Owners:";
_role3names = ["Casey, Rad, Flamez, Talos"];
_role4 = "Lead Developer:";
_role4names = ["Tundra"];
_role5 = "Graphical Designer:";
_role5names = ["Doppler"];
_role6 = "Map Editor:";
_role6names = ["Aceshadow"];
_role7 = "Admins:";
_role7names = [""];
_role8 = "Tamspeak:";
_role8names = ["192.111.144.6"];
_role9 = "Website:";
_role9names = ["www.crftgaming.org"];
_role10 = "Controls:";
_role10names = ["Windows Key - Interact <br/>Y Key - Player Menu <br/> SHIFT+H - Holster <br/> CTRL+H - UnHolster <br/> SHIFT+G -  Surrender <br/> SHIFT+SPACE - Jump <br/> SHIFT+O - Rebel Restrain <br/> SHIFT+P - Ear Plugs <br/> SHIFT+C - Remove Comms (cops and civs)"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#FF0000' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7],  //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names]
];

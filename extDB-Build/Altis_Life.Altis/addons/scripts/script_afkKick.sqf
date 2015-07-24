/*
    File: script_afkKick.sqf
    Author: From Wolf Pack Hacker Spanker
    Description:
    Kicks players who afk after 30 min.
*/

[] spawn
{
	private ["_new","_old","_kick"];
	_old = getPos player;
	_kick = false;
	while {true} do {
		sleep (15*60);
		_new = getPos player;
		if ((_new select 0 == _old select 0) && (_new select 1 == _old select 1)) then {
			if (_kick) then {
				endMission "Loser";
			} else {
				_kick = true;
				hint "You will be kicked in 15 minutes for being AFK.";
			};
		} else {
			_kick = false;
		};
		_old = _new;
	};
};

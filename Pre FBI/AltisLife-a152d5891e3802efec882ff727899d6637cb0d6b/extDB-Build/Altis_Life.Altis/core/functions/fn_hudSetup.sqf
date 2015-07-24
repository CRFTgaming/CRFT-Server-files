/*
	File: fn_hudSetup.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Setups the hud for the player?
*/
private["_display","_alpha","_version","_p","_pg"];
disableSerialization;
_display = findDisplay 46;
_alpha = _display displayCtrl 1001;
_version = _display displayCtrl 1000;

2 cutRsc ["playerHUD","PLAIN"];
_version ctrlSetText format["BETA: 0.%1.%2",(productVersion select 2),(productVersion select 3)];
[] call life_fnc_hudUpdate;

[] spawn
{
	private["_dam", "_cash", "_bank"];
	while {true} do
	{
		_dam = damage player;
                _cash = life_cash;
                _bank = life_atmcash;
                waitUntil {
                  if (((damage player) != _dam) ||
                      (life_cash != _cash) ||
                      (life_atmcash != _bank)) exitWith {
                    true;
                  };
                  false;
                };
		[] call life_fnc_hudUpdate;
	};
};

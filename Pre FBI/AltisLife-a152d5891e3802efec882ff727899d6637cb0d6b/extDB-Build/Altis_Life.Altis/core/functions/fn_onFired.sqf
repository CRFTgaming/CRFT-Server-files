/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles various different ammo types being fired.
*/
private["_unit", "_ammoType","_projectile", "_inSafeZone"];
_unit = _this select 0;
_ammoType = _this select 4; 
_projectile = _this select 6;

_inSafeZone = [_unit] call life_fnc_isInSafeZone;

if (_inSafeZone) exitWith {
  deleteVehicle _projectile;
  hint "GameMaster: You may not fire a weapon in a safe-zone.\n\nProjectile removed!";
};

if(_ammoType == "GrenadeHand_stone") then {
	_projectile spawn {
		private["_position"];
		while {!isNull _this} do {
			_position = getPosATL _this;
			sleep 0.1;
		};
		[[_position],"life_fnc_flashbang",true,false] spawn life_fnc_MP;
	};
};
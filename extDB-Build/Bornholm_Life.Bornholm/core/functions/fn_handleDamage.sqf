/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep", "_inSafeZone"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

// If the damaged unit is within a safe-zone then no damage!
_inSafeZone = [_unit] call life_fnc_isInSafeZone;
if (_inSafeZone) exitWith { false; };


// Medics have an extra pool of health to draw upon when they're hit. This
// extra pool will negate some of the damage received (up to a maximum of
// 70%).

diag_log format["Raw damage: %1", _damage];

if (playerSide == independent) then {
  if (_damage < 0.3) exitWith {};
  if (life_med_extra_health > 0 ) then {
    private ["_damageNegation"];
    _damageNegation = 0.7;  // Maximum amount that can be negated.

    // If the player doesn't have that much then reduce.
    if (life_med_extra_health < _damageNegation) then {
      _damageNegation = life_med_extra_health;
    };
    diag_log format["Medic taking damage. OrigDmg: %1, ExtraHealthPool: %2, DmgNegation %3",
                    _damage, life_med_extra_health, _damageNegation];

    life_med_extra_health = life_med_extra_health - _damageNegation;
    _damage = _damage - _damageNegation;
  };
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["B_9x21_Ball"] && _curWep in ["hgun_P07_snds_F"]) then {
			private["_distance","_isVehicle","_isQuad"];
			_distance = if(_projectile == "B_9x21_Ball") then {100} else {35};
			_isVehicle = if(vehicle player != player) then {true} else {false};
			_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
			_damage = false;
			if(_unit distance _source < _distance) then {
				if(!life_istazed && !(_unit getVariable["restrained",false])) then {
					if(_isVehicle && _isQuad) then {
						player action ["Eject",vehicle player];
						[_unit,_source] spawn life_fnc_tazed;
					} else {
						[_unit,_source] spawn life_fnc_tazed;
					};
				};
			};
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = false;
			};
		};
	};
};
//rubber bullets
if(!isNull _source) then {
	if(_source != _unit) then {
		_curMag = currentMagazine _source;
		if (_curMag in ["30Rnd_65x39_caseless_mag_Tracer"] && _projectile in ["B_65x39_Caseless"]) then {
			if((side _source == west && playerSide != west)) then {
				private["_isVehicle"];
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_damage = false;
				_damageHandle = false;
				if(!(_isVehicle && !life_istazed)) then {
					//Copy a knocking out function instead of using the tazing function on the server
					[player,"Rubber Bullet",true] spawn life_fnc_rubberbullet;

				
				};
			};
			
			//Change _damagae = true to false if you do not want cops to kill eachother with these. _damagaHandle is being used also so they take no damage aswell.
			if(playerSide == west && side _source == west) then {
				_damage = false;
				_damageHandle = false;
			};
		};
	};
};




[] call life_fnc_hudUpdate;
_damage;
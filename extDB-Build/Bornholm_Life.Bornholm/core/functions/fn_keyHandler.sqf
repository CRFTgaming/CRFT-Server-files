/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
#include <macro.h>

private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	// Shift+O zipties the target (if rebel)
	case 24:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player)) then {
			[] call life_fnc_copOpener;
		};
		private ["_inSafeZone"];
		_inSafeZone = [player] call life_fnc_isInSafeZone;
		if (_shift) then {_handled = true;};
		if (_shift && playerSide == civilian && license_civ_rebel && !isNull cursorTarget &&
		    cursorTarget isKindOf "Man" && (isPlayer cursorTarget) &&
		    alive cursorTarget && cursorTarget distance player < 3.5 &&
		    !(cursorTarget getVariable "Escorting") &&
		    !(cursorTarget getVariable "restrained") &&
		    speed cursorTarget < 1 && !_inSafeZone) then {
			if([false,"zipties",1] call life_fnc_handleInv) then {
				[] call life_fnc_restrainAction;
			} else {
				hint "You have no zipties!";
			};
		};
	};

	//Space key for Jumping
	case 57: {
		if (life_barrier_active) then {
			[] spawn life_fnc_placeablesPlaceComplete;
			_handled = true;
		} else {
			if(isNil "jumpActionTime") then {jumpActionTime = 0;};
			if(_shift && {!(EQUAL(animationState player,"AovrPercMrunSrasWrflDf"))} && {isTouchingGround player} && {EQUAL(stance player,"STAND")} && {speed player > 2} && {!life_is_arrested} && {SEL((velocity player),2) < 2.5} && {time - jumpActionTime > 1.5}) then {
				jumpActionTime = time; //Update the time.
				[player,true] spawn life_fnc_jumpFnc; //Local execution
				[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
				_handled = true;
			};
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	// Shift-R:
        //   Cops: Restrain.
        //   Civs: Knock-out if they have a gun and the target is < 4M and not moving.
	case 19:
	{
		if (_shift) then {_handled = true;};
		if (_shift && playerSide == west && !isNull cursorTarget &&
		    cursorTarget isKindOf "Man" && (isPlayer cursorTarget) &&
		    alive cursorTarget && cursorTarget distance player < 3.5 &&
		    !(cursorTarget getVariable "Escorting") &&
		    !(cursorTarget getVariable "restrained") &&
		    speed cursorTarget < 4) then {
				if([false,"handcuffs",1] call life_fnc_handleInv) then {
				[] call life_fnc_restrainAction;
				} else {
				hint "You have no handcuffs!";
			};
		};

		if (_shift && playerSide == civilian && !isNull cursorTarget &&
		    cursorTarget isKindOf "Man" && isPlayer cursorTarget &&
		    alive cursorTarget && cursorTarget distance player < 4 &&
		    speed cursorTarget < 1) then {
			private ["_inSafeZone"];
			_inSafeZone = [player] call life_fnc_isInSafeZone;
			diag_log format["Knockout safezone check = %1", _inSafeZone];

			if (_inSafeZone) exitWith {
				hint "You cannot knock someone out in a safe-zone.";
			};

                        if ((animationState cursorTarget) == "Incapacitated") exitWith {
				hint "Target is already incapacitated.";
			};
			if ((currentWeapon player) == "") exitWith {
				hint "You must be holding a weapon to knock someone out.";
			};
			if ((currentWeapon player) != (primaryWeapon player) &&
			    (currentWeapon player) != (handgunWeapon player)) exitWith {
				hint "You need to be holding a gun to knock someone out.";
			};
			if (life_knockout) exitWith {
				hint "You cannot knock someone out when you're knocked out.";
			};
			if (life_istazed) exitWith {
				hint "You cannot knock someone out when you're tazed.";
			};
			if (player getVariable["restrained", false]) exitWith {
				hint "You cannot knock someone out when you're restrained.";
			};

			[cursorTarget] spawn life_fnc_knockoutAction;
		}
	};

	//C remove comms
	case 46:
	{
		if (_shift && cursorTarget distance player < 3.5 && (cursorTarget getVariable "restrained") && speed cursorTarget < 4) then {
			if("ItemRadio" in assignedItems cursorTarget) then 
    		{
      			cursorTarget removeweapon "ItemRadio";
      			hint "The players comms, map, and gps have been removed.";
     		};
     		if("ItemMap" in assignedItems cursorTarget) then 
    		{
      			cursorTarget removeweapon "ItemMap";
      			hint "The players comms, map, and gps have been removed.";
     		};
     		if("ItemGPS" in assignedItems cursorTarget) then 
    		{
      			cursorTarget removeweapon "ItemGPS";
      			hint "The players comms, map, and gps have been removed.";
     		};
		};
	};

	// Surrender
	case 34:
	{
		if(_shift) then {_handled = true;};

		if (_shift) then {
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then {
				if (player getVariable ["surrender", false]) then {
					player setVariable ["surrender", false, true];
				} else {
					[] spawn life_fnc_surrender;
				};
			};
		};

	};
	
	//Knock out, this is experimental and yeah...
	case 34:
	{
  		if(_shift) then {_handled = true;};
  		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
  		{
   			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
   			{
    			[cursorTarget] spawn life_fnc_knockoutAction;
   			};
  		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] spawn life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F" OR cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 10 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] spawn life_fnc_openInventory;
					};
					if (cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F") then {
						[cursorTarget] spawn life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key (lights)
	case 38: 
	{
		if(_shift) then {
			if(vehicle player != player &&
			   (typeOf vehicle player) in ["C_Offroad_01_F", "B_MRAP_01_F", "C_SUV_01_F", "C_Hatchback_01_F", "C_Hatchback_01_sport_F", "C_Heli_Light_01_civil_F","I_MRAP_03_F","B_Quadbike_01_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide in [west, civilian]) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_repair_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide in [civilian]) then {
						[vehicle player] call life_fnc_repairSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	//F Key
	case 33:
	{
		if(_shift) then
        {
            if(playerSide == west && vehicle player != player && !life_siren2_active && ((driver vehicle player) == player)) then
            {
                [] spawn
                {
                    life_siren2_active = true;
                    sleep 1.2;
                    life_siren2_active = false;
                };
                _veh = vehicle player;
                if(isNil {_veh getVariable "siren2"}) then {_veh setVariable["siren2",false,true];};
                if((_veh getVariable "siren2")) then
                {
                    titleText ["Yelp Off","PLAIN"];
                    _veh setVariable["siren2",false,true];
                }
                    else
                {
                    titleText ["Yelp On","PLAIN"];
                    _veh setVariable["siren2",true,true];
                    [[_veh],"life_fnc_copsiren2",nil,true] spawn life_fnc_MP;
                };
            };
        };
		
		if (!_shift) then
		{
	        if(playerSide == west && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
	        {
	            [] spawn
	            {
	                life_siren_active = true;
	                sleep 5.0;
	                life_siren_active = false;
	            };
	            _veh = vehicle player;
	            if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
	            if((_veh getVariable "siren")) then
	            {
	                titleText ["Sirens Off","PLAIN"];
	                _veh setVariable["siren",false,true];
	            }
	                else
	            {
	                titleText ["Sirens On","PLAIN"];
	                _veh setVariable["siren",true,true];
	                [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
	            };
	        };

	        if(playerSide == independent && vehicle player != player && !life_sirenI_active && ((driver vehicle player) == player)) then
	        {
	            [] spawn
	            {
	                life_siren_active = true;
	                sleep 5.0;
	                life_siren_active = false;
	            };
	            _veh = vehicle player;
	            if(isNil {_veh getVariable "sirenI"}) then {_veh setVariable["sirenI",false,true];};
	            if((_veh getVariable "sirenI")) then
	            {
	                titleText ["Sirens Off","PLAIN"];
	                _veh setVariable["sirenI",false,true];
	            }
	                else
	            {
	                titleText ["Sirens On","PLAIN"];
	                _veh setVariable["sirenI",true,true];
	                [[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
	            };
	        }; 

	        if(playerSide == civilian && (__GETC__(life_adminlevel) == 5) && vehicle player != player && !life_sirenA_active && ((driver vehicle player) == player)) then
	        {
	            [] spawn
	            {
	                life_siren_active = true;
	                sleep 5.0;
	                life_siren_active = false;
	            };
	            _veh = vehicle player;
	            if(isNil {_veh getVariable "sirenA"}) then {_veh setVariable["sirenA",false,true];};
	            if((_veh getVariable "sirenA")) then
	            {
	                titleText ["Sirens Off","PLAIN"];
	                _veh setVariable["sirenA",false,true];
	            }
	                else
	            {
	                titleText ["Sirens On","PLAIN"];
	                _veh setVariable["sirenA",true,true];
	                [[_veh],"life_fnc_repairSiren",nil,true] spawn life_fnc_MP;
	            };
	        };
        };                                          
    };
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8 && alive _veh) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						player say3D "car_lock";
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
						player say3D "car_lock";
					};
				};
			};
		};
	};
	// Ear Plugs
	//Shift+P = Faded Sound
	case 25:
	{
		if(_shift) then
		{
			[] call life_fnc_fadeSound;
			_handled = true;
		};
	};
	
	// DELETE key (delete object for lower admins and higher)
	case 211:
	{
		if (__GETC__(life_adminlevel) < 2) exitWith {};
		_veh = cursorTarget;
		if (!(_veh isEqualTo objNull)) then {
			deleteVehicle _veh;
			systemChat format["ARMA3 vehicle deleted. %1 vehicles remaining in the world", (count vehicles)];
		} else {
			systemChat format["No target to delete. %1 vehicles remaining in the world", (count vehicles)];
		};
		_handled = true;
	};
    true;
};
};


_handled;
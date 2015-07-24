/*
    File: fn_impoundAction.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Impounds the vehicle
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_ropes","_addExpAmount","_valBon","_cpUp","_m","_m1"];
if(cursorTarget isKindOf "House_F") exitWith {};
//if(player distance (getMarkerPos "jail_marker") < 45) exitWith {hint "You cannot impound this close to the prison";};
_vehicle = cursorTarget;
_addExpAmount = 0;
_valBon = 0;
_time = 0.5; _cpUp = 0.009;_m = 0.05;_m1 = 0.1;
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")|| (_vehicle isKindOf "Tank"))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};
if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Tank")) then
{
    _vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
    if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle}; //Bad vehicle.
    _vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
    [[0,"STR_NOTF_BeingImpounded",true,[(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
    life_action_inUse = true;
    _data = missionNamespace getVariable "Impound_Prof";
    switch ( _data select 0 ) do
    {
            case 0: { _time = 0.5; _cpUp = 0.01;_m = 0.005;_m1 = 0.1;};
            case 1: { _time = 0.4; _cpUp = 0.01;_m = 0.008;_m1 = 0.11;};
            case 2: { _time = 0.35; _cpUp = 0.01;_m = 0.01;_m1 = 0.12;};
            case 3: { _time = 0.3; _cpUp = 0.01;_m = 0.015;_m1 = 0.13;};
            case 4: { _time = 0.25; _cpUp = 0.01;_m = 0.017;_m1 = 0.14;};
            case 5: { _time = 0.2; _cpUp = 0.01;_m = 0.020;_m1 = 0.15;};
            case 6: { _time = 0.2; _cpUp = 0.02;_m = 0.022;_m1 = 0.16;};
            case 7: { _time = 0.2; _cpUp = 0.03;_m = 0.025;_m1 = 0.17;};
            case 8: { _time = 0.2; _cpUp = 0.04;_m = 0.028;_m1 = 0.18;};
            case 9: { _time = 0.15; _cpUp = 0.05;_m = 0.030;_m1 = 0.19;};
            case 10: { _time = 0.1; _cpUp = 0.07;_m = 0.033;_m1 = 0.20;};
            case 11: { _time = 0.1; _cpUp = 0.08;_m = 0.036;_m1 = 0.21;};
            case 12: { _time = 0.1; _cpUp = 0.09;_m = 0.04;_m1 = 0.22;};
            case 13: { _time = 0.09; _cpUp = 0.09;_m = 0.044;_m1 = 0.23;};
            case 14: { _time = 0.09; _cpUp = 0.09;_m = 0.046;_m1 = 0.24;};
            case 15: { _time = 0.09; _cpUp = 0.10;_m = 0.048;_m1 = 0.25;};
            case 16: { _time = 0.08; _cpUp = 0.11;_m = 0.050;_m1 = 0.26;};
            case 17: { _time = 0.08; _cpUp = 0.12;_m = 0.055;_m1 = 0.27;};
            case 18: { _time = 0.07; _cpUp = 0.12;_m = 0.060;_m1 = 0.28;};
            case 19: { _time = 0.06; _cpUp = 0.13;_m = 0.063;_m1 = 0.29;};
            case 20: { _time = 0.05; _cpUp = 0.14;_m = 0.065;_m1 = 0.3;};
    };
    
    _upp = localize "STR_NOTF_Impounding";
    //Setup our progress bar.
    disableSerialization;
    5 cutRsc ["life_progress","PLAIN"];
    _ui = uiNameSpace getVariable "life_progress";
    _progress = _ui displayCtrl 38201;
    _pgText = _ui displayCtrl 38202;
    _pgText ctrlSetText format["%2 (1%1)...","%",_upp];
    _progress progressSetPosition 0.01;
    _cpUp = _cpUp;
    _cP = 0.04;
    while{true} do
    {
        sleep 0.09;
        _cP = _cP + _cpUp;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
        if(_cP >= 1) exitWith {};
        if(player distance _vehicle > 10) exitWith {};
        if(!alive player) exitWith {};
    };
    5 cutText ["","PLAIN"];
    
    if(player distance _vehicle > 10) exitWith {hint localize "STR_NOTF_ImpoundingCancelled"; life_action_inUse = false;};
    if(!alive player) exitWith {life_action_inUse = false;};
    //_time = _vehicle getVariable "time";
    //if(isNil {_time}) exitWith {deleteVehicle _vehicle; hint "This vehicle was hacked in"};
    //if((time - _time) < 120) exitWith {hint "This is a freshly spawned vehicle, you have no right impounding it."};
    if((count crew _vehicle) == 0) then
    {
        if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Tank"))) exitWith {life_action_inUse = false;};
        _type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
        switch (true) do
        {
            case (_vehicle isKindOf "Car"): {_price = (call life_impound_car);};
            case (_vehicle isKindOf "Tank"): {_price = (call life_impound_car);};
            case (_vehicle isKindOf "Ship"): {_price = (call life_impound_boat);};
            case (_vehicle isKindOf "Air"): {_price = (call life_impound_air);};
        };
        
        life_impound_inuse = true;
        [[_vehicle,true,player],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
        //delete ropes on impound
        _ropes = (_vehicle getvariable ["zlt_ropes", []]);
        {deleteVehicle _x} foreach _ropes;
        _vehicle setvariable ["zlt_ropes", [], true];
        waitUntil {!life_impound_inuse};
        hint format[localize "STR_NOTF_Impounded",_type,_price];
        [[0,"STR_NOTF_HasImpounded",true,[profileName,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
        //[[0,format[localize "STR_NOTF_HasImpounded",name player,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
        
        
        _valBon = round(_price * 0.10);
        _addExpAmount = round(_valBon * _m);
        [[0,format["You have earned %1 XP and a bonus of $%2 for this impound", _addExpAmount, [_valBon] call life_fnc_numberText]],"life_fnc_broadcast",player,false] spawn life_fnc_MP;
        ["Impound_Prof",_addExpAmount] call life_fnc_addExp;
        life_atmcash = life_atmcash + _price + _valBon;
    }
        else
    {
        hint localize "STR_NOTF_ImpoundingCancelled";
    };
    diag_log format["Impound %1 | %2 | %3 | %4 | %5",_price,_valBon,_cP,_cpUp,_addExpAmount];
};
life_action_inUse = false; 
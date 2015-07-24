/*
	File: fn_robReceive.sqf
	Author: Bryan "Tonic" Boardwine
*/
private["_cash"];
_cash = [_this,0,0,[0]] call BIS_fnc_param;
if(_cash == 0) exitWith {titleText[localize "STR_Civ_RobFail","PLAIN"]};

life_cash = life_cash + _cash;
titleText[format[localize "STR_Civ_Robbed",[_cash] call life_fnc_numberText],"PLAIN"];
_data = missionNamespace getVariable "Thief_Prof";
_addExpAmount = 25;
_addExpAmount = _addExpAmount + (5 * (_data select 0));
["Thief_Prof",_AddExpAmount] call life_fnc_addExp;
[[0,format["You have earned %1 XP for robbing someone", _addExpAmount]],"life_fnc_broadcast",player,false] spawn life_fnc_MP; 
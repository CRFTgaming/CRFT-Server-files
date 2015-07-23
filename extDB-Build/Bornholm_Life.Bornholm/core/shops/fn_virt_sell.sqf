#include <macro.h>
/*
	File: fn_virt_sell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sell a virtual item to the store / shop
*/
private["_type","_index","_price","_var","_amount","_name"];
if((lbCurSel 2402) == -1) exitWith {};
_type = lbData[2402,(lbCurSel 2402)];
_index = [_type,__GETC__(sell_array)] call TON_fnc_index;
if(_index == -1) exitWith {};
_price = (__GETC__(sell_array) select _index) select 1;
_var = [_type,0] call life_fnc_varHandle;

_amount = ctrlText 2405;
if(!([_amount] call TON_fnc_isnumber)) exitWith {hint localize "STR_Shop_Virt_NoNum";};
_amount = parseNumber (_amount);
if(_amount > (missionNameSpace getVariable _var)) exitWith {hint localize "STR_Shop_Virt_NotEnough"};

_price = (_price * _amount);
_name = [_var] call life_fnc_vartostr;
if(([false,_type,_amount] call life_fnc_handleInv)) then
{
	hint format[localize "STR_Shop_Virt_SellItem",_amount,_name,[_price] call life_fnc_numberText];
	life_cash = life_cash + _price;
	[] call life_fnc_virt_update;
	
};

_valBon = round(_price * 0.1);
if(life_shop_type in ["meat","wongs","oil","fishmarket","farmer","glass","iron","diamond","salt","speakeasy"]) then {
 
    _profName = [_type] call life_fnc_profType;
    diag_log format ["_type %1 - _profName %2 - _var %3 - _name %4",_type,_profName,_var,_name];
    if( _profName != "" ) then {
            _data = missionNamespace getVariable (_profName);
            _addExpAmount = round(5 * _amount);
            if((_data select 0) > 0) then {_addExpAmount = round((5 * _amount) * ( _data select 0 ));};
            [[0,format["You have earned %1 XP and a bonus of $%2 for selling items to the marketplace", _addExpAmount, [_valBon] call life_fnc_numberText]],"life_fnc_broadcast",player,false] spawn life_fnc_MP;
            [_profName,_addExpAmount] call life_fnc_addExp;
    };
};
///replace drug dealer witht his one
if(life_shop_type == "heroin") then
{
    private["_array","_ind","_val"];
    _array = life_shop_npc getVariable["sellers",[]];
    _ind = [getPlayerUID player,_array] call TON_fnc_index;
    if(_ind != -1) then
    {
        _val = (_array select _ind) select 2;
        _val = _val + _price;
        _array set[_ind,[getPlayerUID player,profileName,_val]];
        life_shop_npc setVariable["sellers",_array,true];
    }
        else
    {
        _array pushBack [getPlayerUID player,profileName,_price];
        life_shop_npc setVariable["sellers",_array,true];
    };
    
    
    _profName = [_var] call life_fnc_profType;
    if( _profName != "" ) then {
            _data = missionNamespace getVariable (_profName);
            _addExpAmount = round(5 * _amount);
            if((_data select 0) > 0) then {_addExpAmount = round((5 * _amount) * ( _data select 0 ));};
            [[0,format["You have earned %1 XP and a bonus of $%2 for this drug deal", _addExpAmount, [_valBon] call life_fnc_numberText]],"life_fnc_broadcast",player,false] spawn life_fnc_MP;
            [_profName,_addExpAmount] call life_fnc_addExp;
    };
    if(player distance (getMarkerPos "Dealer_1") < 15 || player distance (getMarkerPos "Dealer_2") < 15) then {_bonusLoc = true;};
    if(_bonusLoc) then {life_cash = life_cash + _valBon;hint format["You have earned an extra cut ($%1) for dealing inside the cities, you badass..",[_valBon] call life_fnc_numberText];};
    _bonusLoc = false;
}; 

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
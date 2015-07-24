/*
File: fn_addExp.sqf
Author: Jacob "PapaBear" Tyler
Edited By: [midgetgrimm]
Description:
Add exp to given prof
*/
//add exp
_type = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param;
 
_profData = missionNamespace getVariable (_type);
//0 = level
//1 = exp
 
_level = (_profData select 0);//check this
_exp = (_profData select 1);
_nextLevel = 0;
_nextLevel = _level * ( _level - 1) * 500 ;    
if(_nextLevel < 1) then {_nextLevel = 500;};
_exp = _exp + _amount;
if( _exp >= _nextLevel ) then {
 
    if( _level >= 20 ) then {
 
        if( _exp >= _nextLevel ) then {
                _exp = _nextLevel;
                missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
        } else {
                missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
        };
 
    } else {
        _exp = _nextLevel - _exp;
        if(_exp < 0) then{_exp = 0;};
        missionNamespace setVariable [_type,[(_profData select 0) + 1,(_exp)]];
        if( _level == 20 ) then {
                _level = (_profData select 0) + 1;
                _text = [_type] call life_fnc_varToStr;
                hint parseText format["<t align='center'><t size='1.5'>CONGRATULATIONS!<br/>YOU ARE NOW</t><br/><t color='#FFFF00'><t size='2'>LVL: %1<br/>%2<br/></t></t></t>",_level,_text];
        } else {
                missionNamespace setVariable [_type,[(_profData select 0) + 1,(_exp)]];
                _level = (_profData select 0) + 1;
                _text = [_type] call life_fnc_varToStr;
                hint parseText format["<t align='center'><t size='1'>CONGRATULATIONS</t><br/><t color='#FFFF00'><t size='1.5'>%1</t></t><br/><t size='1.5'>ARE NOW AT</t><br/><t color='#0088CC'><t size='1.5'>LVL: %2</t></t></t>",_text,_level];
        };
 
 
    };
 
} else {
    missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
}; 
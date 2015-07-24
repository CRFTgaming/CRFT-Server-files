/*
    File: fn_profSetUp.sqf
    Original Author: Jacob "PapaBear" Tyler
    rewritten for list display by [midgetgrimm]
    Description:Opens GUI menu, but now is structured and pulls in life_prof based on having any and is selectable to view
*/
private["_dialog","_Names","_profText","_data","_profLevel","_profExp"];
createDialog "life_prof_dialog";
disableSerialization;
_dialog = findDisplay 7730;
_Names = _dialog displayCtrl 7731;
lbClear _Names;
 
{
    _profText = [_x select 0] call life_fnc_profType;
    _data = missionNamespace getVariable (_x select 0);
    _profLevel = _data select 0;
    _profExp = _data select 1;
    if(_profExp > 0 || _profLevel >= 1) then {
        _Names lbAdd format["%1",_profText];
        _Names lbSetData [(lbSize _Names)-1,str(_profText)];
    };
} foreach life_prof; 
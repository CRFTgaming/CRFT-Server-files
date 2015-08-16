#include <macro.h>
/*
 * Author: San Mehat
 * Desc: Returns true if the specified unit is in a safe-zone.
 */

private["_unit", "_out", "_z1", "_z1R", "_z2", "_z2R", "_z3", "_z3R", "_z4",
        "_z4R", "_z5", "_z5R", "_z6", "_z6R", "_z7", "_z7R"];
_unit = _this select 0;

_z1 = getMarkerPos "roe_sz";
_z1R = 550;
_z2 = getMarkerPos "Reb_Safe1";
_z2R = 100;
_z3 = getMarkerPos "Reb_Safe_1_1";
_z3R = 120;
_z4 = getMarkerPos "Athira_SZ";
_z4R = 30;
_z5 = getMarkerPos "Pyrgos_SZ";
_z5R = 350;
_z6 = getMarkerPos "Airfield_SZ";
_z6R = 100;
_z7 = getMarkerPos "Airfield_SZ_1";
_z7R = 175;

if ((_z1 distance _unit <= _z1R) or
    (_z2 distance _unit <= _z2R) or
    (_z3 distance _unit <= _z3R) or
    (_z4 distance _unit <= _z4R) or
    (_z5 distance _unit <= _z5R) or
    (_z6 distance _unit <= _z6R) or
    (_z7 distance _unit <= _z7R)) then {
        _out = true;
} else {
        _out = false;
};
_out;

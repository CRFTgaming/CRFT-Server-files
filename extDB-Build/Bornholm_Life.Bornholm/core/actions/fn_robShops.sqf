/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
Edited a bit by NeTTwerk....

  Arguments:
    0 - Shop unit (NPC).
    1 - The player attempting the robbery.
    2 - ID of the action used to initiate this robbery.
    3 - Array containing the following sub-arguments:
        0 - The name of the action to re-add.
        1 - Name of the shop to be used in message broadcasts.

*/
private["_shop", "_robber", "_actionId", "_newActionName", "_name", "_kassa",
        "_ui", "_progress", "_pgText", "_cP", "_abort"];

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_actionId = _this select 2;
_newActionName = _this select 3 select 0;
_name = _this select 3 select 1;
_kassa = 1000 + round(random 2000);

diag_log format["fn_robShops(): shop = %1, robber = %2, actionid = %3, newActionName = %4, name = %5",
                _shop, _robber, _actionId, _newActionName, _name];

if(side _robber != civilian) exitWith {
  hint "You can not rob this station!"
};

if(_robber distance _shop > 3.5) exitWith {
  hint "You need to be within 3.5m of the cashier to rob him!"
};

if (vehicle player != _robber) exitWith {
  hint "Get out of your vehicle!"
};

if !(alive _robber) exitWith {};

if (currentWeapon _robber == "") exitWith {
  hint "LOL - come back when you've got a weapon noob"
};

if (_shop getVariable "robbery_in_progress") exitWith {
  hint "Shop is already being robbed!";
};
_shop removeAction _actionId;
_shop setVariable ["robbery_in_progress", true, true];

_shop enableSimulation true;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_shop enableSimulation false;
_chance = random(100);
if(_chance >= 40) then {
  hint "The cashier hit the silent alarm, police have been alerted!";
  [[format["ALARM! - %1 is being robbed!", _name],_name,1],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;
};
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (3.5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
_abort = false;
while{true} do {
  sleep 0.85;
  _cP = _cP + 0.01;
  _progress progressSetPosition _cP;
  _pgText ctrlSetText format["Robbery in Progress, stay close (3.5m) (%1%2)...",round(_cP * 100),"%"];

  if(_cP >= 1) exitWith {};
  if(_robber distance _shop > 3.5) exitWith { _abort = true; };
  if!(alive _robber) exitWith {};
};

_shop setVariable ["robbery_in_progress", false, true];

if!(alive _robber) exitWith {};

if(_abort) exitWith {
  _shop switchMove "";
  hint "You need to stay within 3.5m to Rob register! - Now the register is locked.";
  5 cutText ["","PLAIN"];
};
5 cutText ["","PLAIN"];

life_cash = life_cash + _kassa;
[0] call SOCK_fnc_updatePartial;
titleText[format["You have stolen $%1, now get away before the cops arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
[[format["%1 was just robbed by %2 for a total of $%3", _name,name _robber, [_kassa] call life_fnc_numberText],_name,1],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;

life_use_atm = false;
sleep (15 * 60);
life_use_atm = true;
if!(alive _robber) exitWith {};
[[1,format["NEWS: %1 was just robbed for a total of $%2", _name, [_kassa] call life_fnc_numberText], false],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;

sleep 300;
_action = _shop addAction[_newActionName, life_fnc_robShops, [_newActionName, _name]];
_shop enableSimulation true;
_shop switchMove "";
_shop enableSimulation false;

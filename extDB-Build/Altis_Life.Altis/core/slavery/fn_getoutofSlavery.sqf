/*
	File: fn_getoutofSlavery.sqf
	@Foamy
	www.strainonline.com
	www.strainmod.com	
	Description:
	Gets the player out of Slavery.
*/
#include <macro.h>

if(life_inv_APDuniform < 24) exitWith {hint "Learn to count! You need 24!"};
if(life_inv_APDuniform > 23) then 
{
	[false,"APDuniform",24] call life_fnc_handleInv;
	slave_task1 setTaskState "You have won your freedom!";
	hint "You have pleased masta! You may go now.";
	player removeSimpleTask slave_task1;
};
player setPos (getMarkerPos "slave_trader_marker");
life_enslaved = false;
player setVariable["enslaved",true,true];
sleep (30 * 60);
player setVariable["enslaved",false,true];
hint "Watch out! You can be enslaved again!";
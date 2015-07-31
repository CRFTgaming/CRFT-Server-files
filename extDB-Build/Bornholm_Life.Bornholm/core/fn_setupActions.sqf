/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Mine from ship
		life_actions = [player addAction["Mine from Ship",life_fnc_deviceMine,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		// Sell PLayer into Slavery
		life_actions = life_actions + [player addAction["Sell Hostage",life_fnc_sellHostage,"",0,false,false,"",'
		!isNull cursorTarget && isPlayer cursorTarget && (side cursorTarget != independent) && (cursorTarget getVariable ["restrained",FALSE]) && alive cursorTarget && (player distance cursorTarget < 3.5) && ((player distance (getMarkerPos "slave_trader_marker") < 10)) && !(cursorTarget getVariable ["escorting",FALSE]) ']];
		//HuntIR
		life_actions = life_actions + [player addAction["use HuntIR", "scripts\myhuntir.sqf", [], 1, false, true, "", "true"]];
	};
};
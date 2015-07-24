[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
    private["_bp","_load","_cfg"];
    while{true} do
    {
        waitUntil {backpack player != ""};
        _bp = backpack player;
        _cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
        _load = round(_cfg / 5);
        life_maxWeight = life_maxWeightT + _load;		
		
		if(playerSide == west) then 
		{
		waitUntil {backpack player == "B_Bergen_sgg"};
		(backpackContainer player) setObjectTextureGlobal [0,"textures\cop\clothing\APD_backpack.jpg"];
		waitUntil {backpack player == "B_Bergen_sgg"};
		};
		if(playerSide == independent) then 
		{
		waitUntil {backpack player == "B_FieldPack_ocamo"};
		(backpackContainer player) setObjectTextureGlobal [0,"textures\med\clothing\backpack_gorod_hex_co_EMS.jpg"];
		waitUntil {backpack player == "B_FieldPack_ocamo"};
		};
        waitUntil {backpack player != _bp};
        if(backpack player == "") then
        {
            life_maxWeight = life_maxWeightT;
        };
    };
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

//part of alcohol system written by [midgetgrimm]
[] spawn
{
	while {true} do
	{
		waitUntil {(life_drink > 0)};
		while{(life_drink > 0)} do {
		
			if(life_drink > 0.08) then {
			"chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
    		"chromAberration" ppEffectCommit 1;   
    		"radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    		"radialBlur" ppEffectCommit 1; addcamShake[random 3, 1, random 3];
			sleep 240;
			life_drink = life_drink - 0.02;
			} else {
			"radialBlur" ppEffectEnable true;
			"radialBlur" ppEffectAdjust[0.05, 0,0.36,0.38];
			"radialBlur" ppEffectCommit 1;
			sleep 180;
			life_drink = life_drink - 0.02;
			};
		};
		
		"chromAberration" ppEffectEnable false;
		"radialBlur" ppEffectAdjust  [0,0,0,0];
		"radialBlur" ppEffectCommit 5;
		"radialBlur" ppEffectEnable false; resetCamShake;

		life_drink = 0;
		
	};
};
[] spawn 
{
	while {true} do
	{
		enableSentences false;
		sleep 20;
	};
};
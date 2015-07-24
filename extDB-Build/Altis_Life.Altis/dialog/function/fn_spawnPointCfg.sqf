/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side", "_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira Reqional HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","S.W.A.T. HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Sheriff HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		// Rebel faction.
		if(license_civ_rebel && playerSide == civilian) then {
			_return = [
				["Rebelop","Rbl. Airfield","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["Rebelop_2","Rbl. Outpost 3","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["Rebelop_1","Lawless Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};


		// Civ faction.
		if(!license_civ_rebel && playerSide == civilian) then {
			_return = [
				["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};

		// See if the player is in a Gang.
                if (count life_gangData != 0) then {
			private["_gangid", "_gangname"];
			_gangid = (life_gangData select 0);
			_gangname = (life_gangData select 2);

			// Add spawn-points based on the gang id.
			switch(_gangid) do {
				case 1: {
					// -dR- clan.
                                        hint "Welcome drclan!";
					_return set[count _return,["drclan_player_spawn","-dR- Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				case 2: {
					// Blue moon clan.
                                        hint "Welcome Blue Moon";
					_return set[count _return,["bluemoone_spawn_1","Blue Moon Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				/*case 26: {
					// Server Jerks.
                                        hint "Welcome Server Jerks";
					_return set[count _return,["serverjerks_player_spawn","Server Jerks Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};*/
				case 5: {
					// Dirty Old Bastards.
                                        hint "Welcome Dirty Old Bastards!";
					_return set[count _return,["DoB_player_spawn","Dirty Ole Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				case 3: {
					// Academi.
                                        hint "Welcome Academi!";
					_return set[count _return,["academi_spawn_1","Academi Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				case 4: {
					// JSOC_spawn.
                                        hint "Welcome JSOC!";
					_return set[count _return,["JSOC_player_spawn","JSOC Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				default {
					hint format['Gang %1 (id %2) does not have a base spawn-point.', _gangname, _gangid];
				};
			}; // switch(_gangid)
		};

		////////////////////////////////
		// Explicit rules for donors. //
		////////////////////////////////
/*
		// Donor spawn 1.
                if((getPlayerUID player) in ["76561198083157429", "76561198131611076", "76561198037884192",
					     "76561198075884876", "76561198040360674", "76561198124421618",
					     "76561198019141456", "76561198032776666"]) then {
                        _return = _return + [
                                ["donor_spawn_1","ToC Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                        ];
                };

		// Donor spawn 2.
                if((getPlayerUID player) in ["76561198032776666", "76561198037884192"]) then {
                        _return = _return + [
                                ["donor_spawn_2","Gunz's Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                        ];
                };

		// Donor spawn 3.
                if((getPlayerUID player) in ["76561197989754656", "76561198105556705"]) then {
                        _return = _return + [
                                ["donor_spawn_3","Frogger's Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                        ];
                };

		// CDL base.
                if((getPlayerUID player) in ["76561198032776666", "76561198017849083", "76561198115058177",
					     "76561198022746102", "76561198040050837", "76561198064204613",
					     "76561198016555690", "76561198067134041", "76561198038286017",
					     "76561197990552034", "7656119788151600", "76561198021956938",
					     "76561198028017369", "76561197960270400", "76561198137704344",
					     "76561198043182095", "76561198137704344", "76561198127000884",
					     "76561198067899896", "16561198001491362", "76561198000366002"]) then {
                        _return = _return + [
                                ["donor_cdl","CDL Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                        ];
                };*/

	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;

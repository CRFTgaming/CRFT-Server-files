/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};

	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["textures\civilian\veh\Hellokitty.jpg","civ"],
			["textures\civilian\veh\Metallica.jpg","civ"],
			["textures\civilian\veh\pony_hb.jpg","civ"],
			["textures\civilian\veh\MonsterWRC.paa","civ"],
			["textures\civilian\veh\RedBullWRC.paa","civ"],
			["textures\civilian\veh\Batman_Hatch.jpg","civ"],
			["textures\cop\veh\cop_hatch_swat.jpg","cop"],
			["textures\cop\veh\cop_hatch_apd.jpg","cop"]
		];
	};

	case "C_Offroad_01_F":
	{
		_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			["textures\cop\veh\police_offroad.jpg","cop"],
			["textures\cop\veh\apd_offroad.jpg","cop"],
			["textures\civilian\veh\iron.jpg","civ"],
			["textures\civilian\veh\offroad_skull.jpg","civ"],
			["textures\civilian\veh\offroad_steel.jpg","civ"],
			["textures\civilian\veh\PokemonCar.jpg","civ"],
			["textures\civilian\veh\RAM.jpg","civ"],
			["textures\med\pickup_medic.jpg","med"],
			["textures\civilian\veh\america.jpg","civ"],
			["textures\civilian\veh\darkside.jpg","civ"]
			
		];
	};

	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\med\EMS_hatchback.jpg","med"],
			["textures\civilian\veh\ganja.jpg","civ"]
		];
	};

	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\cop\veh\APD_sheriff_suv.jpg","cop"],
			["textures\cop\veh\cop_suv_cruiser.jpg","cop"],
			["textures\civilian\veh\suv_taxi.jpg","civ"],
			["textures\civilian\veh\freeman_suv.jpg","civ"],
			["textures\civilian\veh\Fast&Furious.jpg","civ"],
			["textures\cop\veh\suv_01_ext_police_co.jpg","cop"],
			["textures\med\EMS_SUV.jpg","med"],
			["textures\civilian\veh\epiksuv1.jpg","civ"],
			["textures\civilian\veh\suv_ferrari.jpg","civ"]
		];
	};

	case "C_Van_01_box_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "C_Van_01_transport_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "B_Quadbike_01_F":
	{
		_ret =
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["textures\cop\veh\quadbike_01_co_APD.jpg","cop"]
		];
	};

	case "B_Heli_Light_01_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\reb\air\reblbirdcamo1.jpg","reb"],
			["textures\reb\air\reb_bird_wasp.jpg","reb"]
		];
	};

	case "O_Heli_Light_02_unarmed_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\med\EMS_Heli.jpg","med"],
			["textures\cop\air\Orca_Black.jpg","cop"]
		];
	};
/*	
	case "I_Heli_light_03_F":
	{
		_ret =
		[
			["textures\cop\air\swathellcat1.jpg","cop"],
			["textures\cop\air\swathellcat2.jpg","cop"]
		];
	};

	case "O_MRAP_02_gmg_F":
	{
		_ret =
		[
			["textures\reb\veh\anonomusinfrit1.jpg","civ"],
			["textures\reb\veh\anonomusinfrit2.jpg","civ"]
		];
	};
*/	
	case "B_MRAP_01_F":
	{
		_ret =
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\cop\veh\metro_hunter_1.jpg","cop","textures\cop\veh\metro_hunter_2.jpg"],
			["textures\cop\veh\mrap_01_base_police_co.jpg","cop","textures\cop\veh\mrap_01_adds_police_co.jpg"]
		];
	};

	case "B_Heli_Transport_01_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop","#(argb,8,8,3)color(0.05,0.05,0.05,1)"],
			["textures\cop\air\p_ghosthawkF.jpg","cop","textures\cop\air\p_ghosthawkB.jpg"]
		];
	};

	case "I_Truck_02_covered_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "I_Truck_02_transport_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop","#(argb,8,8,3)color(0.05,0.05,0.05,1)","#(argb,8,8,3)color(0.05,0.05,0.05,1)"]
		];
	};

	case "O_Heli_Attack_02_black_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop","#(argb,8,8,3)color(0.05,0.05,0.05,1)","#(argb,8,8,3)color(0.05,0.05,0.05,1)"]
		];
	};

	case "C_Kart_01_Blu_F":
	{
		_ret =
		[
			["textures\cop\veh\blue_hex.jpg","cop"]
		];
	};

	case "B_MRAP_01_hmg_F":
	{
		_ret =
		[
			["textures\cop\veh\mrap_01_base_police_co.jpg","cop","textures\cop\veh\mrap_01_adds_police_co.jpg","#(argb,8,8,3)color(0.05,0.05,0.05,1)"]
		];
	};

	case "O_APC_Tracked_02_cannon_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop","#(argb,8,8,3)color(0.05,0.05,0.05,1)","#(argb,8,8,3)color(0.05,0.05,0.05,1)"]
		];
	};
	
	case "C_Kart_01_Red_F":
	{
		_ret =
		[
			["textures\cop\veh\black_hex.jpg","cop"]
		];
	};

	case "C_Heli_Light_01_civil_F":
	{
		_ret =
		[
			["textures\cop\air\apd_m900.jpg","cop"],
			["textures\med\EMS_LTB.jpg","med"],
			["textures\cop\air\sheriff_bird.jpg","cop"]
		];
	};

	case "C_Offroad_01_repair_F":
	{
		_ret =
		[
			["textures\civilian\veh\Tundra.jpg","civ"],
			["textures\civilian\veh\Hawk.jpg","civ"]
		];
	};

	case "B_G_Offroad_01_armed_F":
	{
		_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "reb"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "reb"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "reb"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","reb"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","reb"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","reb"],
			["textures\civilian\veh\iron.jpg","reb"],
			["textures\civilian\veh\offroad_skull.jpg","reb"],
			["textures\civilian\veh\offroad_steel.jpg","reb"],
			["textures\civilian\veh\PokemonCar.jpg","reb"],
			["textures\civilian\veh\RAM.jpg","reb"],
			["textures\civilian\veh\america.jpg","reb"],
			["textures\civilian\veh\darkside.jpg","reb"],
			["textures\cop\veh\apd_offroad.jpg","cop"]
		];
	};

	case "B_Heli_Transport_03_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop","#(argb,8,8,3)color(0.05,0.05,0.05,1)"],
			["textures\cop\air\Heli_Transport_03_ext01_APD.jpg","cop","textures\cop\air\Heli_Transport_03_ext02_APD.jpg"]
		];
	};
		
	case "I_MRAP_03_F":
	{
		_ret =
		[
		 	["textures\cop\veh\mrap_03_ext_indp_co_APD.jpg","cop"]
		];
	};

	case "B_Heli_Transport_03_unarmed_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop","#(argb,8,8,3)color(0.05,0.05,0.05,1)"],
			["textures\cop\air\Heli_Transport_03_ext01_APD.jpg","cop","textures\cop\air\Heli_Transport_03_ext02_APD.jpg"],
			["textures\civilian\air\Heli_Transport_03_ext01_civ.jpg","civ","textures\civilian\air\Heli_Transport_03_ext02_CO_civ.jpg"]
		];
	};
		
	case "O_Heli_Transport_04_medevac_black_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop","#(argb,8,8,3)color(0.05,0.05,0.05,1)","#(argb,8,8,3)color(0.05,0.05,0.05,1)"],
			["textures\med\air\Heli_Transport_04_Base_01_CO.jpg","med","textures\med\air\Heli_Transport_04_Base_02_CO_ems2.jpg","textures\med\air\Heli_Transport_04_Pod_Ext01_CO.jpg","textures\med\air\Heli_Transport_04_Pod_Ext02_CO.jpg"]
		];
	};
};

_ret;

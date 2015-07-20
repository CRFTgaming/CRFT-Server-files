#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop! Please see an APD recruiter about applying."};
			case (__GETC__(life_coplevel) == 0): 
			{
				["APD Public Recruit Weapons",
					[
						["FirstAidKit",nil,150],
						["ItemGPS",nil,150],
						["Toolkit",nil,200],
						["Rangefinder",nil,1000],
						["NVGoggles",nil,1000],
						["Toolkit",nil,1000],
						["hgun_p07_snds_F","Tazer Pistol",2000],
						["16Rnd_9x21_Mag","Tazer Rounds",500]

					]
				];
			};
			case (__GETC__(life_coplevel) == 1):
			{
				["APD Cadets Weapons",
					[
						["FirstAidKit",nil,150],
						["ItemGPS",nil,150],
						["Toolkit",nil,200],
						["Rangefinder",nil,1000],
						["NVGoggles",nil,1000],
						["Toolkit",nil,1000],
						["hgun_p07_snds_F","Tazer Pistol",2000],
						["16Rnd_9x21_Mag","Tazer Rounds",200],
						["arifle_MX_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["hgun_PDW2000_F",nil,2500],
						["SMG_02_F",nil,3000],
						["30Rnd_9x21_Mag",nil,]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["APD Patrol Officer Weapons",
					[
						["FirstAidKit",nil,150],
						["ItemGPS",nil,150],
						["Toolkit",nil,200],
						["Rangefinder",nil,1000],
						["NVGoggles",nil,1000],
						["Toolkit",nil,1000],
						["hgun_p07_snds_F","Tazer Pistol",2000],
						["16Rnd_9x21_Mag","Tazer Rounds",200],
						["arifle_MX_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["hgun_PDW2000_F",nil,2500],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_02_F",nil,3000],
						["30Rnd_9x21_Mag",nil,300],
						//attachments
						["muzzle_snds_L",nil,1000],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Aco",nil,1200],
						["optic_ACO_grn",nil,1200]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["APD Sergeant Weapons",
					[
						["FirstAidKit",nil,150],
						["ItemGPS",nil,150],
						["Toolkit",nil,200],
						["Rangefinder",nil,1000],
						["NVGoggles",nil,1000],
						["Toolkit",nil,1000],
						["hgun_p07_snds_F","Tazer Pistol",2000],
						["16Rnd_9x21_Mag","Tazer Rounds",200],
						["arifle_MX_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["hgun_PDW2000_F",nil,2500],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_02_F",nil,3000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MXM_Black_F",nil,6000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MX_GL_Black_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["3rnd_UGL_FlareWhite_F",nil,500],
						["3rnd_UGL_FlareRed_F",nil,500],
						["3rnd_Smoke_Grenade_Shell",nil,500],
						//attachments
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Aco",nil,1200],
						["optic_ACO_grn",nil,1200],
						["optic_Arco",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_NVS",nil,3000],
						["optic_DMS",nil,3000],
						//Launchers and grenades
						["HandGrenade_Stone","Flashbang",6000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["APD Lieutenant Weapons",
					[
						["FirstAidKit",nil,150],
						["ItemGPS",nil,150],
						["Toolkit",nil,200],
						["Rangefinder",nil,1000],
						["NVGoggles",nil,1000],
						["Toolkit",nil,1000],
						["hgun_p07_snds_F","Tazer Pistol",2000],
						["16Rnd_9x21_Mag","Tazer Rounds",200],
						["hgun_ACPC2_F",nil,3000],
						["9Rnd_45ACP_Mag",nil,350],
						["arifle_MX_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["hgun_PDW2000_F",nil,2500],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_02_F",nil,3000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MXM_Black_F",nil,6000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MX_GL_Black_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["3rnd_UGL_FlareWhite_F",nil,500],
						["3rnd_UGL_FlareRed_F",nil,500],
						["3rnd_Smoke_Grenade_Shell",nil,500],
						["arifle_MX_SW_Black_F",nil,8500],
						["30Rnd_65x39_caseless_mag",nil,400],
						["srifle_LRR_F",nil,9500],
						["7Rnd_408_Mag",nil,600],
						//attachments
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_H",nil,1500],
						["muzzle_snds_B",nil,1700],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Aco",nil,1200],
						["optic_ACO_grn",nil,1200],
						["optic_Arco",nil,1500],
						["optic_Holosight",nil,1700],
						["optic_MRCO",nil,1700],
						["optic_NVS",nil,3000],
						["optic_DMS",nil,3000],
						//Launchers and grenades
						["launch_RPG32_F",nil,15000],
						["RPG32_HE_F",nil,7000],
						["RPG32_F",nil,7000],
						["HandGrenade_Stone","Flashbang",6000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["APD Captains Weapons",
					[
						["FirstAidKit",nil,150],
						["ItemGPS",nil,150],
						["Toolkit",nil,200],
						["Rangefinder",nil,1000],
						["NVGoggles",nil,1000],
						["Toolkit",nil,1000],
						["hgun_p07_snds_F","Tazer Pistol",2000],
						["16Rnd_9x21_Mag","Tazer Rounds",200],
						["hgun_ACPC2_F",nil,3000],
						["9Rnd_45ACP_Mag",nil,350],
						["arifle_MX_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["hgun_PDW2000_F",nil,2500],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_02_F",nil,3000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MXM_Black_F",nil,6000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MX_GL_Black_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["3rnd_UGL_FlareWhite_F",nil,500],
						["3rnd_UGL_FlareRed_F",nil,500],
						["3rnd_Smoke_Grenade_Shell",nil,500],
						["arifle_MX_SW_Black_F",nil,8500],
						["30Rnd_65x39_caseless_mag",nil,400],
						["100Rnd_65x39_caseless_mag",nil,600],
						["srifle_LRR_F",nil,9500],
						["7Rnd_408_Mag",nil,600],
						["LMG_Mk200_F",nil,11000],
						["200Rnd_65x39_cased_Box",nil,700],
						["200Rnd_65x39_cased_Box_Tracer",nil,700],
						["srifle_EBR_F",nil,9000],
						["20Rnd_762x51_Mag",nil,600],
						//attachments
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_H",nil,1500],
						["muzzle_snds_B",nil,1700],
						["muzzle_snds_H_MG",nil,1800],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Aco",nil,1200],
						["optic_ACO_grn",nil,1200],
						["optic_Arco",nil,1500],
						["optic_NVS",nil,3000],
						["optic_DMS",nil,3000],
						//Launchers and grenades
						["launch_RPG32_F",nil,15000],
						["RPG32_HE_F",nil,7000],
						["RPG32_F",nil,7000],
						["HandGrenade_Stone","Flashbang",6000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["APD SWAT Arsenal",
					[
						["FirstAidKit",nil,150],
						["ItemGPS",nil,150],
						["Toolkit",nil,200],
						["Rangefinder",nil,1000],
						["NVGoggles",nil,1000],
						["Toolkit",nil,1000],
						["hgun_p07_snds_F","Tazer Pistol",2000],
						["16Rnd_9x21_Mag","Tazer Rounds",200],
						["hgun_ACPC2_F",nil,3000],
						["9Rnd_45ACP_Mag",nil,350],
						["hgun_Pistol_heavy_01_F",nil,3500],
						["11Rnd_45ACP_Mag",nil,400],
						["arifle_MX_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["hgun_PDW2000_F",nil,2500],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_02_F",nil,3000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MXM_Black_F",nil,6000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MX_GL_Black_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["3rnd_UGL_FlareWhite_F",nil,500],
						["3rnd_UGL_FlareRed_F",nil,500],
						["3rnd_Smoke_Grenade_Shell",nil,500],
						["1Rnd_SmokeBlue_Grenade_shell","Tear Gas",1000]
						["arifle_MX_SW_Black_F",nil,8500],
						["30Rnd_65x39_caseless_mag",nil,400],
						["100Rnd_65x39_caseless_mag",nil,600],
						["srifle_LRR_F",nil,9500],
						["7Rnd_408_Mag",nil,600],
						["srifle_EBR_F",nil,9000],
						["20Rnd_762x51_Mag",nil,600],
						["LMG_Mk200_F",nil,11000],
						["200Rnd_65x39_cased_Box",nil,700],
						["200Rnd_65x39_cased_Box_Tracer",nil,700],
						["LMG_Zafir_F",nil,13000],
						["150Rnd_762x51_Box",nil,1000],
						["srifle_GM6_F",nil,18000],
						["5Rnd_127x108_Mag",700],
						//attachments
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Aco",nil,1200],
						["optic_ACO_grn",nil,1200],
						["optic_Arco",nil,1500],
						["optic_NVS",nil,3000],
						["optic_DMS",nil,3000],
						//Launchers and grenades
						["launch_RPG32_F",nil,15000],
						["RPG32_HE_F",nil,7000],
						["RPG32_F",nil,7000],
						["HandGrenade_Stone","Flashbang",6000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["APD Commanding Officers",
					[
						["FirstAidKit",nil,150],
						["ItemGPS",nil,150],
						["Toolkit",nil,200],
						["Rangefinder",nil,1000],
						["NVGoggles",nil,1000],
						["Toolkit",nil,1000],
						["hgun_p07_snds_F","Tazer Pistol",2000],
						["16Rnd_9x21_Mag","Tazer Rounds",200],
						["hgun_ACPC2_F",nil,3000],
						["9Rnd_45ACP_Mag",nil,350],
						["hgun_Pistol_heavy_01_F",nil,3500],
						["11Rnd_45ACP_Mag",nil,400],
						["arifle_MX_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["hgun_PDW2000_F",nil,2500],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_02_F",nil,3000],
						["30Rnd_9x21_Mag",nil,300],
						["arifle_MXC_Black_F",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MXM_Black_F",nil,6000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["arifle_MX_GL_Black_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,400],
						["3rnd_UGL_FlareWhite_F",nil,500],
						["3rnd_UGL_FlareRed_F",nil,500],
						["3rnd_Smoke_Grenade_Shell",nil,500],
						["1Rnd_SmokeBlue_Grenade_shell","Tear Gas",1000]
						["arifle_MX_SW_Black_F",nil,8500],
						["30Rnd_65x39_caseless_mag",nil,400],
						["100Rnd_65x39_caseless_mag",nil,600],
						["srifle_LRR_F",nil,9500],
						["7Rnd_408_Mag",nil,600],
						["srifle_EBR_F",nil,9000],
						["20Rnd_762x51_Mag",nil,600],
						["LMG_Mk200_F",nil,11000],
						["200Rnd_65x39_cased_Box",nil,700],
						["200Rnd_65x39_cased_Box_Tracer",nil,700],
						["LMG_Zafir_F",nil,13000],
						["150Rnd_762x51_Box",nil,1000],
						["srifle_GM6_F",nil,18000],
						["5Rnd_127x108_Mag",700],
						//attachments
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Aco",nil,1200],
						["optic_ACO_grn",nil,1200],
						["optic_Arco",nil,1500],
						["optic_NVS",nil,3000],
						["optic_DMS",nil,3000],
						//Launchers and grenades
						["launch_RPG32_F",nil,15000],
						["RPG32_HE_F",nil,7000],
						["RPG32_F",nil,7000],
						["HandGrenade_Stone","Flashbang",6000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_Rook40_F",nil,5000],
						["16Rnd_9x21_mag",nil,200],
						["hgun_ACPC2_F",nil,7000],
						["9Rnd_45ACP_Mag",nil,300],
						["hgun_Pistol_heavy_02_F",nil,12500],
						["6Rnd_45ACP_Cylinder",nil,400],
						["hgun_PDW2000_F",nil,18000],
						["30Rnd_9x21_Mag",nil,500],
						["arifle_Mk20_F",nil,23000],
						["30Rnd_556x45_Stanag",nil,600],
						["arifle_Mk20C_F",nil,24000],
						["30Rnd_556x45_Stanag",nil,600],
						["arifle_Katiba_F",nil,27000],
						["30Rnd_65X39_caseless_green",nil,650],
						["arifle_Katiba_C_F",nil,29000],
						["30Rnd_65X39_caseless_green",nil,650],
						["srifle_DMR_01_F",nil,50000],
						["10Rnd_762x51_Mag",nil,700],
						["srifle_LRR_F",nil,80000],
						["7Rnd_408_Mag",nil,900],
						["srifle_GM6_camo_F",nil,125000],
						["5Rnd_127x108_Mag",nil,1100],
						["LMG_Mk200_F",nil,100000],
						["200Rnd_65x39_cased_Box",nil,1100],
						["200Rnd_65x39_cased_Box",nil,1100],
						["optic_Aco_smg",nil,1000],
						["optic_Aco_grn_smg",nil,1000],
						["optic_Aco",nil,1000],
						["optic_Aco_grn",nil,1000],
						["optic_Hamr",nil,3000],
						["optic_Arco",nil,2000],
						["optic_Holosight",nil,1000],
						["optic_DMS",nil,2000],
						["optic_LRPS",nil,5000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,7500],
						["16Rnd_9x21_Mag",nil,300],
						["hgun_ACPC2_F",nil,9000],
						["9Rnd_45ACP_Mag",nil,400],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["6Rnd_45ACP_Cylinder",nil,500],
						["hgun_PDW2000_F",nil,25000],
						["30Rnd_9x21_Mag",nil,700],
						["srifle_DMR_01_F","Hunting Rifle",75000],
						["10Rnd_762x51_Mag",nil,1000],
						["optic_ACO_grn_smg",nil,5000],
						["optic_DMS",nil,10000],
						["V_Rangemaster_belt",nil,5000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,45],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_PDW2000_F",nil,9500],
						["30Rnd_9x21_Mag",nil,75],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};

	case "bhws":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"....."};
			case (!license_civ_bountyh): {"You don't have a bounty hunter's licence"};
			default
			{
				["Bounty hunter's shop",
					[
						["hgun_P07_snds_F","stun Pistol",10000],
						["16Rnd_9x21_Mag","Stun Mag",250],
						["SMG_01_F","Leathal PDW",40000],
						["30Rnd_45ACP_Mag_SMG_01","PDW MAGS",500],
						["I_UavTerminal","Remote Control",25000],
						["Smokeshell","Smoke Grenade",50]
					]
				];
			};
		};
	};
};

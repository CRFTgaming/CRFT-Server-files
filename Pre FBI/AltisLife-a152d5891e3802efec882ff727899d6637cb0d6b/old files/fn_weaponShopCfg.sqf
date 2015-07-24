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
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			default
			{
				["Altis Cop Shop",
					[
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Taser Mag",250],
						["Binocular",nil,150],
						["ItemGPS","GPS",500],
						["ItemMap","Map",500],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_cadet":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 1): {"This is a restricted menu Pub!"};
			default
			{
				["Altis Police Cadet Shop",
					[
						["arifle_SDAR_F","Taser Rifle",8500],
						["20Rnd_556x45_UW_mag","Taser Rifle Mag",200],	
						["Rangefinder",nil,4500]						
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["ItemMap",nil,35],
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

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 2): {"This is a restricted menu Cadet!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["hgun_PDW2000_F","PDW2000",2500],
						["30Rnd_9x21_Mag","PDW Mag",250],
						["SMG_01_F","Vermin SMG",2500],
						["30Rnd_45ACP_Mag_SMG_01","Vermin Mag",175],
						["arifle_TRG20_F","TRG20",3500],
						["30Rnd_556x45_Stanag","TRG Mag",250],
						["arifle_Mk20C_F","MK20",4500],
						["30Rnd_556x45_Stanag","MK20 Mag",250],
						["arifle_MX_Black_F","MX 6.5mm",7500],
						["30Rnd_65x39_caseless_mag","MX Mag",250],
						["optic_Aco","ACO Red",350],
						["optic_ACO_grn","ACO Green",350],
						["optic_Aco_smg","ACO SMG Red",450],
						["optic_ACO_grn_smg","ACO SMG Green",450],
						["acc_pointer_IR","Laser Pointer",1800],
						["acc_flashlight","Flashlight",100],
						["muzzle_snds_L","9mm Suppressor",250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_MXM_F","MXM",8500],
						["30Rnd_65x39_caseless_mag","MX Mag",250],
						["arifle_MXC_Black_F","MXC Black",9000],
						["30Rnd_65x39_caseless_mag","MX Mag",250],
						["arifle_TRG21_F","TRG21",3500],
						["30Rnd_556x45_Stanag","TRG Mag",250],
						["arifle_MK20C_F","MK20",4500],
						["30Rnd_556x45_Stanag","MK20 Mag",250],
						["optic_DMS",DMS,20000],
						["optic_NVS","NVS",35000],
						["optic_Arco","ARCO",2500],
						["muzzle_snds_M","556 Suppressor",2000],
						["muzzle_snds_H","65 Suppressor",2500],
						["HandGrenade_Stone","Flashbang",75000]
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
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_MX_SW_F",nil,18000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,150],
						["srifle_DMR_01_F",nil,50000],
						["10Rnd_762x51_Mag",nil,500],
						["arifle_SDAR_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,300],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_Hamr",nil,7500],
						["optic_DMS",nil,20000],
						["optic_NVS",nil,35000],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR","Laser Pointer",1800],
						["ToolKit",nil,250],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,4500]
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
						["hgun_Rook40_F","Rook 9mm",6500],
						["16Rnd_9x21_Mag","9mm Mag",25],
						["hgun_Pistol_heavy_02_F","Zubr 45",9850],
						["6Rnd_45ACP_Cylinder","Zubr Mag",50],
						["hgun_ACPC2_F","ACP 45",11500],
						["9Rnd_45ACP_Mag","ACP Mag",45],
						["hgun_PDW2000_F","PDW2000",20000],
						["30Rnd_9x21_Mag","PDW Mag",75],
						["optic_ACO_grn_smg","ACO SMG",2500],
						["V_Rangemaster_belt","RangeMaster Belt",4900],
						["Rangefinder",nil,4500]
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
						["NVGoggles",nil,2000],
						["ToolKit",nil,250],
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["launch_RPG32_F",nil,250000],
						["RPG32_F",nil,1000],
						["RPG32_HE_F",nil,5000],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["HandGrenade_Stone","Flashbang",750000],
						["30Rnd_9x21_Mag",nil,75]
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

	// Donator weapon shop items.
	case "donator":
	{
		["Fancy Weapon Shop",
			[
				["hgun_Rook40_F","Rook 9mm",500],
				["16Rnd_9x21_Mag","Rook Mag",25],
				["hgun_pistol_heavy_01_F","45 ACP Pistol",5850],
				["11Rnd_45ACP_Mag","45 ACP Mag",85],
				["SMG_01_F","Vermin 45",15000],
				["30Rnd_45ACP_Mag_SMG_01","Vermin Mag",100],
				["hgun_PDW2000_F","PDW2000",6500],
				["30Rnd_9x21_Mag","PDW Mag",75],
				["arifle_Mk20C_plain_F","MK20",50000],
				["30Rnd_556x45_Stanag","MK20 Mag",800],
				["LMG_Mk200_F","MK200",75000],
				["200Rnd_65x39_cased_Box","MK200 Mag",2000],
				["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer Mag",2000],
				["LMG_Zafir_F","Zafir",80000],
				["150Rnd_762x51_Box","Zafir Mag",3500],
				["150Rnd_762x51_Box_Tracer","Zafir Mag Tracer",3500],
				["srifle_LRR_F","LRR 408",100000],
				["7Rnd_408_Mag","LRR Mag",2000],
				["srifle_GM6_F","LYNX",125000],
				["5Rnd_127x108_Mag","LYNX Mag",2500],
				["launch_RPG32_F","RPG",250000],
				["RPG32_F","Rocket",2500],
				["RPG32_HE_F","HE Rocket",5000],
				["HandGrenade_Stone","Flashbang",75000],
				["muzzle_snds_H","65 Suppressor",10000],
				["muzzle_snds_L","9mm Suppressor",10000],
				["muzzle_snds_acp","45 ACP Suppressor",10000],
				["muzzle_snds_M","556 Suppressor",10000],
				["muzzle_snds_B","762 Suppressor",10000],
				["muzzle_snds_H_MG","65 LMG Suppressor",10000],
				["optic_ACO_grn_smg","ACO SMG",750],
				["optic_MRCO","MRCO",10000],
				["optic_SOS","SOS",50000],
				["optic_DMS","DMS",20000],
				["optic_NVS","NVS",35000],
				["NVGoggles_OPFOR","NVG Black",2000],
				["Rangefinder",nil,4500],
				["ToolKit",nil,50],
				["itemgps","GPS",50],
				["FirstAidKit",nil,25]
			]
		];
	};

	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a Lieutenant rank!"};
			default
			{
				["Altis Lieutenant Officer Shop",
					[
						["arifle_MX_SW_Black_F","MX SW",10000],
						["30Rnd_65x39_caseless_mag","MX Mag",500],
						["100Rnd_65x39_caseless_mag","MX 100RD Mag",650],
						["100Rnd_65x39_caseless_mag_Tracer","MX 100RD Mag Tracer",650],
						["arifle_MX_GL_Black_F","MX GL",12500],
						["30Rnd_65x39_caseless_mag","MX Mag",500],
						["arifle_TRG21_GL_F","TRG21 GL",8000],
						["30Rnd_556x45_Stanag","TRG Mag",250],						
						["arifle_Mk20_GL_F","MK20 GL",8500],
						["30Rnd_556x45_Stanag","MK20 Mag",250],
						["srifle_LRR_F","408 Rifle",15000],
						["7Rnd_408_Mag","408 Mag",2000],
						["hgun_ACPC2_F","ACP 45",2500],
						["9Rnd_45ACP_Mag","45 ACP Mag",150],
						["launch_RPG32_F","RPG 42",250000],
						["RPG32_HE_F","HE Rocket",5000],
						["RPG32_F","Rocket",10000],
						["optic_DMS","DMS",1500],
						["optic_Holosight","MK17",1000],
						["muzzle_snds_acp","45 Suppressor",1500],
						["muzzle_snds_H","65 Suppressor",2500],
						["UGL_FlareWhite_F","White Flare",250],
						["UGL_FlareGreen_F","Green Flare",250],
						["UGL_FlareRed_F","Red Flare",250],
						["UGL_FlareCIR_F","IR Flare",350],
						["1Rnd_Smoke_Grenade_shell","Smoke Round",150],
						["B_UavTerminal","UAV Terminal",25000]
					]
				];
			};
		};
	};
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 5): {"Oh so you want to be in charge now?  Work hard and get promoted, then you can look in here!"};
			default
			{
				["Altis Captain Officer Shop",
					[
						["LMG_Mk200_F","MK200",25000],
						["200Rnd_65x39_cased_Box","MK200 Mag",3000],
						["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer",3000],
						["srifle_EBR_F","MK18",45000],
						["20Rnd_762x51_Mag","MK18 Mag",1000],
						["srifle_GM6_F","LYNX",55000],
						["5Rnd_127x108_Mag","LYNX Mag",2500],
						["hgun_Pistol_heavy_01_F","45 Pistol",3000],
						["11Rnd_45ACP_Mag","45 Pistol Mag",200],
						["optic_SOS","SOS Scope",50000],
						["optic_MRD","45 Pistol MRD Sight",350],
						["muzzle_snds_H_MG","MK200 Suppressor",9000],
						["muzzle_snds_B","7.62mm Suppressor",15000],
						["HandGrenade_Stone","Flashbang",75000],
						["B_UavTerminal","UAV Terminal",25000]
					]
				];
			};
		};
	};
	
	case "cop_commanding_officer":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 7): {"Don't touch my junk!"};
			default
			{
				["Altis Commanding Officer Shop",
					[
						["LMG_Zafir_F","Zafir",35000],
						["150Rnd_762x51_Box","Zafir Mag",3500],
						["150Rnd_762x51_Box_Tracer","Zafir Mag Tracer",3500],
						["LMG_Mk200_F","MK200",25000],
						["200Rnd_65x39_cased_Box","MK200 Mag",3000],
						["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer",3000],
						["srifle_GM6_F","LYNX",55000],
						["5Rnd_127x108_Mag","LYNX Mag",2500],
						["5Rnd_127x108_APDS_Mag","LYNX APDS Mag",3000],
						["launch_RPG32_F","RPG 42",250000],
						["RPG32_HE_F","HE Rocket",5000],
						["RPG32_F","Rocket",10000],
						["acc_pointer_IR","Laser Pointer",1800],
						["muzzle_snds_H_MG","MK200 Suppressor",9000],
						["optic_Holosight","MK17",1000],
						["optic_Hamr","RCO",2500],  
						["optic_SOS","SOS Scope",50000],
						["HandGrenade_Stone","Flashbang",75000],
						["B_UavTerminal","UAV Terminal",25000]
					]
				];
			};
		};
	};
};

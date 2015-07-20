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
						["ItemMap",nil,20],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles_OPFOR",nil,1000],
						["V_TacVestIR_blk",nil,400],
						["B_FieldPack_ocamo",nil,200],
						["B_Carryall_ocamo",nil,300],
						["H_PilotHelmetHeli_B",nil,1000],
						["ItemRadio","CellPhone",500]
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
							["FirstAidKit",nil,20],
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["Rangefinder",nil,100],
							["NVGoggles_OPFOR","NVG Black",2000],
							["hgun_p07_snds_F","Tazer Pistol",500],
							["16Rnd_9x21_Mag","Tazer Rounds",20],
							["ItemRadio","CellPhone",0]
					]
				];
			};
			case (__GETC__(life_coplevel) == 1):
			{
				["APD Cadets Weapons",
					[
							["FirstAidKit",nil,20],
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["Rangefinder",nil,100],
							["NVGoggles_OPFOR","NVG Black",2000],
							["hgun_p07_snds_F","Tazer Pistol",500],
							["16Rnd_9x21_Mag","Tazer Rounds",20],
							["ItemRadio","CellPhone",0]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["APD Patrol Officer Weapons",
					[
							
							["FirstAidKit",nil,20],
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["Rangefinder",nil,100],
							["NVGoggles_OPFOR","NVG Black",2000],
							["hgun_p07_snds_F","Tazer Pistol",500],
							["16Rnd_9x21_Mag","Tazer Rounds",20],
							["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",100],
							["arifle_MX_Black_F",nil,1600],
							["30Rnd_65x39_caseless_mag",nil,100],
							["hgun_PDW2000_F",nil,1000],
							["30Rnd_9x21_Mag",nil,30],
							["SMG_02_F",nil,1100],
							["30Rnd_9x21_Mag",nil,30],
							["SMG_01_F",nil,1200],
							["30Rnd_45ACP_Mag_SMG_01",nil,30],
							//attachments
							["bipod_01_F_blk",nil,300],
							["bipod_02_F_blk",nil,300],
							["bipod_03_F_blk",nil,300],
							["muzzle_snds_L",nil,100],
							["acc_flashlight",nil,200],
							["acc_pointer_IR",nil,200],
							["optic_Aco_smg",nil,150],
							["optic_ACO_grn_smg",nil,150],
							["optic_Aco",nil,150],
							["optic_ACO_grn",nil,150],
							["ItemRadio","CellPhone",0]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["APD Sergeant Weapons",
					[
							["FirstAidKit",nil,20],
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["Rangefinder",nil,100],
							["NVGoggles_OPFOR","NVG Black",2000],
							["hgun_p07_snds_F","Tazer Pistol",500],
							["16Rnd_9x21_Mag","Tazer Rounds",20],
							["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",100],
							["arifle_MX_Black_F",nil,1600],
							["30Rnd_65x39_caseless_mag",nil,100],
							["hgun_PDW2000_F",nil,1000],
							["30Rnd_9x21_Mag",nil,30],
							["SMG_02_F",nil,1100],
							["30Rnd_9x21_Mag",nil,30],
							["SMG_01_F",nil,1200],
							["30Rnd_45ACP_Mag_SMG_01",nil,30],
							["arifle_MXC_Black_F",nil,1800],
							["30Rnd_65x39_caseless_mag",nil,400],
							["arifle_MXM_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["srifle_DMR_06_olive_F",nil,4000],
							["20Rnd_762x51_Mag",nil,20],
							["srifle_DMR_05_blk_F",nil,4000],
							["10Rnd_93x64_DMR_05_Mag",nil,20],
							["arifle_MX_GL_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["3rnd_UGL_FlareWhite_F",nil,100],
							["3rnd_UGL_FlareRed_F",nil,100],
							["3rnd_Smoke_Grenade_Shell",nil,100],
							//attachments
							["bipod_01_F_blk",nil,300],
							["bipod_02_F_blk",nil,300],
							["bipod_03_F_blk",nil,300],
							["muzzle_snds_L",nil,100],
							["muzzle_snds_H",nil,300],
							["acc_flashlight",nil,200],
							["acc_pointer_IR",nil,200],
							["optic_Aco_smg",nil,150],
							["optic_ACO_grn_smg",nil,150],
							["optic_Aco",nil,150],
							["optic_ACO_grn",nil,150],
							["optic_Arco",nil,200],
							["optic_Hamr",nil,250],
							["optic_NVS",nil,1000],
							["optic_DMS",nil,1000],
							//Launchers and grenades
							["HandGrenade_Stone","Flashbang",1000],
							["ItemRadio","CellPhone",0]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["APD Lieutenant Weapons",
					[
							["FirstAidKit",nil,20],
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["Rangefinder",nil,100],
							["NVGoggles_OPFOR","NVG Black",2000],
							["hgun_p07_snds_F","Tazer Pistol",500],
							["16Rnd_9x21_Mag","Tazer Rounds",20],
							["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",100],
							["hgun_ACPC2_F",nil,900],
							["9Rnd_45ACP_Mag",nil,30],
							["arifle_MX_Black_F",nil,1600],
							["30Rnd_65x39_caseless_mag",nil,100],
							["hgun_PDW2000_F",nil,1000],
							["30Rnd_9x21_Mag",nil,30],
							["SMG_02_F",nil,1100],
							["30Rnd_9x21_Mag",nil,30],
							["SMG_01_F",nil,1200],
							["30Rnd_45ACP_Mag_SMG_01",nil,30],
							["arifle_MXC_Black_F",nil,1800],
							["30Rnd_65x39_caseless_mag",nil,400],
							["arifle_MXM_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["srifle_DMR_06_olive_F",nil,4000],
							["20Rnd_762x51_Mag",nil,20],
							["arifle_MX_GL_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["3rnd_UGL_FlareWhite_F",nil,100],
							["3rnd_UGL_FlareRed_F",nil,100],
							["3rnd_Smoke_Grenade_Shell",nil,100],
							["srifle_DMR_05_blk_F",nil,4000],
							["10Rnd_93x64_DMR_05_Mag",nil,20],
							["srifle_DMR_04_F",nil,4000],
							["10Rnd_127x54_Mag",nil,20],
							["arifle_MX_SW_Black_F",nil,3000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["srifle_LRR_F",nil,4000],
							["7Rnd_408_Mag",nil,100],
							//attachments
							["bipod_01_F_blk",nil,300],
							["bipod_02_F_blk",nil,300],
							["bipod_03_F_blk",nil,300],
							["muzzle_snds_L",nil,100],
							["muzzle_snds_H",nil,300],
							["muzzle_snds_B",nil,400],
							["muzzle_snds_acp",nil,100],
							["acc_flashlight",nil,200],
							["acc_pointer_IR",nil,200],
							["optic_MRD",nil,150],
							["optic_Aco_smg",nil,150],
							["optic_ACO_grn_smg",nil,150],
							["optic_Aco",nil,150],
							["optic_ACO_grn",nil,150],
							["optic_Arco",nil,200],
							["optic_MRCO",nil,210],
							["optic_Hamr",nil,250],
							["optic_Holosight",nil,300],
							["optic_NVS",nil,1000],
							["optic_DMS",nil,1000],
							//Launchers and grenades
							["HandGrenade_Stone","Flashbang",1000],
							["ItemRadio","CellPhone",0]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["APD Captains Weapons",
					[
							["FirstAidKit",nil,20],
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["Rangefinder",nil,100],
							["NVGoggles_OPFOR","NVG Black",2000],
							["hgun_p07_snds_F","Tazer Pistol",500],
							["16Rnd_9x21_Mag","Tazer Rounds",20],
							["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",100],
							["hgun_ACPC2_F",nil,900],
							["9Rnd_45ACP_Mag",nil,30],
							["hgun_PDW2000_F",nil,1000],
							["30Rnd_9x21_Mag",nil,30],
							["SMG_02_F",nil,1100],
							["30Rnd_9x21_Mag",nil,30],
							["SMG_01_F",nil,1200],
							["30Rnd_45ACP_Mag_SMG_01",nil,30],
							["arifle_MX_Black_F",nil,1600],
							["30Rnd_65x39_caseless_mag",nil,100],
							["arifle_MXC_Black_F",nil,1800],
							["30Rnd_65x39_caseless_mag",nil,400],
							["arifle_MXM_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["srifle_DMR_06_olive_F",nil,4000],
							["20Rnd_762x51_Mag",nil,20],
							["arifle_MX_GL_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["3rnd_UGL_FlareWhite_F",nil,100],
							["3rnd_UGL_FlareRed_F",nil,100],
							["3rnd_Smoke_Grenade_Shell",nil,100],
							["arifle_MX_SW_Black_F",nil,3000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["100Rnd_65x39_caseless_mag",nil,150],
							["srifle_DMR_05_blk_F",nil,4000],
							["10Rnd_93x64_DMR_05_Mag",nil,20],
							["srifle_DMR_04_F",nil,4000],
							["10Rnd_127x54_Mag",nil,20],
							["srifle_DMR_03_F",nil,4000],
							["20Rnd_762x51_Mag",nil,20],
							["srifle_LRR_F",nil,4000],
							["7Rnd_408_Mag",nil,120],
							["LMG_Mk200_F",nil,8000],
							["200Rnd_65x39_cased_Box",nil,300],
							["200Rnd_65x39_cased_Box_Tracer",nil,300],
							["srifle_EBR_DMS_pointer_snds_f",nil,10000],
							["20Rnd_762x51_Mag",nil,100],
							//attachments
							["bipod_01_F_blk",nil,300],
							["bipod_02_F_blk",nil,300],
							["bipod_03_F_blk",nil,300],
							["muzzle_snds_338_black",nil,100],
							["muzzle_snds_93mmg",nil,100],
							["muzzle_snds_L",nil,100],
							["muzzle_snds_H",nil,300],
							["muzzle_snds_B",nil,400],
							["muzzle_snds_acp",nil,100],
							["muzzle_snds_H_MG",nil,400],
							["acc_flashlight",nil,200],
							["acc_pointer_IR",nil,200],
							["optic_MRD",nil,150],
							["optic_Aco_smg",nil,150],
							["optic_ACO_grn_smg",nil,150],
							["optic_Aco",nil,150],
							["optic_ACO_grn",nil,150],
							["optic_Holosight",nil,1700],
							["optic_AMS",nil,200],
							["optic_Arco",nil,200],
							["optic_MRCO",nil,210],
							["optic_Hamr",nil,250],
							["optic_NVS",nil,1000],
							["optic_DMS",nil,1000],
							//Launchers and grenades
							["HandGrenade_Stone","Flashbang",1000],
							["SmokeShellBlue","Teargas",700],
							["ItemRadio","CellPhone",0]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["APD SWAT Arsenal",
					[
							["FirstAidKit",nil,20],
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["Rangefinder",nil,100],
							["NVGoggles_OPFOR","NVG Black",2000],
							["hgun_p07_snds_F","Tazer Pistol",500],
							["16Rnd_9x21_Mag","Tazer Rounds",20],
							["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",100],
							["hgun_ACPC2_F",nil,900],
							["9Rnd_45ACP_Mag",nil,30],
							["hgun_Pistol_heavy_01_F",nil,1100],
							["11Rnd_45ACP_Mag",nil,35],
							["hgun_PDW2000_F",nil,2500],
							["30Rnd_9x21_Mag",nil,300],
							["SMG_02_F",nil,3000],
							["30Rnd_9x21_Mag",nil,300],
							["SMG_01_F",nil,3500],
							["30Rnd_45ACP_Mag_SMG_01",nil,350],
							["arifle_MX_Black_F",nil,1600],
							["30Rnd_65x39_caseless_mag",nil,100],
							["arifle_SDAR_F",nil,1600],
							["30Rnd_556x45_Stanag",nil,100],
							["20Rnd_556x45_UW_mag",nil,100],
							["arifle_MXC_Black_F",nil,1800],
							["30Rnd_65x39_caseless_mag",nil,400],
							["arifle_MXM_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["srifle_DMR_06_olive_F",nil,4000],
							["20Rnd_762x51_Mag",nil,20],
							["arifle_MX_GL_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["3rnd_UGL_FlareWhite_F",nil,100],
							["3rnd_UGL_FlareRed_F",nil,100],
							["3rnd_Smoke_Grenade_Shell",nil,100],
							["srifle_DMR_04_F",nil,4000],
							["10Rnd_127x54_Mag",nil,20],
							["srifle_DMR_05_blk_F",nil,4000],
							["10Rnd_93x64_DMR_05_Mag",nil,20],
							["srifle_DMR_03_F",nil,4000],
							["20Rnd_762x51_Mag",nil,20],
							["arifle_MX_SW_Black_F",nil,3000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["100Rnd_65x39_caseless_mag",nil,150],
							["srifle_LRR_camo_F",nil,4100],
							["7Rnd_408_Mag",nil,600],
							["srifle_EBR_DMS_pointer_snds_f",nil,12000],
							["20Rnd_762x51_Mag",nil,600],
							["LMG_Mk200_F",nil,8000],
							["200Rnd_65x39_cased_Box",nil,300],
							["200Rnd_65x39_cased_Box_Tracer",nil,300],
							["MMG_01_tan_F",nil,9000],
							["150Rnd_93x64_Mag",nil,350],
							["MMG_02_black_F",nil,9000],
							["130Rnd_338_Mag",nil,350],
							["LMG_Zafir_F",nil,10000],
							["150Rnd_762x51_Box",nil,400],
							["srifle_GM6_camo_F",nil,9000],
							["5Rnd_127x108_Mag",700],
							["srifle_DMR_02_sniper_AMS_LP_S_F",nil,8000],
							["10Rnd_338_Mag",nil,20],
							//attachments
							["bipod_01_F_blk",nil,300],
							["bipod_02_F_blk",nil,300],
							["bipod_03_F_blk",nil,300],
							["muzzle_snds_338_black",nil,100],
							["muzzle_snds_93mmg",nil,100],
							["muzzle_snds_L",nil,100],
							["muzzle_snds_H",nil,300],
							["muzzle_snds_B",nil,400],
							["muzzle_snds_acp",nil,100],
							["muzzle_snds_H_MG",nil,400],
							["acc_flashlight",nil,200],
							["acc_pointer_IR",nil,200],
							["optic_MRD",nil,150],
							["optic_Aco_smg",nil,150],
							["optic_ACO_grn_smg",nil,150],
							["optic_Aco",nil,150],
							["optic_ACO_grn",nil,150],
							["optic_Holosight",nil,1700],
							["optic_AMS",nil,200],
							["optic_Arco",nil,200],
							["optic_MRCO",nil,210],
							["optic_Hamr",nil,250],
							["optic_NVS",nil,1000],
							["optic_DMS",nil,1000],
							["optic_KHS_blk",nil,1200],
							["optic_SOS",nil,1200],
							["optic_LRPS",nil,1200],
							//Launchers and grenades
							["HandGrenade_Stone","Flashbang",1000],
							["SmokeShellBlue","Teargas",700],
							["ItemRadio","CellPhone",0]
					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["APD Commanding Officers",
					[
							["FirstAidKit",nil,20],
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["Rangefinder",nil,100],
							["NVGoggles_OPFOR","NVG Black",2000],
							["hgun_p07_snds_F","Tazer Pistol",500],
							["16Rnd_9x21_Mag","Tazer Rounds",20],
							["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",100],
							["hgun_ACPC2_F",nil,900],
							["9Rnd_45ACP_Mag",nil,30],
							["hgun_Pistol_heavy_01_F",nil,1100],
							["11Rnd_45ACP_Mag",nil,35],
							["hgun_Pistol_heavy_02_F",nil,1600],
							["6Rnd_45ACP_Cylinder",nil,20],
							["hgun_PDW2000_F",nil,2500],
							["30Rnd_9x21_Mag",nil,300],
							["SMG_02_F",nil,3000],
							["30Rnd_9x21_Mag",nil,300],
							["SMG_01_F",nil,3500],
							["30Rnd_45ACP_Mag_SMG_01",nil,350],
							["arifle_MX_Black_F",nil,1600],
							["30Rnd_65x39_caseless_mag",nil,100],
							["arifle_SDAR_F",nil,1600],
							["30Rnd_556x45_Stanag",nil,100],
							["20Rnd_556x45_UW_mag",nil,100],
							["arifle_MXC_Black_F",nil,1800],
							["30Rnd_65x39_caseless_mag",nil,400],
							["arifle_MXM_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["srifle_DMR_06_olive_F",nil,4000],
							["20Rnd_762x51_Mag",nil,20],
							["arifle_MX_GL_Black_F",nil,2000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["3rnd_UGL_FlareWhite_F",nil,100],
							["3rnd_UGL_FlareRed_F",nil,100],
							["3rnd_Smoke_Grenade_Shell",nil,100],
							["arifle_MX_SW_Black_F",nil,3000],
							["30Rnd_65x39_caseless_mag",nil,100],
							["100Rnd_65x39_caseless_mag",nil,150],
							["MMG_01_tan_F",nil,9000],
							["150Rnd_93x64_Mag",nil,350],
							["MMG_02_black_F",nil,9000],
							["130Rnd_338_Mag",nil,350],
							["srifle_DMR_04_F",nil,4000],
							["10Rnd_127x54_Mag",nil,20],
							["srifle_DMR_03_F",nil,4000],
							["20Rnd_762x51_Mag",nil,20],
							["srifle_LRR_camo_F",nil,4100],
							["7Rnd_408_Mag",nil,600],
							["srifle_EBR_DMS_pointer_snds_f",nil,12000],
							["20Rnd_762x51_Mag",nil,600],
							["LMG_Mk200_F",nil,8000],
							["200Rnd_65x39_cased_Box",nil,300],
							["200Rnd_65x39_cased_Box_Tracer",nil,300],
							["LMG_Zafir_F",nil,10000],
							["150Rnd_762x51_Box",nil,400],
							["srifle_GM6_camo_F",nil,9000],
							["5Rnd_127x108_Mag",700],
							["srifle_DMR_02_sniper_AMS_LP_S_F",nil,8000],
							["10Rnd_338_Mag",nil,20],
							//attachments
							["muzzle_snds_338_black",nil,100],
							["muzzle_snds_93mmg",nil,100],
							["muzzle_snds_L",nil,100],
							["muzzle_snds_H",nil,300],
							["muzzle_snds_B",nil,400],
							["muzzle_snds_acp",nil,100],
							["muzzle_snds_H_MG",nil,400],
							["acc_flashlight",nil,200],
							["acc_pointer_IR",nil,200],
							["bipod_01_F_blk",nil,300],
							["bipod_02_F_blk",nil,300],
							["bipod_03_F_blk",nil,300],
							["optic_MRD",nil,150],
							["optic_Yorris",nil,150],
							["optic_Aco_smg",nil,150],
							["optic_ACO_grn_smg",nil,150],
							["optic_Aco",nil,150],
							["optic_ACO_grn",nil,150],
							["optic_Holosight",nil,1700],
							["optic_Arco",nil,200],
							["optic_MRCO",nil,210],
							["optic_Hamr",nil,250],
							["optic_NVS",nil,1000],
							["optic_DMS",nil,1000],
							["optic_KHS_blk",nil,1200],
							["optic_SOS",nil,1200],
							["optic_LRPS",nil,1200],
							//Launchers and grenades
							["HandGrenade_Stone","Flashbang",1000],
							["SmokeShellBlue","Teargas",700],
							["ItemRadio","CellPhone",500]
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
						["hgun_Rook40_F",nil,800],
						["16Rnd_9x21_mag",nil,40],
						["hgun_ACPC2_F",nil,1200],
						["9Rnd_45ACP_Mag",nil,55],
						["hgun_Pistol_heavy_02_F",nil,2000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["hgun_PDW2000_F",nil,2200],
						["30Rnd_9x21_Mag",nil,100],
						["arifle_Mk20_F",nil,2300],
						["30Rnd_556x45_Stanag",nil,100],
						["arifle_Mk20C_F",nil,2400],
						["30Rnd_556x45_Stanag",nil,100],
						["arifle_Katiba_F",nil,2500],
						["30Rnd_65X39_caseless_green",nil,100],
						["arifle_Katiba_C_F",nil,2600],
						["30Rnd_65X39_caseless_green",nil,100],
						["srifle_DMR_01_F",nil,6000],
						["10Rnd_762x54_Mag",nil,150],
						["srifle_LRR_F",nil,10000],
						["7Rnd_408_Mag",nil,300],
						["LMG_Mk200_F",nil,10000],
						["200Rnd_65x39_cased_Box",nil,300],
						["200Rnd_65x39_cased_Box",nil,300],
						["MMG_01_tan_F",nil,12000],
						["150Rnd_93x64_Mag",nil,350],
						["srifle_DMR_02_F",nil,11000],
						["10Rnd_338_Mag",nil,20],
						["srifle_DMR_03_F",nil,9000],
						["20Rnd_762x51_Mag",nil,150],
						["srifle_DMR_04_F",nil,8000],
						["10Rnd_127x54_Mag",nil,300],
						["srifle_DMR_05_blk_F",nil,9000],
						["10Rnd_93x64_DMR_05_Mag",nil,150],
						["srifle_DMR_06_camo_F",nil,6000],
						["20Rnd_762x51_Mag",nil,100],
						["NVGoggles_OPFOR","NVG Black",500],
						["optic_Aco_smg",nil,100],
						["optic_Aco_grn_smg",nil,100],
						["optic_Aco",nil,100],
						["optic_Aco_grn",nil,100],
						["optic_Hamr",nil,300],
						["optic_Arco",nil,200],
						["optic_Holosight",nil,300],
						["optic_DMS",nil,1000],
						["optic_LRPS",nil,1200],
						["optic_AMS",nil,1100],
						["optic_KHS_blk",nil,1100],
						["bipod_01_F_blk",nil,50],
						["bipod_02_F_blk",nil,50],
						["bipod_03_F_blk",nil,50],
						["ItemRadio","CellPhone",0]
					]
				];
			};
		};
	};

	case "rebel_mark":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Gun Runner's Dealer",
					[
						["MMG_01_hex_ARCO_LP_F",nil,15000],
						["150Rnd_93x64_Mag",nil,300],
						["srifle_DMR_02_camo_AMS_LP_F",nil,13000],
						["10Rnd_338_Mag",nil,100],
						["srifle_DMR_03_MRCO_F",nil,9000],
						["srifle_DMR_03_woodland_F",nil,9000],
						["srifle_DMR_03_multicam_F",nil,9000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_04_MRCO_F",nil,6000],
						["10Rnd_127x54_Mag",nil,100],
						["srifle_DMR_05_DMS_snds_F",nil,7000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["srifle_DMR_06_camo_khs_F",nil,4000],
						["20Rnd_762x51_Mag",nil,100],
						["MMG_02_camo_F",nil,9000],
						["130Rnd_338_Mag",nil,100],
						["arifle_Katiba_GL_ARCO_pointer_F",nil,7000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_GL_Holo_pointer_snds_F",nil,9000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_SW_Hamr_pointer_F",nil,9000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,300],
						["1Rnd_Smoke_Grenade_shell",nil,150],
						["1Rnd_SmokeRed_Grenade_Shell",nil,150],
						["UGL_FlareWhite_F",nil,150],
						["UGL_FlareGreen_F",nil,150],
						["muzzle_snds_338_black",nil,100],
						["muzzle_snds_93mmg",nil,100],
						["muzzle_snds_B",nil,100],
						["optic_AMS",nil,1000],
						["optic_KHS_blk",nil,1000],
						["bipod_01_F_blk",nil,50],
						["bipod_02_F_blk",nil,50],
						["bipod_03_F_blk",nil,50]
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
						["hgun_Rook40_F",nil,800],
						["16Rnd_9x21_Mag",nil,40],
						["hgun_ACPC2_F",nil,1200],
						["9Rnd_45ACP_Mag",nil,55],
						["hgun_Pistol_heavy_02_F",nil,2000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["hgun_PDW2000_F",nil,2200],
						["30Rnd_9x21_Mag",nil,100],
						["srifle_DMR_01_F","Rahim Hunting Rifle",6000],
						["10Rnd_762x54_Mag",nil,150],
						["srifle_DMR_06_olive_F","Mk14 Hunting Rifle",8500],
						["20Rnd_762x51_Mag",nil,200],
						["optic_ACO_grn_smg",nil,250],
						["optic_DMS",nil,1100],
						["V_Rangemaster_belt",nil,200],
						["ItemRadio","CellPhone",500]
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
						["NVGoggles",nil,150],
						["ToolKit",nil,10],
						["ItemMap",nil,100],
						["hgun_Rook40_F",nil,900],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,1100],
						["9Rnd_45ACP_Mag",nil,55],
						["hgun_Pistol_heavy_02_F",nil,1500],
						["6Rnd_45ACP_Cylinder",nil,20],
						["hgun_PDW2000_F",nil,1600],
						["30Rnd_9x21_Mag",nil,120],
						["optic_ACO_grn_smg",nil,250],
						["V_Rangemaster_belt",nil,200],
						["ItemRadio","CellPhone",500]
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
				["ItemMap",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,30],
				["NVGoggles",nil,200],
				["Chemlight_red",nil,50],
				["Chemlight_yellow",nil,50],
				["Chemlight_green",nil,50],
				["Chemlight_blue",nil,50],
				["ItemRadio","CellPhone",500]
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
				["Bounty Hunter's Toolbox",
					[
						["hgun_P07_snds_F","Stun Pistol",400],
						["16Rnd_9x21_Mag","Stun Mag",20],
						["arifle_MX_F","Lethal MX",2500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MXC_F","Lethal MXC",2700],
						["30Rnd_65x39_caseless_mag",nil,100],
						["Smokeshell","Smoke Grenade",50],
						["optic_Arco",nil,200],
						["optic_Hamr",nil,300],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};

	case "donator":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Fancy Weapon Shop",
					[
						["hgun_Rook40_F","Rook 9mm",800],
						["16Rnd_9x21_Mag","Rook Mag",25],
						["hgun_pistol_heavy_01_F","45 ACP Pistol",1100],
						["11Rnd_45ACP_Mag","45 ACP Mag",85],
						["SMG_01_F","Vermin 45",1200],
						["30Rnd_45ACP_Mag_SMG_01","Vermin Mag",70],
						["hgun_PDW2000_F","PDW2000",1000],
						["30Rnd_9x21_Mag","PDW Mag",35],
						["arifle_Mk20C_plain_F","MK20",1300],
						["30Rnd_556x45_Stanag","MK20 Mag",800],
						["LMG_Mk200_F","MK200",6000],
						["200Rnd_65x39_cased_Box","MK200 Mag",200],
						["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer Mag",200],
						["LMG_Zafir_F","Zafir",8000],
						["150Rnd_762x51_Box","Zafir Mag",350],
						["150Rnd_762x51_Box_Tracer","Zafir Mag Tracer",350],
						["MMG_01_tan_F",nil,4000],
						["150Rnd_93x64_Mag",nil,20],
						["srifle_DMR_02_F",nil,4000],
						["10Rnd_338_Mag",nil,20],
						["srifle_DMR_03_F",nil,4000],
						["20Rnd_762x51_Mag",nil,20],
						["srifle_DMR_04_F",nil,4000],
						["10Rnd_127x54_Mag",nil,20],
						["srifle_DMR_05_blk_F",nil,4000],
						["10Rnd_93x64_DMR_05_Mag",nil,20],
						["srifle_DMR_06_camo_F",nil,4000],
						["20Rnd_762x51_Mag",nil,20],
						["srifle_LRR_F","LRR 408",10000],
						["7Rnd_408_Mag","LRR Mag",100],
						["srifle_GM6_camo_F",nil,12000],
						["5Rnd_127x108_Mag",nil,150],
						["HandGrenade_Stone","Flashbang",3000],
						["muzzle_snds_H","65 Suppressor",100],
						["muzzle_snds_L","9mm Suppressor",100],
						["muzzle_snds_acp","45 ACP Suppressor",100],
						["muzzle_snds_M","556 Suppressor",100],
						["muzzle_snds_B","762 Suppressor",100],
						["muzzle_snds_H_MG","65 LMG Suppressor",100],
						["muzzle_snds_338_black",nil,100],
						["muzzle_snds_93mmg",nil,100],
						["muzzle_snds_B",nil,100],
						["optic_ACO_grn_smg","ACO SMG",100],
						["optic_MRCO","MRCO",800],
						["optic_SOS","SOS",1500],
						["optic_DMS","DMS",1000],
						["optic_NVS","NVS",2000],
						["optic_AMS",nil,1000],
						["optic_KHS_blk",nil,1000],
						["NVGoggles_OPFOR","NVG Black",2000],
						["Rangefinder",nil,200],
						["ToolKit",nil,50],
						["itemgps","GPS",50],
						["FirstAidKit",nil,25],
						["G_Bandanna_sport",nil,50],
						["G_Bandanna_tan",nil,50],
						["G_Bandanna_shades",nil,60],
						["G_Balaclava_combat",nil,100],
						["G_Balaclava_lowprofile",nil,100],
						["U_O_FullGhillie_ard",nil,2000],
						["U_O_FullGhillie_lsh",nil,2000],
						["U_O_FullGhillie_sard",nil,2000],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};

	case "dev_mark":
	{
		switch(true) do
		{
			case (__GETC__(life_adminlevel) == 5): 
			{
				["Developer Weapons",
					[
						["MMG_01_tan_F",nil,0],
						["150Rnd_93x64_Mag",nil,0],
						["srifle_DMR_02_F",nil,0],
						["10Rnd_338_Mag",nil,0],
						["srifle_DMR_03_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
						["srifle_DMR_04_F",nil,0],
						["10Rnd_127x54_Mag",nil,0],
						["srifle_DMR_05_blk_F",nil,0],
						["10Rnd_93x64_DMR_05_Mag",nil,0],
						["srifle_DMR_06_camo_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
						["muzzle_snds_338_black",nil,0],
						["muzzle_snds_93mmg",nil,0],
						["muzzle_snds_B",nil,0],
						["optic_AMS",nil,0],
						["optic_KHS_blk",nil,0],
						["optic_Nightstalker",nil,0],
						["optic_tws",nil,0],
						["optic_tws_mg",nil,0],
						["bipod_01_F_blk",nil,0],
						["bipod_02_F_blk",nil,0],
						["bipod_03_F_blk",nil,0],
						["ItemRadio","CellPhone",500]
					]
				];
			};
		};
	};
};

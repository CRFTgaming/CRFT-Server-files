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
						["TRYK_V_Sheriff_BA_T4","Med Vest OD",400],
						["TRYK_V_Sheriff_BA_TB4","Med Vest BLK",400],
						["B_FieldPack_ocamo",nil,200],
						["TRYK_B_Medbag_ucp",nil,200],
						["TRYK_B_Medbag_BK",nil,200],
						["TRYK_B_Medbag",nil,200],
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
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
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
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
							["hgun_mas_m9_F","Beretta M9",1000],
							["15Rnd_mas_9x21_Mag","15rd Beretta Mag",50],
							["hgun_mas_glock_F","Glock 17",1000],
							["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],
							["hgun_mas_glocksf_F","Glock 21",1500],
							["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
							["hgun_mas_acp_F","1911",1500],
							["8Rnd_mas_45acp_Mag","8rd 1911 Mag",50],					
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
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
							["hgun_mas_m9_F","Beretta M9",1000],
							["15Rnd_mas_9x21_Mag","15rd Beretta Mag",50],
							["hgun_mas_glock_F","Glock 17",1000],
							["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],
							["hgun_mas_glocksf_F","Glock 21",1500],
							["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
							["hgun_mas_acp_F","1911",1500],
							["8Rnd_mas_45acp_Mag","8rd 1911 Mag",50],	
							["arifle_mas_mp5","MP5A5",1500],
							["30Rnd_mas_9x21_Stanag","MP5A5 mag",70], 
							["PMC_m4","M4 Carbine",3000],
							["30Rnd_556x45_Stanag","M4 Carbine mag",90],
							["arifle_mas_m4vlt","M4 VLTOR",3000],
							["30Rnd_mas_556x45_Stanag","M4 VLTOR mag",90],
							["arifle_mas_m4","M4A1",3000],
							["30Rnd_mas_556x45_Stanag","M4A1 mag",90],
							["arifle_mas_m4c","M4A1 CQB",300],
							["30Rnd_mas_556x45_Stanag","M4A1 CQB mag",90],
							["arifle_mas_hk416","HK416",3000],
							["30Rnd_mas_556x45_Stanag","HK416 mag",90],
							["srifle_mas_hk417","HK417",3000],
							["20Rnd_mas_762x51_Stanag","HK417 mag",90], 
							["arifle_mas_hk417c","Hk417 CQB",3000],
							["20Rnd_mas_762x51_Stanag","Hk417 CQB mag",90],
							["arifle_mas_m16","M16A4",3000],
							["30Rnd_mas_556x45_Stanag","M16A4 mag",90],
							["arifle_mas_g36c","G36C",3000],
							["30Rnd_mas_556x45_Stanag","G36C mag",90],    
							["arifle_mas_fal","FN FAL",3000],
							["20Rnd_mas_762x51_Stanag","FN FAL mag",90],
							["arifle_mas_g3","ARX160 black",3000],
							["20Rnd_mas_762x51_Stanag","ARX160 mag",90], 
							["arifle_mas_l119","L11A1",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 mag",90], 
							["arifle_mas_l119c","L11A1 CQB",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 CQB mag",90],
							["arifle_mas_arx_l","ARX160 black",3000],
							["30Rnd_mas_556x45_Stanag","ARX160 mag",90],
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
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
							["hgun_mas_m9_F","Beretta M9",1000],
							["15Rnd_mas_9x21_Mag","15rd Beretta Mag",50],
							["hgun_mas_glock_F","Glock 17",1000],
							["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],
							["hgun_mas_glocksf_F","Glock 21",1500],
							["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
							["hgun_mas_acp_F","1911",1500],
							["8Rnd_mas_45acp_Mag","8rd 1911 Mag",50],	
							["arifle_mas_mp5","MP5A5",1500],
							["30Rnd_mas_9x21_Stanag","MP5A5 mag",70], 
							["PMC_m4","M4 Carbine",3000],
							["30Rnd_556x45_Stanag","M4 Carbine mag",90],
							["arifle_mas_m4vlt","M4 VLTOR",3000],
							["30Rnd_mas_556x45_Stanag","M4 VLTOR mag",90],
							["arifle_mas_m4","M4A1",3000],
							["30Rnd_mas_556x45_Stanag","M4A1 mag",90],
							["arifle_mas_m4c","M4A1 CQB",300],
							["30Rnd_mas_556x45_Stanag","M4A1 CQB mag",90],
							["arifle_mas_hk416","HK416",3000],
							["30Rnd_mas_556x45_Stanag","HK416 mag",90],
							["srifle_mas_hk417","HK417",3000],
							["20Rnd_mas_762x51_Stanag","HK417 mag",90], 
							["arifle_mas_hk417c","Hk417 CQB",3000],
							["20Rnd_mas_762x51_Stanag","Hk417 CQB mag",90],
							["arifle_mas_m16","M16A4",3000],
							["30Rnd_mas_556x45_Stanag","M16A4 mag",90],
							["arifle_mas_g36c","G36C",3000],
							["30Rnd_mas_556x45_Stanag","G36C mag",90],    
							["arifle_mas_fal","FN FAL",3000],
							["20Rnd_mas_762x51_Stanag","FN FAL mag",90],
							["arifle_mas_g3","ARX160 black",3000],
							["20Rnd_mas_762x51_Stanag","ARX160 mag",90], 
							["arifle_mas_l119","L11A1",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 mag",90], 
							["arifle_mas_l119c","L11A1 CQB",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 CQB mag",90],
							["arifle_mas_arx_l","ARX160 black",3000],
							["30Rnd_mas_556x45_Stanag","ARX160 mag",90],
							["srifle_mas_lrr","LRR AWM",10000],
							["10Rnd_mas_338_Stanag","LRR AWM mag",120], 
							["srifle_mas_m24","M24",11000],
							["5Rnd_mas_762x51_Stanag","M24 mag",200],
							["srifle_mas_m110","M110",10000],
							["20Rnd_mas_762x51_Stanag","M110 mag",120], 
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
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
							["hgun_mas_m9_F","Beretta M9",1000],
							["15Rnd_mas_9x21_Mag","15rd Beretta Mag",50],
							["hgun_mas_glock_F","Glock 17",1000],
							["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],
							["hgun_mas_glocksf_F","Glock 21",1500],
							["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
							["hgun_mas_acp_F","1911",1500],
							["8Rnd_mas_45acp_Mag","8rd 1911 Mag",50],	
							["arifle_mas_mp5","MP5A5",1500],
							["30Rnd_mas_9x21_Stanag","MP5A5 mag",70], 
							["PMC_m4","M4 Carbine",3000],
							["30Rnd_556x45_Stanag","M4 Carbine mag",90],
							["arifle_mas_m4vlt","M4 VLTOR",3000],
							["30Rnd_mas_556x45_Stanag","M4 VLTOR mag",90] ,
							["arifle_mas_m4","M4A1",3000],
							["30Rnd_mas_556x45_Stanag","M4A1 mag",90],
							["arifle_mas_m4c","M4A1 CQB",300],
							["30Rnd_mas_556x45_Stanag","M4A1 CQB mag",90],
							["arifle_mas_hk416","HK416",3000],
							["30Rnd_mas_556x45_Stanag","HK416 mag",90],
							["srifle_mas_hk417","HK417",3000],
							["20Rnd_mas_762x51_Stanag","HK417 mag",90], 
							["arifle_mas_hk417c","Hk417 CQB",3000],
							["20Rnd_mas_762x51_Stanag","Hk417 CQB mag",90],
							["arifle_mas_m16","M16A4",3000],
							["30Rnd_mas_556x45_Stanag","M16A4 mag",90],
							["arifle_mas_g36c","G36C",3000],
							["30Rnd_mas_556x45_Stanag","G36C mag",90],    
							["arifle_mas_fal","FN FAL",3000],
							["20Rnd_mas_762x51_Stanag","FN FAL mag",90],
							["arifle_mas_g3","ARX160 black",3000],
							["20Rnd_mas_762x51_Stanag","ARX160 mag",90], 
							["arifle_mas_l119","L11A1",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 mag",90], 
							["arifle_mas_l119c","L11A1 CQB",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 CQB mag",90],
							["arifle_mas_arx_l","ARX160 black",3000],
							["30Rnd_mas_556x45_Stanag","ARX160 mag",90],
							["srifle_mas_lrr","LRR AWM",10000],
							["10Rnd_mas_338_Stanag","LRR AWM mag",120], 
							["srifle_mas_m24","M24",11000],
							["5Rnd_mas_762x51_Stanag","M24 mag",200],
							["srifle_mas_m110","M110",10000],
							["20Rnd_mas_762x51_Stanag","M110 mag",120],
							["LMG_mas_m60_F","M60E4 ",12000],
							["100Rnd_mas_762x51_Stanag","M60E4  mag",200], 
							["PMC_m249","M249 Saw ",12000],
							["PMC_m249_mag","M249 Saw mag",200], 
							["LMG_mas_mk48_F","MK48",12000],
							["100Rnd_mas_762x51_Stanag","MK48 mag",200], 
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
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
							["hgun_mas_m9_F","Beretta M9",1000],
							["15Rnd_mas_9x21_Mag","15rd Beretta Mag",50],
							["hgun_mas_glock_F","Glock 17",1000],
							["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],
							["hgun_mas_glocksf_F","Glock 21",1500],
							["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
							["hgun_mas_acp_F","1911",1500],
							["8Rnd_mas_45acp_Mag","8rd 1911 Mag",50],	
							["arifle_mas_mp5","MP5A5",1500],
							["30Rnd_mas_9x21_Stanag","MP5A5 mag",70], 
							["PMC_m4","M4 Carbine",3000],
							["30Rnd_556x45_Stanag","M4 Carbine mag",90],
							["arifle_mas_m4vlt","M4 VLTOR",3000],
							["30Rnd_mas_556x45_Stanag","M4 VLTOR mag",90] ,
							["arifle_mas_m4","M4A1",3000],
							["30Rnd_mas_556x45_Stanag","M4A1 mag",90],
							["arifle_mas_m4c","M4A1 CQB",300],
							["30Rnd_mas_556x45_Stanag","M4A1 CQB mag",90],
							["arifle_mas_hk416","HK416",3000],
							["30Rnd_mas_556x45_Stanag","HK416 mag",90],
							["srifle_mas_hk417","HK417",3000],
							["20Rnd_mas_762x51_Stanag","HK417 mag",90], 
							["arifle_mas_hk417c","Hk417 CQB",3000],
							["20Rnd_mas_762x51_Stanag","Hk417 CQB mag",90],
							["arifle_mas_m16","M16A4",3000],
							["30Rnd_mas_556x45_Stanag","M16A4 mag",90],
							["arifle_mas_g36c","G36C",3000],
							["30Rnd_mas_556x45_Stanag","G36C mag",90],    
							["arifle_mas_fal","FN FAL",3000],
							["20Rnd_mas_762x51_Stanag","FN FAL mag",90],
							["arifle_mas_g3","ARX160 black",3000],
							["20Rnd_mas_762x51_Stanag","ARX160 mag",90], 
							["arifle_mas_l119","L11A1",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 mag",90], 
							["arifle_mas_l119c","L11A1 CQB",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 CQB mag",90],
							["arifle_mas_arx_l","ARX160 black",3000],
							["30Rnd_mas_556x45_Stanag","ARX160 mag",90],
							["srifle_mas_lrr","LRR AWM",10000],
							["10Rnd_mas_338_Stanag","LRR AWM mag",120], 
							["srifle_mas_m24","M24",11000],
							["5Rnd_mas_762x51_Stanag","M24 mag",200],
							["srifle_mas_m110","M110",10000],
							["20Rnd_mas_762x51_Stanag","M110 mag",120],
							["LMG_mas_m60_F","M60E4 ",12000],
							["100Rnd_mas_762x51_Stanag","M60E4  mag",200], 
							["PMC_m249","M249 Saw ",12000],
							["PMC_m249_mag","M249 Saw mag",200], 
							["LMG_mas_mk48_F","MK48",12000],
							["100Rnd_mas_762x51_Stanag","MK48 mag",200], 
							["srifle_LRR_F",nil,4000],
							["7Rnd_408_Mag",nil,100],
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
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
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
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
							["hgun_mas_m9_F","Beretta M9",1000],
							["15Rnd_mas_9x21_Mag","15rd Beretta Mag",50],
							["hgun_mas_glock_F","Glock 17",1000],
							["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],
							["hgun_mas_glocksf_F","Glock 21",1500],
							["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
							["hgun_mas_acp_F","1911",1500],
							["8Rnd_mas_45acp_Mag","8rd 1911 Mag",50],	
							["arifle_mas_mp5","MP5A5",1500],
							["30Rnd_mas_9x21_Stanag","MP5A5 mag",70], 
							["PMC_m4","M4 Carbine",3000],
							["30Rnd_556x45_Stanag","M4 Carbine mag",90],
							["arifle_mas_m4vlt","M4 VLTOR",3000],
							["30Rnd_mas_556x45_Stanag","M4 VLTOR mag",90],
							["arifle_mas_m4","M4A1",3000],
							["30Rnd_mas_556x45_Stanag","M4A1 mag",90],
							["arifle_mas_m4c","M4A1 CQB",300],
							["30Rnd_mas_556x45_Stanag","M4A1 CQB mag",90],
							["arifle_mas_hk416","HK416",3000],
							["30Rnd_mas_556x45_Stanag","HK416 mag",90],
							["srifle_mas_hk417","HK417",3000],
							["20Rnd_mas_762x51_Stanag","HK417 mag",90], 
							["arifle_mas_hk417c","Hk417 CQB",3000],
							["20Rnd_mas_762x51_Stanag","Hk417 CQB mag",90],
							["arifle_mas_m16","M16A4",3000],
							["30Rnd_mas_556x45_Stanag","M16A4 mag",90],
							["arifle_mas_g36c","G36C",3000],
							["30Rnd_mas_556x45_Stanag","G36C mag",90],    
							["arifle_mas_fal","FN FAL",3000],
							["20Rnd_mas_762x51_Stanag","FN FAL mag",90],
							["arifle_mas_g3","ARX160 black",3000],
							["20Rnd_mas_762x51_Stanag","ARX160 mag",90], 
							["arifle_mas_l119","L11A1",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 mag",90], 
							["arifle_mas_l119c","L11A1 CQB",3000],
							["30Rnd_mas_556x45_Stanag","L11A1 CQB mag",90],
							["arifle_mas_arx_l","ARX160 black",3000],
							["30Rnd_mas_556x45_Stanag","ARX160 mag",90],
							["srifle_mas_lrr","LRR AWM",10000],
							["10Rnd_mas_338_Stanag","LRR AWM mag",120], 
							["srifle_mas_m24","M24",11000],
							["5Rnd_mas_762x51_Stanag","M24 mag",200],
							["srifle_mas_m110","M110",10000],
							["20Rnd_mas_762x51_Stanag","M110 mag",120],
							["LMG_mas_m60_F","M60E4 ",12000],
							["100Rnd_mas_762x51_Stanag","M60E4  mag",200], 
							["PMC_m249","M249 Saw ",12000],
							["PMC_m249_mag","M249 Saw mag",200], 
							["LMG_mas_mk48_F","MK48",12000],
							["100Rnd_mas_762x51_Stanag","MK48 mag",200], 
							["srifle_mas_m107","M107",11000],
							["5Rnd_mas_127x99_Stanag","M107 mag",200], 
							["arifle_mas_m1014","Benelli M1014",6000],
							["7Rnd_mas_12Gauge_Slug","12 Gauge Slug",150],
							["arifle_mas_m14","M14 old",2000],
							["20Rnd_mas_762x51_Stanag","M14 Old mag",90],
							["srifle_LRR_F",nil,4000],
							["7Rnd_408_Mag",nil,100],
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
	
	case "sheriff_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a Deputy! Please see the sheriff about applying."};
			case (__GETC__(life_coplevel) == 7): 
			{
				["Bornholm Sheriff's Equipment",
					[
							["ItemGPS",nil,0],
							["Toolkit",nil,200],
							["ItemMap",nil,0],
							["ItemRadio","CellPhone",0],
							["FirstAidKit",nil,20],
							["Rangefinder",nil,100],
							["pmc_earpiece","NVG Ear Piece",1500],
							["NVGoggles_OPFOR","NVG Black",2000],
							["NVGoggles","NVG Brown",2000],
							["NVGoggles_INDEP","NVG Green",2000]
					]
				];
			};
		};
	};	
	case "sheriff_armory":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a Deputy! Please see the sheriff about applying."};
			case (__GETC__(life_coplevel) == 7): 
			{
				["Bornholm Sheriff's Armory",
					[
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
							["hgun_mas_m9_F","Beretta M9",1000],
							["15Rnd_mas_9x21_Mag","15rd Beretta Mag",50],
							["hgun_mas_glock_F","Glock 17",1000],
							["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],
							["hgun_mas_glocksf_F","Glock 21",1500],
							["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
							["hgun_mas_acp_F","1911",1500],
							["8Rnd_mas_45acp_Mag","8rd 1911 Mag",50],
							["arifle_mas_mp5","MP5",3500],
							["30Rnd_mas_9x21_Stanag","30rd MP5 Mag",100],
							["arifle_mas_m1014","Benelli",3500],
							["7Rnd_mas_12Gauge_Slug","7rd 12g Slugs",100],
							["PMC_m4","M4 Rifle",3500],
							["30Rnd_556x45_Stanag","M4 30rd Mag",100],
							["arifle_mas_m16","M16",3500],
							["30Rnd_mas_556x45_Stanag","M16 30rd Mag",100]
					]
				];
			};
		};	
	};	
	case "sheriff_attachment":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a Deputy! Please see the sheriff about applying."};
			case (__GETC__(life_coplevel) == 7): 
			{
				["Attachment Shop",
					[
							["muzzle_snds_338_black",nil,100],
							["muzzle_snds_93mmg",nil,100],
							["muzzle_snds_L",nil,100],
							["muzzle_snds_H",nil,300],
							["muzzle_snds_B",nil,400],
							["muzzle_mas_snds_M","M4 Suppressor",400],
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
							["optic_mas_Holosight_blk",nil,1700],
							["optic_Arco",nil,200],
							["optic_MRCO",nil,210],
							["optic_Hamr",nil,250],
							["optic_NVS",nil,1000],
							["optic_mas_acog_eo",nil,1000],
							["optic_mas_aim",nil,1000],
							["optic_DMS",nil,1000],
							["optic_KHS_blk",nil,1200],
							["optic_SOS",nil,1200],
							["optic_LRPS",nil,1200],
							["optic_mas_LRPS","LRPS NVG",1200]	
					]
				];
			};
		};	
	};	
	case "sheriff_tf":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a Deputy! Please see the sheriff about applying."};
			case (__GETC__(life_coplevel) == 7): 
			{
				["Sheriff's Task Force",
					[
							["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
							["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
							["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",100],
							["HandGrenade_Stone","Flashbang",1000],
							["SmokeShellBlue","Teargas",700],
							["hgun_ACPC2_F",nil,900],
							["9Rnd_45ACP_Mag",nil,30],
							["hgun_Pistol_heavy_01_F",nil,1100],
							["11Rnd_45ACP_Mag",nil,35],
							["hgun_mas_glock_F","Glock 17",1100],
							["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",100],
							["hgun_mas_usp_F","USP .45",1100],
							["12Rnd_mas_45acp_Mag","12rd USP Mag",100],
							["hgun_mas_glocksf_F","Glock 21",1100],
							["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",100],
							//SMG						
							["arifle_mas_mp5_sd","MP5 SD",3000],
							["30Rnd_mas_9x21_Stanag","30rd MP5 Mag",100],							
							//M4 Variants					
							["arifle_mas_hk416","HK416",3500],
							["30Rnd_mas_556x45_Stanag","HK416 30RD Mag",100],							
							["arifle_mas_hk416_gl","HK416 GL",3500],
							["30Rnd_mas_556x45_Stanag","HK416 30RD Mag",100],
							["UGL_FlareWhite_F","1Rd White Flare",25],							
							["arifle_mas_hk417c","HK417 CQB",3500],
							["20Rnd_mas_762x51_Stanag","HK417 20RD Mag",100],						
							["arifle_mas_hk417_m203c","HK417 GL CQB",3500],
							["20Rnd_mas_762x51_Stanag","HK417 20RD Mag",100],
							["UGL_FlareWhite_F","1Rd White Flare",25],							
							["arifle_mas_l119","L119 Rifle",3500],
							["30Rnd_mas_556x45_Stanag","L119 30rd Mag",100],							
							["arifle_mas_arx","AR-X",3500],
							["30Rnd_mas_556x45_Stanag","AR-X 30rd Mag",100],							
							["arifle_mas_arx_l","AR-X Long Barrel",3500],
							["30Rnd_mas_556x45_Stanag","AR-X 30rd Mag",100],
							//Long Range					
							["srifle_mas_m24","M24 Rifle",4000],
							["5Rnd_mas_762x51_Stanag","5rd M24 Mag",100],
							["srifle_mas_lrr","LRR Rifle",4000],
							["10Rnd_mas_338_Stanag","10rd LRR Mag",100],
							["srifle_mas_m107","M107",6500],
							["srifle_mas_m107_v","M107 Woodland",6500],
							["5Rnd_mas_127x99_Stanag","5rd M107 Mag",500],
							//LMG
							["LMG_mas_M240_F","M240",9000],
							["LMG_mas_Mk48_F","MK-48",9000],
							["LMG_mas_M60_F","M60 A4",10000],
							["100Rnd_mas_762x51_Stanag","LMG 100rd Box",250],
							["150Rnd_762x51_Box","LMG 150rd Box",300]
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
						["hgun_mas_mak_F","Makarov",250],
						["8Rnd_mas_9x18_Mag","8rd Makarov Mag",50],
						["hgun_mas_grach_F","Grach",500],
						["15Rnd_mas_9x21_Mag","15rd Grach Mag",50],
						["hgun_mas_glock_F","Glock 17",500],
						["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],	
						["hgun_mas_glocksf_F","Glock 21",500],
						["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
						["hgun_mas_uzi_F","UZI",1250],
						["25Rnd_mas_9x19_Mag","25rd UZI Mag",50],
						["arifle_mas_aks74u","AKS 74U",1500],
						["30Rnd_mas_545x39_mag","30rd Ak74 Mag",100],
						["arifle_mas_bizon","Bizon",1500],
						["64Rnd_mas_9x18_mag","64rd Bizon Mag",100],
						["arifle_mas_saiga","Saiga 12g",2000],
						["10Rnd_mas_12Gauge_Slug","10rd Saiga Mag",100],
						["arifle_mas_ak_74m","AK 74",2500],
						["30Rnd_mas_545x39_mag","30rd Ak74 Mag",100],			
						["arifle_mas_m70","M70",2500],
						["30Rnd_mas_762x39_mag","30rd M70 Mag",100],				
						["arifle_mas_ak_74m","AK 74",2500],
						["30Rnd_mas_545x39_mag","30rd Ak74 Mag",100],					
						["arifle_mas_g3","G3",2500],
						["20Rnd_mas_762x51_Stanag","20rd G3 Mag",100],					
						["arifle_mas_g3s","G3",2500],
						["20Rnd_mas_762x51_Stanag","20rd G3 Mag",100],						
						["arifle_mas_g36c","G36C",2500],
						["30Rnd_mas_556x45_Stanag","30rd G36C Mag",100],						
						["arifle_mas_mk16","SCAR Mk16",3500],
						["30Rnd_mas_556x45_Stanag","30rd SCAR Mag",100],						
						["arifle_mas_mk16_gl","SCAR Mk16 GL",4000],
						["30Rnd_mas_556x45_Stanag","30rd SCAR Mag",100],
						["UGL_FlareWhite_F","1rd Flare Mag",25],						
						["arifle_mas_mk16_l","SCAR Mk16 Long Barrel",4000],
						["30Rnd_mas_556x45_Stanag","30rd SCAR Mag",100],						
						["arifle_mas_mk17","SCAR Mk17",4500],
						["20Rnd_mas_762x51_Stanag","20rd SCAR Mag",100],						
						["srifle_mas_svd","SVD Rifle",4500],
						["10Rnd_mas_762x54_mag","10rd SVD Mag",100],
						["LMG_mas_rpk_F","RPK",5500],
						["100Rnd_mas_545x39_mag","100rd RPK Mag",100],
						["LMG_mas_pkm_F","PKM",6000],
						["100Rnd_mas_762x54_mag","100rd PKM Mag",100],
						["NVGoggles_OPFOR","NVG Black",500],
						["optic_mas_kobra",nil,100],
						["optic_mas_PSO_kv",nil,100],
						["optic_mas_PSO",nil,100],
						["optic_mas_PSO_eo",nil,100],
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
						["hgun_mas_m9_F","Beretta M9",1000],
						["15Rnd_mas_9x21_Mag","15rd Beretta Mag",50],
						["hgun_mas_glock_F","Glock 17",1000],
						["15Rnd_mas_9x21_Mag","15rd Glock 17 Mag",50],
						["hgun_mas_glocksf_F","Glock 21",1500],
						["12Rnd_mas_45acp_Mag","12rd Glock 21 Mag",50],
						["hgun_mas_acp_F","1911",1500],
						["8Rnd_mas_45acp_Mag","8rd 1911 Mag",50],				
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
						["DDOPP_X26","Yellow X-26 Tazer Pistol",500],
						["DDOPP_1Rnd_X26","X-26 Tazer Rounds",20],
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

#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_Rangemaster","Cop Uniform",100];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["U_B_HeliPilotCoveralls","Air Patrol Flight Suit",200];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["U_OrestesBody","Undercover 1",100];
			_ret pushBack ["U_NikosBody","Undercover 2",100];
			_ret pushBack ["U_NikosAgedBody","Undercover 3",100];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["U_B_Wetsuit",nil,300];
			_ret pushBack ["U_B_GhillieSuit",nil,600];
			_ret pushBack ["U_B_FullGhillie_ard",nil,600];
			_ret pushBack ["U_B_FullGhillie_lsh",nil,600];
			_ret pushBack ["U_B_FullGhillie_sard",nil,600];
			_ret pushBack ["45KOso_black","SWAT Fatigues",500];
			_ret pushBack ["U_B_CombatUniform_mcam",SWAT,600];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["U_Competitor","Sheriff Uniform",100];
			_ret pushBack ["TRYK_U_B_Denim_T_BK","Sheriff Undercover",100];
			_ret pushBack ["TRYK_U_denim_jersey_blu","Sheriff Undercover 1",100];
			_ret pushBack ["U_PMC_IndUniformLS_BSBPBB","Sheriff Black Tactical",200];
			_ret pushBack ["U_PMC_IndUniformLS_GSBPBB","Sheriff Green Tactical",200];
			_ret pushBack ["TRYK_U_B_wood_CombatUniform","Sheriff Woodland",200];
			_ret pushBack ["TRYK_U_B_Woodland","Sheriff Woodland 2",200];
			_ret pushBack ["45KOso_black","Sheriff SWAT",200];
			_ret pushBack ["TRYK_B_USMC_R","Sheriff SWAT 2",200];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_Cap_blk",nil,50];
			_ret pushBack ["H_Cap_police","Police Hat",50];
			_ret pushBack ["H_HelmetB_plain_mcamo",nil,200];
			_ret pushBack ["H_PilotHelmetHeli_B","Air Patrol Helmet",350];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_Beret_blk",nil,100];
			_ret pushBack ["H_MilCap_blue",nil,100];
			_ret pushBack ["H_Helmet_Kerry",nil,200];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["H_Beret_02",nil,100];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,200];
			_ret pushBack ["H_Cap_headphones","FTO Hat",100];
			_ret pushBack ["H_PilotHelmetFighter_B","Gas Mask",800];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,100];
			_ret pushBack ["H_Bandanna_khk_hs",nil,100];
			_ret pushBack ["H_HelmetB_light_black",nil,200];
			_ret pushBack ["H_Cap_blk_CMMG",nil,200];
			_ret pushBack ["45KOso_helmet_alpha","SWAT Tac Helmet",400];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["H_Cap_blk","Sheriff Hat",50];
			_ret pushBack ["H_HelmetB_plain_blk","Ballistic Helmet",50];
			_ret pushBack ["Vdo_opscore_black_3_peltor","Voodoo Helmet Blk",50];
			_ret pushBack ["45KOso_helmet_alpha","Sheriff SWAT Helmet",50];
			_ret pushBack ["H_HelmetB_light_snakeskin","Sheriff SWAT Helmet 2",50];
		};
		
	};
	
	//Glasses
	case 2:
	{
		_ret pushBack ["G_Shades_Black",nil,20];
		_ret pushBack ["G_Shades_Blue",nil,20];
		_ret pushBack ["G_Sport_Blackred",nil,20];
		_ret pushBack ["G_Aviator",nil,20];
		_ret pushBack ["G_Squares",nil,20];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["G_Lowprofile",nil,30];
			_ret pushBack ["G_Combat",nil,45];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["G_Diving",nil,55];
			_ret pushBack ["G_Tactical_Black",nil,55];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["TRYK_G_bala_ess_NV","SWAT Balaclava (NVG)",1000];
		};
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt_blk",nil,100];
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["V_TacVest_blk_POLICE",nil,200];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_Chestrig_khk","Air Patrol Rig",300];
			_ret pushBack ["TRYK_V_tacv1_P_BK","Police Vest",300];
			_ret pushBack ["V_TacVestIR_blk",nil,300];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["V_PlateCarrier1_blk",nil,400];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["V_RebreatherB",nil,600];
			_ret pushBack ["V_PlateCarrierSpec_blk","SWAT Heavy Rig",1200];
			_ret pushBack ["V_PlateCarrierGL_blk","SWAT Heavy GL Rig",1200];
			_ret pushBack ["45KO_Special_rig_black","SWAT Tac Vest",2000];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["V_Rangemaster_belt_blk","Sheriff's Duty Belt",100];
			_ret pushBack ["TRYK_v_Sheriff_BA_OD","Sheriff's Duty Vest",200];
			_ret pushBack ["TRYK_V_tacv1lc_SRF_OD","Sheriff's TF Vest (OD)",500];
			_ret pushBack ["TRYK_V_tacv1lc_SRF_BK","Sheriff's TF Vest(BLK)",500];
			_ret pushBack ["TRYK_V_tacv1lc_SRF2_OD","Sheriff's SWAT (OD)",650];
			_ret pushBack ["TRYK_V_tacv1lc_SRF2_BK","Sheriff's SWAT (BLK)",650];
			_ret pushBack ["V_PlateCarrier1_PMC_marpat","Sheriff's SWAT Marpat",650];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_cbr",nil,80],
			["PMC_AssaultPack_Tan",nil,80],
			["PMC_AssaultPack_Blk",nil,80],
			["PMC_AssaultPack_Rgr",nil,80],
			["B_Kitbag_cbr",nil,100],
			["PMC_B_Kitbag_blk",nil,100],
			["B_FieldPack_cbr",nil,150],
			["B_Bergen_sgg",nil,200],
			["B_Bergen_rgr_Exp",nil,200],
			["PMC_B_Carryall_blk",nil,250],
			["PMC_B_Kitbag_blk","Black Kitbag",1000],
			["B_Carryall_cbr",nil,250]
		];
	};
};

_ret;
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
			_ret pushBack ["U_B_CombatUniform_mcam",SWAT,600];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["U_Competitor","Sheriff Uniform",100];
			_ret pushBack ["U_PMC_RedPlaidShirt_DenimCords","Sheriff Undercover",100];
			_ret pushBack ["U_PMC_BluePlaidShirt_BeigeCords","Sheriff Undercover 1",100];
			_ret pushBack ["U_PMC_IndUniformLS_BSBPBB","Sheriff Black Tactical",200];
			_ret pushBack ["U_PMC_IndUniformLS_GSBPBB","Sheriff Green Tactical",200];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_Cap_blk",nil,50];
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
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["H_Cap_blk","Sheriff Hat",50];
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
		};
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,100];
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["V_TacVest_blk_POLICE",nil,200];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_Chestrig_khk","Air Patrol Rig",300];
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
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["V_Rangemaster_belt","Sheriff's Duty Belt",100];
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
			["B_Carryall_cbr",nil,250]
		];
	};
};

_ret;
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
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 0) then
			{
				_ret pushBack ["U_BG_Guerilla2_1","Cadet Uniform",25];
			};
		};
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 1) then
			{
				_ret pushBack ["U_Rangemaster","Cop Uniform",25];
				_ret pushBack ["U_Competitor","Highway Patrol Uniform",25];
			};
		};
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 2) then
			{
				_ret pushBack ["U_B_SpecopsUniform_sgg","HP Uniform",550];
				_ret pushBack ["U_I_G_Story_Protagonist_F","SWAT Uniform",550];
				_ret pushBack ["U_B_CTRG_1","SWAT Uniform 2",550];
				_ret pushBack ["U_B_CTRG_3","SWAT Uniform 3",550];
				_ret pushBack ["U_B_Wetsuit","SWAT Wetsuit",550];
			};
		};
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 4) then
			{
				_ret pushBack ["U_IG_Guerilla3_1","Guerilla UC",250];
				_ret pushBack ["U_OrestesBody","Civilian UC",250];
				_ret pushBack ["U_NikosBody","Civilian UC 2",250];
				_ret pushBack ["U_B_GhillieSuit","Ghillie Suit",1000];
			};
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret pushBack ["U_B_HeliPilotCoveralls","Heli Coveralls",25];
			_ret pushBack ["U_B_pilotCoveralls","Pilot Coveralls",25];
			_ret pushBack ["U_B_GhillieSuit","Ghillie Suit",25];
			_ret pushBack ["U_B_Wetsuit","Wetsuit",25];
			_ret pushBack ["U_C_Journalist","Marshal Uniform",25];
			_ret pushBack ["U_B_SpecopsUniform_sgg",nil,25];
			_ret pushBack ["U_O_SpecopsUniform_blk",nil,25];
		};
		if(__GETC__(life_adminlevel) > 1) then
		{
			_ret pushBack ["U_BG_Guerilla2_1","Admin Skin",75];
		};
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 1) then
			{
				_ret pushBack ["H_HelmetB_plain_mcamo",nil,75];
				_ret pushBack ["H_Booniehat_mcamo",nil,120];
				_ret pushBack ["H_CrewHelmetHeli_B","Gas/Anti-flash Mask",120];
				_ret pushBack ["H_Beret_blk_POLICE",nil,75];
				_ret pushBack ["H_Cap_blk",nil,75];
			};
		};
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 2) then
			{
				_ret pushBack ["H_MilCap_mcamo",nil,100];
			};
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret pushBack ["H_Bandanna_mcamo",nil,75];
			_ret pushBack ["H_BandMask_blk",nil,75];
			_ret pushBack ["H_Beret_red",nil,75];
			_ret pushBack ["H_Booniehat_dgtl",nil,75];
			_ret pushBack ["H_Cap_blk_Raven",nil,75];
			_ret pushBack ["H_CrewHelmetHeli_B",nil,75];
			_ret pushBack ["H_HelmetIA",nil,75];
			_ret pushBack ["H_HelmetCrew_B",nil,75];
			_ret pushBack ["H_MilCap_dgtl",nil,75];
			_ret pushBack ["H_PilotHelmetFighter_B",nil,75];
			_ret pushBack ["H_PilotHelmetHeli_B",nil,75];
			_ret pushBack ["H_Watchcap_blk",nil,75];
			_ret pushBack ["H_Beret_Colonel","C.O. Beret",75];
			_ret pushBack ["H_CrewHelmetHeli_B","Gas/Anti-flash Mask",120];
			_ret pushBack ["H_HelmetSpecB_paint1","SWAT Helmet",75];
			_ret pushBack ["H_HelmetB_camo","SWAT Helmet 2",75];
		};
		if(__GETC__(life_adminlevel) > 2) then
		{
			_ret pushBack ["H_Cap_headphones",nil,75];
		};
	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Diving",nil,55],
			["G_Balaclava_blk","Balaclava",100],
			["G_Balaclava_lowprofile","Low Profile Balaclava",100],
			["G_Bandanna_aviator","Aviator Bandanna",75],
			["G_Bandanna_beast","Beast Bandanna",75],
			["G_Bandanna_shades","Bandanna and Shades",75],
			["G_Bandanna_tan","Tan Bandanna",75]			
		];
	};

	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 1) then
			{
				_ret pushBack ["V_PlateCarrier2_rgr",nil,1500];
				_ret pushBack ["V_TacVest_blk_POLICE","Police Vest",1500];
				_ret pushBack ["V_PlateCarrier1_blk","Black Plate Carrier",1500];
			};
		};
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 2) then
			{
				_ret pushBack ["V_PlateCarrier1_blk","Black Plate Carrier",1500];
				_ret pushBack ["V_TacVest_blk","SWAT Vest",1500];
				_ret pushBack ["V_PlateCarrierH_CTRG","SWAT Plate Carrier",1500];
				_ret pushBack ["V_PlateCarrier1_blk","Officer Vest",1500];
				_ret pushBack ["V_RebreatherB",nil,550];
			};
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret pushBack ["V_BandollierB_oli",nil,800];
			_ret pushBack ["V_BandollierB_blk",nil,800];
			_ret pushBack ["V_TacVest_oli",nil,800];
			_ret pushBack ["V_TacVest_blk",nil,800];
			_ret pushBack ["V_PlateCarrierIA1_dgtl",nil,800];
			_ret pushBack ["V_PlateCarrierIAGL_dgtl",nil,800];
			_ret pushBack ["V_Chestrig_rgr",nil,800];
			_ret pushBack ["V_RebreatherIA",nil,800];
			_ret pushBack ["V_PlateCarrier1_blk",nil,250];
		};
	};

	//Backpacks
	case 4:
	{
		_ret pushBack ["B_Bergen_blk","Police Backpack",2500];
		_ret pushBack ["B_Carryall_khk",nil,500];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["B_HMG_01_weapon_F",nil,6000];
			_ret pushBack ["B_HMG_01_support_F",nil,6000];
			_ret pushBack ["B_AA_01_weapon_F",nil,12000];
			_ret pushBack ["B_AT_01_weapon_F",nil,12000];
			_ret pushBack ["B_HMG_01_support_high_F",nil,6000];
		};
		if(__GETC__(life_coplevel) < 8) then
		{
			if(__GETC__(life_coplevel) > 5) then
			{
				_ret pushBack ["B_UAV_01_backpack_F",nil,750000];
			};
		};
		if(__GETC__(life_coplevel) > 13) then
		{
			_ret pushBack ["B_UAV_01_backpack_F",nil,750000];
		};
	};
};


_ret;

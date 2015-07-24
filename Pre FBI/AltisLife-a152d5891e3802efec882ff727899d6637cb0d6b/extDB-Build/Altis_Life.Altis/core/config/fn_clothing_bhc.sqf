/*
File: fn_clothing_reb.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price


//Shop Title Name
ctrlSetText[3103,"Bounty Hunter Clothing Shop"];


switch (_filter) do
{
//Uniforms
	case 0:
	{
		[
			["U_I_CombatUniform",nil,200],
			["U_I_CombatUniform_tshirt",nil,200]
		];
	};


	//Hats
	case 1:
	{
		[
			["H_Watchcap_camo",nil,30],
			["H_Cap_oli_hs",nil,40],
			["H_Booniehat_dgtl",nil,50],
			["H_MilCap_dgtl",nil,60],
			["H_HelmetIA",nil,180],
			["H_CrewHelmetHeli_I",nil,200],
			["H_PilotHelmetHeli_I",nil,250]
		];
	};


	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Tactical_Clear",nil,25],
			["G_Bandanna_oli",nil,150],
			["G_Balaclava_oli",nil,200]
		];
	};


	//Vest
	case 3:
	{
		[
			["V_BandollierB_rgr",nil,200],
			["V_BandollierB_oli",nil,200],
			["V_PlateCarrierIA1_dgtl",nil,350],
			["V_PlateCarrierIA2_dgtl",nil,400],
			["V_PlateCarrierIAGL_dgtl",nil,500],
			["V_PlateCarrierIAGL_dgtl",nil,900]
		];
	};


	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_rgr",nil,80],
			["B_TacticalPack_oli",nil,90],
			["B_Bergen_rgr",nil,100],
			["B_Carryall_oli",nil,150]
		];
	};
};
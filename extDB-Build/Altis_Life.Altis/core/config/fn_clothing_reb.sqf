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
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_O_CombatUniform_oucamo",nil,300],
			["U_O_SpecopsUniform_ocamo",nil,300],
			["U_O_SpecopsUniform_blk",nil,300],
			["U_O_OfficerUniform_ocamo",nil,300],
			["U_I_OfficerUniform",nil,400],
			["U_BG_Guerilla1_1",nil,400],
			["U_IG_leader","Guerilla Leader",900],
			["U_I_G_resistanceLeader_F",nil,900],
			["U_C_Scientist",nil,1200],
			["U_I_pilotCoveralls",nil,1200],
			["U_O_PilotCoveralls",nil,1200],
			["U_I_Wetsuit",nil,1500],
			["U_O_Wetsuit",nil,1500],
			["U_I_GhillieSuit",nil,1700],
			["U_O_FullGhillie_ard",nil,1700],
			["U_O_FullGhillie_lsh",nil,1700],
			["U_O_FullGhillie_sard",nil,1700]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo",nil,10],
			["H_Cap_brn_SPECOPS",nil,15],
			["H_Watchcap_blk",nil,20],
			["H_MilCap_oucamo",nil,30],
			["H_MilCap_rucamo",nil,30],
			["H_ShemagOpen_tan",nil,40],
			["H_Shemag_olive",nil,40],
			["H_ShemagOpen_khk",nil,40],
			["H_Shemag_olive_hs",nil,40],
			["H_HelmetCrew_I",nil,100],
			["H_HelmetCrew_O",nil,150],
			["H_HelmetO_ocamo",nil,200],
			["H_HelmetSpecO_ocamo",nil,250],
			["H_HelmetSpecO_blk",nil,250],
			["H_HelmetLeaderO_ocamo",nil,300],
			["H_CrewHelmetHeli_O",nil,400],
			["H_PilotHelmetHeli_O",nil,450],
			["H_HelmetB_camo",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,20],
			["G_Balaclava_lowprofile",nil,60],
			["G_Bandanna_aviator",nil,50],
			["G_Bandanna_shades",nil,50],
			["G_Lowprofile",nil,20],
			["G_Combat",nil,40]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_BandollierB_cbr",nil,200],
			["V_BandollierB_khk",nil,200],
			["V_BandollierB_blk",nil,200],
			["V_Chestrig_blk",nil,250],
			["V_Chestrig_rgr",nil,250],
			["V_Chestrig_khk",nil,250],
			["V_HarnessO_brn",nil,300],
			["V_HarnessO_gry",nil,300],
			["V_HarnessOGL_brn",nil,300],
			["V_HarnessOGL_gry",nil,300],
			["V_HarnessOSpec_brn",nil,300],
			["V_HarnessOSpec_gry",nil,300],
			["V_TacVest_khk",nil,350],
			["V_TacVest_brn",nil,350],
			["V_TacVest_camo",nil,350],
			["V_TacVestCamo_khk",nil,350],
			["V_PlateCarrier2_rgr",nil,1200],
			["V_RebreatherIR",nil,3000],
			["V_PlateCarrierSpec_mtp",nil,3000],
			["V_PlateCarrierGL_mtp",nil,3000],
			["V_PlateCarrierIAGL_oli",nil,3000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,80],
			["B_AssaultPack_khk",nil,80],
			["B_AssaultPack_dgtl",nil,80],
			["B_AssaultPack_dgtl",nil,80],
			["B_Kitbag_mcamo",nil,100],
			["B_Kitbag_sgg",nil,100],
			["B_Kitbag_cbr",nil,100],
			["B_FieldPack_ocamo",nil,150],
			["B_FieldPack_blk",nil,150],
			["B_FieldPack_oucamo",nil,150],
			["B_FieldPack_cbr",nil,150],
			["B_Bergen_sgg",nil,200],
			["B_Bergen_mcamo",nil,200],
			["B_Bergen_rgr",nil,200],
			["B_Bergen_blk",nil,200],
			["B_Carryall_oli",nil,250],
			["B_Carryall_ocamo",nil,250],
			["B_Carryall_oucamo",nil,250],
			["B_Carryall_cbr",nil,250],
			["B_Carryall_mcamo",nil,250],
			["B_Carryall_khk",nil,250]
		];
	};
};
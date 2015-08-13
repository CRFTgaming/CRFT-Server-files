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
			["TRYK_ZARATAKI","Zarataki",300],
			["TRYK_ZARATAKI2","Zarataki2",300],
			["TRYK_ZARATAKI3","Zarataki3",300],
			["TRYK_U_B_wood_CombatUniform","Woodland Camo",1000],
			["TRYK_U_B_Woodland_Tshirt","Woodland Camo2",1000],
			["TRYK_U_B_Wood_T","Woodland Camo T Shirt",1000],
			["TRYK_U_pad_hood_CSATBlk","SF Hoodie CSAT",1000],
			["TRYK_U_pad_hood_Blod","SF Hoodie OD",1000],
			["TRYK_U_B_ARO2_CombatUniform","BAF Combat Uniform",1000],
			["TRYK_C_AOR2_T","BAF Combat Uniform2",1000],
			["TRYK_U_B_AOR2_OD_CombatUniform","BAF Combat Uniform3",1000],
			["TRYK_U_B_AOR2_BLK_CombatUniform","BAF Combat Uniform4",1000],
			["U_O_CombatUniform_oucamo","Urban Fatigues",300],
			["U_O_SpecopsUniform_ocamo","Recon Fatigues",300],
			["U_O_SpecopsUniform_blk","Recon Fatigues BLK",300],
			["U_O_OfficerUniform_ocamo","Officer Fatigues",300],
			["U_I_GhillieSuit","Ghillie Suit",1000],
			["U_O_FullGhillie_ard","Ghillie Arid",1000],
			["U_O_FullGhillie_lsh","Ghillie Lush",1000],
			["U_O_FullGhillie_sard","Ghillie Semi Arid",1000],
			["U_I_HeliPilotCoveralls","Heli Pilot Coveralls AAF",1000],
			["U_O_PilotCoveralls","Pilot Coveralls CSAT",1000],
			["U_I_pilotCoveralls","Pilot Coveralls AAF",1000],
			["U_I_Wetsuit","Wetsuit AAF",1500],
			["U_O_Wetsuit","Wetsuit CSAT",1500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_pakol2","Pakol",10],
			["TRYK_H_pakol","Pakol HS",10],
			["H_Bandanna_camo","Camo Bandanna",10],
			["H_Cap_brn_SPECOPS",nil,15],
			["H_Watchcap_blk",nil,20],
			["H_MilCap_oucamo",nil,30],
			["H_MilCap_rucamo",nil,30],
			["H_ShemagOpen_tan",nil,40],
			["H_Shemag_olive","BAF Shemag",40],
			["H_ShemagOpen_khk",nil,40],
			["H_Shemag_olive_hs",nil,40],
			["TRYK_H_Booniehat_WOOD","Woodland BoonieHat",50],
			["TRYK_H_Booniehat_AOR2","BAF BoonieHat",50],
			["H_HelmetCrew_I",nil,100],
			["H_HelmetCrew_O",nil,150],
			["H_HelmetO_ocamo",nil,200],
			["TRYK_H_Helmet_WOOD","WOODLAND HELMET",200],
			["TRYK_H_AOR2","BAF Lite Helmet",200],
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
			["G_Lowprofile",nil,20],
			["G_Combat",nil,40]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_BandollierB_cbr","Bandollier CBR",200],
			["V_BandollierB_khk","Bandollier KHK",200],
			["V_BandollierB_blk","Bandollier BLK",200],
			["V_BandollierB_rgr","Bandollier RGR",200],
			["V_Chestrig_blk","Black Chest Rig",250],
			["V_Chestrig_rgr","Green Chest Rig",250],
			["V_Chestrig_khk","Khaki Chest Rig",250],
			["TRYK_V_ChestRig_L","Chest Rig",250],
			["TRYK_V_ChestRig","Chest Rig Lite",250],
			["V_TacVest_khk","Khaki Tac Vest",350],
			["V_TacVest_brn","Brown Tac Vest",350],
			["V_TacVest_camo","Camo Tac Vest",350],
			["TRYK_V_Sheriff_BA_T","Tac Vest OD",1000],
			["TRYK_V_Sheriff_BA_TB","Tac Vest BLK",1000],
			["TRYK_V_Sheriff_BA_T3","CQB Vest OD",1250],
			["TRYK_V_Sheriff_BA_TB3","CQB Vest BLK",1250],
			["TRYK_V_tacv1LC_OD","CQB Heavy OD",1250],
			["TRYK_V_PlateCarrier_wood_L","Woodland Heavy",1500],
			["TRYK_V_PlateCarrier_wood","Woodland Carrier",1500],
			["TRYK_V_ArmorVest_AOR2_2","BAF Vest",1500],
			["TRYK_V_ArmorVest_AOR2","BAF Vest2",1500],
			["TRYK_V_PlateCarrier_JSDF","BAF Vest Heavy",1650],
			["V_RebreatherIR","Rebreather",3000]
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
			["B_Carryall_khk",nil,250],
			["TRYK_B_Carryall_wood","Woodland Carry-all",250]
		];
	};
};
/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poor_1","Poor Folk Clothes",10],
			["U_C_Poloshirt_blue","Poloshirt Blue",100],
			["U_C_Poloshirt_burgundy","Poloshirt Burgundy",100],
			["U_C_Poloshirt_redwhite","Poloshirt Red/White",100],
			["U_C_Poloshirt_salmon","Poloshirt Salmon",100],
			["U_C_Poloshirt_stripped","Poloshirt stripped",100],
			["U_C_Poloshirt_tricolour","Poloshirt Tricolor",100],
			["TRYK_U_B_Denim_T_WH","White T-Shirt",100],
			["TRYK_U_B_Denim_T_BK","Black T-Shirt",100],
			["TRYK_U_B_Denim_T_BG_BK","Black T-Shirt W/Gloves",100],
			["TRYK_U_B_RED_T_BR","Red T-Shirt",100],
			["TRYK_shirts_DENIM_od","OD Shirt and Jeans",100],
			["TRYK_U_B_C02_Tsirt","T-Shirt & Blue Jeans",100],
			["TRYK_U_denim_jersey_blu","Blue Hoodie",100],
			["TRYK_U_denim_jersey_blk","Black Hoodie",100],
			["TRYK_shirts_DENIM_WHB_Sleeve","Long Sleeve T-Shirt",100],
			["TRYK_shirts_DENIM_BL_Sleeve","Long Sleeve T-Shirt 1",100],			
			["U_BG_Guerilla2_1","Clothes Plain",100],
			["U_IG_Guerilla2_2","Green stripped shirt & Pants",100],
			["U_BG_Guerilla2_3","Dark T Shirt",100],		
			["U_PMC_BluePlaidShirt_BeigeCords","Blue Plaid",100],
			["U_PMC_RedPlaidShirt_DenimCords","Red Plaid",100],		
			["U_IG_Guerilla3_1","Brown Jacket & Pants",300],
			["U_IG_Guerilla2_3","The Outback Rangler",400],
			["U_C_HunterBody_grn","The Hunters Look",400],
			["U_C_WorkerCoveralls","Mechanic Coveralls",500],		
			["TRYK_SUITS_BLK_F","Black Suit",500],
			["TRYK_SUITS_BR_F","Brown Suit",500],
			["U_Marshal","Dress Clothes",200],
			["U_NikosAgedBody","Dress Clothes 2",200]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",50],
			["H_Bandanna_surfer","Surfer Bandanna",50],
			["H_Bandanna_gry","Grey Bandanna",50],
			["H_Bandanna_cbr",nil,50],
			["H_Bandanna_surfer",nil,50],
			["H_Bandanna_khk","Khaki Bandanna",50],
			["H_Bandanna_sgg","Sage Bandanna",50],
			["H_StrawHat","Straw Fedora",60],
			["H_BandMask_blk","Hat & Bandanna",60],
			["H_Booniehat_tan",nil,70],
			["H_Hat_blue",nil,60],
			["H_Hat_brown",nil,60],
			["H_Hat_checker",nil,60],
			["H_Hat_grey",nil,60],
			["H_Hat_tan",nil,60],
			["H_Cap_blu",nil,60],
			["H_Cap_grn",nil,60],
			["H_Cap_grn_BI",nil,60],
			["H_Cap_oli",nil,60],
			["H_Cap_red",nil,60],
			["H_Cap_tan",nil,60]
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
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		 	["V_Press_F","Press Vest",100],
			["TRYK_V_Bulletproof_BL","BulletProof Vest",100],
			["TRYK_V_Bulletproof_BLK","BulletProof Vest2",100]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_OutdoorPack_blu",nil,50],
			["B_OutdoorPack_tan",nil,50],
			["B_OutdoorPack_blk",nil,50],
			["B_HuntingBackpack",nil,50],
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
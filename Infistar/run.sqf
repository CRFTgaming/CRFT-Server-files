/*
	File: run.sqf
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
	-
	Make sure to have proper settings!
*/
/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* **************infiSTAR Copyright®© 2011 - 2015 All rights reserved.************** */
/* *********************************www.infiSTAR.de********************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* **********************************READ PLEASE************************************ */
/* ********************************************************************************* */
/*
	Default settings are for Arma3 Epoch v0.2.5 with lower security.
	Vehicle check, Item Check, Ammo Check - should all be true if you ask me.
	But they are false by default, so change them to true if you think like me.
	
	Some checks are false even though they would work very well, if they were running (true).
	Simply because some people don't take the time to read the settings/look into this file
	and message me ten times with questions like "tanks explode when normal players join them".
	Yes. If the Vehicle Check "_UVC" is true it destroys vehicles that are used by "normal players",
	when they are in the "_ForbiddenVehicles" array (This array should be working fine for Epoch 0.2.5).
	
	So to get this running you need either some experience or a bit time to figure things out.
	Oh and don't forget to read the readme.txt
*/
/* ********************************************************************************* */
/* **********************************ADMIN CONFIG*********************************** */
/* ********************************************************************************* */


/* "_MOD": Can be 'Epoch', 'AltisLife', 'KOTH', 'Other'     */
_MOD = 'AltisLife';
/* "_OPEN_ADMIN_MENU_KEY": Key to open the menu (google DIK_KeyCodes (0x3B is F1))   */
_OPEN_ADMIN_MENU_KEY = 0x3B;
/* What ESCAPE Menu shows */
_ESCMNUTOP = 'CRFT Gamings Bornholm Life Server';
_ESCMNUBOT = 'Protected By InfiSTAR';
_BRIEFING_MSG = false;	/* use mission briefing message: if   "_BRIEFING_MSG = false;"   then the message will be replaced by infiSTAR */


/* shows RESTART IN X MINS */
_USE_RESTART_TIMER = false;	/* true or false */
_RESTART_TIME_IN_M =   240;	/* restart time in minutes */
_SHOW_TIMER_IN_MIN =	[1,2,3,5,10];	/* minutes before restart, when message is shown */



/*
	"_LogAdminActions": Sends actions done by each admin to the server to log it to the .txt file and .rpt file + sends it back to all other admins.
*/
_LogAdminActions = true;	/* true or false */

/*
	"_startAsNormal": if you add admin UIDs in here as well, they will start as almost "normal" player instead of with admin menu and such.
*/
_startAsNormal =
[
	'0','0','0'
];
/*
	if one of the admins with the UIDs in "_startAsNormal" uses the !admin command to login as admin, it will be announced to ANYONE on the server if "_announce_adminstate_changed" is true.
*/
_announce_adminstate_changed = false;	/* true or false */


/* "_passwordAdmin": Taken from the servers config.cfg, needed for servercommands     */
_passwordAdmin = 'EnterAdminPasswordFromYourConfigHere';
_adminLevel1_UIDs =
// Tundra, Casey, Rad, Talos, Doppler, Aceshadow, Only owners and devs have access to this. For Testing Envy & Woody
[
	'76561198105556705','76561198134898961','76561198032047520','76561198054879039','76561197966618733','76561198056017572','76561198033984650','76561198030376566'
];
_adminLevel1 =
[
	'Teleport','spectating','adminconsole','Delete Vehicle','FlyUp','TpDirection','EjectTarget','ToggleVehLock','ShowGear',
	'HealSelf','HealRepairNear','AddAmmoSelf','AdminStart','AdminLog',
	'==== Weapons ====','==== Magazines ====','==== Bags ====','==== Vehicles ====','==== Objects ====','==== Loadouts ====','==== AltisLife Money ====',
	'Teleport Target To Me','Teleport To','Copy Gear','Remove Gear','Revive','Heal','Repair','Move In My Vehicle','Move In Target Vehicle',
	'Spawn UAV','Spawn Epoch_Cloak_F','Spawn Sapper_F','Spawn GreatWhite_F','Eject','Eject Crew','Kill','Explode','Zeus','Force Disconnect',
	'Kick (Silent)','Kick (Announce)','Ban (Silent)','Ban (Announce)',
	'Box-ESP','Map-Icons','PlotPole Marker','Vehicle Marker','Construction Marker','LockBox Marker','DeadPlayer Marker',
	'God Mode','Vehicle God Mode','Lower Terrain','Vehboost','UnlimAmmo','noRecoil','FastFire','Stealth / Invisible',
	'Disable Announces','Show FPS','Give All Liscenses','Call EMP','Mass Message','DayTime','NightTime','change crypto',
	'Spawn Epoch-Box','Spawn Support-Box1','Spawn Support-Box2','Spawn Support-Box3',
	'Spawn Ammo','showinfo','Login as Arma Admin'
];
_adminLevel2_UIDs =
//
[
	'76561197973639637'
];
_adminLevel2 =
[
	'spectating','Delete Vehicle','ToggleVehLock','ShowGear','Teleport','Teleport Target To Me','Teleport To','ShowGear',
	'HealSelf','HealRepairNear','AdminLog','Move In My Vehicle','Move In Target Vehicle','EjectTarget','Eject Crew','God Mode',
	'Kick (Announce)','Ban (Announce)','Box-ESP','Map-Icons','Lower Terrain','Show FPS','Give All Liscenses','showinfo',
	'==== AltisLife Money ====','Stealth / Invisible','Remove Gear','Mass Message'
];
_adminLevel3_UIDs =
//
[
	'76561198115833202'
];
_adminLevel3 =
[
	'spectating','Delete Vehicle','Teleport','Teleport To',
	'HealSelf','HealRepairNear','AdminLog','God Mode',
	'Show FPS','Give All Liscenses','showinfo','==== AltisLife Money ===='
];
/* ********************************************************************************* */
/*            many checks should be set to true instead of false.                    */
/*       they are just false to make it more easy to run with AltisLife              */
/* ********************************************************************************* */
/*  Use Loaded Check(s)  */ _AHL = false;	/* true or false */	/* "AH NOT LOADED ON PLAYER" - Recommended strongly to use but might kick gameboy players. */
/*  _timedif for _AHL    */ _TDI =  65;	/*   45 - 300   */	/* only used if "_AHL = true;" -> takes longer to detect if the AH is loaded on a player or not. */

/*  Local Vehicle Check  */ _LVC = true;	/* true or false */	/* 10.03.2015 - changed the Local Vehicle Chech (has always been on true by default so far) */
/*  check Addons/Patches */ _CPC = false;	/* true or false */	/* gets all running addons from their config entries on the server and checks if each client has the same. CBA/Soundmods might need this disabled. */
/*  unitRecoil checks    */ _URC = true;	/* true or false */	/* checks unitRecoilCoefficient and resets default unitRecoilCoefficient */
/*  Use BadFile check    */ _UBF = true;	/* true or false */	/* Scriptscan pops up with message: "Scan completed, badcontent.sqf not found" */
/*  Use BadVar  check    */ _UBV = true;	/* true or false */
/*  Use Second Var check */ _UV2 = false;	/* true or false */	/* *experimental* - checks vars */
/*  _UV2 content scan    */ _V2C = false;	/* true or false */	/* *experimental* - checks the content of vars */
/*  Use Controls Check   */ _CC2 = false;	/* true or false */	/* *experimental* - checks controls */
/*  Use CheatEngine check*/ _UCE = true;	/* true or false */
/*  Use on(Un)Load check */ _UOL = true;	/* true or false */
/*  Use Memoryhack check */ _UMH = true;	/* true or false */
/*  Notification check   */ _UNC = false;	/* true or false */	/* _UNC = false; on AltisLife! */
/*  Use MPInterrupt check*/ _UMP = false;	/* true or false */
/*  Check GearMenu CTRLs */ _GCC = false;	/* true or false */	/* Will announce BadControls count on D602 - if the gear menu has an increased or lower control count (Epoch = 87, AltisLife = 82) */
/*  Check CTRLs on D00   */ _C00 = false;	/* true or false */	/* *experimental* - will announce BadControls count on IDD 0 or BadControl and a number */
/*  Check CTRLs on D12   */ _C12 = false;	/* true or false */	/* *experimental* - will announce BadControls count on IDD 12 or BadControl and a number */
/*  Check CTRLs on D18   */ _C18 = false;	/* true or false */	/* *experimental* - will announce BadControls count on IDD 18 or BadControl and a number */
/*  Check CTRLs on D24   */ _C24 = false;	/* true or false */	/* *experimental* - will announce BadControls count on IDD 24 or BadControl and a number */
/*  Check CTRLs on D46   */ _C46 = false;	/* true or false */	/* *experimental* - will announce BadControls count on IDD 46 or BadControl and a number */
/*  Check CTRLs on D70   */ _C70 = false;	/* true or false */	/* *experimental* - will announce BadControls count on IDD 70 or BadControl and a number */
/*  HandleDamage check   */ _HDC = false;	/* true or false */	/* *experimental + Epoch only* - probably publicVariableServer spam but no more godmode hackers. */
/*  Change MpFramework   */ _MPF = true;	/* true or false */	/* Esepcially important to protect AltisLife */
/*  Use EH_Fired check   */ _EHF = false;	/* true or false */	/* Epoch only (doesn't load with other mods) */
/*  Revert HandleDamage  */ _RHD = false;	/* true or false */	/* Needs to be  false  for Paintball script */
/*  Remove Hit Handler   */ _REH = false;	/* true or false */	/* Needs to be  false  for Paintball script */
/*  Revert InventoryOpen */ _RIO = false;	/* true or false */	/* Sets the custom InventoryOpened Handler for AltisLife only - don't mind this option if you are on a different mod. */
/*  "" Respawn Handler   */ _RRH = false;	/* true or false */	/* Needs to be  false  for some custom loadout scripts */
/*  Check Actions Plr    */ _CAP = false;	/* true or false */	/* *experimental* - only logs to Surveillancelog so far */
/*  Remove Actions Plr   */ _OAP = false;	/* true or false */	/* Remove ALL Actions on Player Object: (mousewheel actions) needs to be  false  for AltisLife for e.g. gathering */
/*  Remove Actions Objs  */ _OAO = false;	/* true or false */	/* Remove ALL Actions on Objects near Player: (mousewheel actions) needs to be  false  when using e.g. IgiLoad */
/*  Check Attached Objs  */ _CAO = false;	/* true or false */	/* needs to be  false  when using e.g. IgiLoad */
/*  Forbid VON Sidechat  */ _VON = true;	/* true or false */	/* talking on sidechat will put out a warning and punish the player */
/*  Use Anti Teleport    */ _UAT = false;	/* true or false */	/* _UAT = false; on AltisLife! */
/*  Chat-Vote Day/Night  */ _VDN = false;	/* true or false */
/*  Check Vision Mode    */ _CVM = true;	/* true or false */
/*  Force Terrain Grid ? */ _FTG = 45;		/* 50, 25, 12.5  */	/* if set to 50 grass will be very low for better client FPS.. default is 25 ~45 is good performance and grass :) */
/*  revert allowDamage   */ _RAD = false;	/* true or false */	/* if you have safezones using "player allowDamage false;" or similar.. set _RAD = false; */
/*  check view distance  */ _CVD = true;	/* true or false */	/* if the viedistance is not 1600 - ban. */
/*  check cameraOn       */ _CCO = false;	/* true or false */	/* Needs to be  false  so cops on AltisLife can use UAV/drones */
/*  mod PlayerDisconnect */ _OPD = true;	/* true or false */
/*  mod PlayerConnect    */ _OPC = true;	/* true or false */
/*  Use check_player.dll */ _KKC = false;	/* true or false */	/* VAC BAN CHECK: get the dll here www.killzonekid.com/arma-scripting-tutorials-get_friends-check_player-logic/  and put it into the arma3 folder on the server (probably the root). implemented it cause several people asked me to.. credits to kkid! */
/*  Use Anti Glitch      */ _UAG = false;	/* true or false */	/* a try to stop glitching through walls on Epoch */
/*  Remove MapClick      */ _OMC = false;	/* true or false */	/* recommended:  true  Removes custom MapClick -> "onMapSingleClick '';" */
/*  Revert Keybinds      */ _RCK = false;	/* true or false */	/* recommended:  true  Removes custom Keybinds and sets back the default ones */
/*  Revert MouseWheel    */ _RMW = false;	/* true or false */	/* recommended:  true  Removes custom MouseWheelbins and sets back the default ones */
/*  revert onEachFrame   */ _REF = false;	/* true or false */	/* AltisLife uses this for PlayerTags - so it should be   _REF = false;   on AltisLife */
/*  Map Icon Check       */ _MIC = false;	/* true or false */	/* Needs to be  false  on some WasteLand versions */
/*  Remove All Mines     */ _RAM = true;	/* true or false */
/*  Remove All UAVs      */ _RUS = false;	/* true or false */
/*  onEachFrame function */ _rOEF = {};	/* this needs to be CODE */


/* *** ROPING OPTIONS *** */
/*
	"_KFR" and "_RVR" can run together (both be true) but it is recommended to have both options to false and use "_RPR" with "true" state.
	That will allow players to Lift but they won't be able to drop cars full of people anywhere
*/
/* "_KFR": Will not allow any Rope attached to Vehicle Player - Needs to be  false  for some "towing" scripts.. */
_KFR = false;	/* true or false */

/* "_RVR": Will delete any Rope attached to Vehicle Player and close ones - Needs to be  false  for some "towing" scripts.. */
_RVR = false;	/* true or false */

/* "_RPR": Will only delete Ropes if the roped object has a crew! */
_RPR = false;	/* true or false */



/* "_EpochIndestructible": Make Epoch Buildings indestructible on ServerStart! */
_EpochIndestructible = true;


/*  CommandingMenu Check */ _CMC = true;	/* true or false */
/* _cMenu: if '_CMC = true;' then this array holds the ALLOWED Commanding Menus */
_cMenu =
[
	'',
	'RscMainMenu','RscMoveHigh','#WATCH','#WATCH0','RscWatchDir','RscWatchMoveDir','#GETIN','#RscStatus','RscCallSupport','#ACTION',
	'RscCombatMode','RscFormations','RscTeam','RscSelectTeam','RscReply','#User:BIS_Menu_GroupCommunication','#CUSTOM_RADIO',
	'RscRadio','RscGroupRootMenu','RscMenuReply','RscMenuStatus','#User:BIS_fnc_addCommMenuItem_menu','RscMenuMove','RscMenuFormations'
];


/*  Check Global Markers */ _CGM = false;	/* true or false */	/* you may need to disable this check for A.I. Missions - or whitelist the used Markers in the _aLocalM Array beneath */
/*  Check Local Markers  */ _CLM = false;	/* true or false */
/*  Use _aLocalM array   */ _UMW = false;	/* true or false */	/* use allowed marker array from below (for example AltisLife uses house_ and others in there) or A.I. Missions */
/* _aLocalM: if '_CLM' && _UMW - this array of names will be allowed */
_aLocalM =
[
	'sek_','_marker','marker_','house_','_dead_marker','_gpstracker','cop','Marker200'
];



/* Use allowed Dialogs ? */ _UDW = true;	/* true or false */
/* _allowedDialogs: Insert IDDs here to prevent them from being closed! Default ArmA3 and Altis-Life idds should be in already. */
_allowedDialogs = [-1,602];
/*	5001, -3: Zupas New Hud (Hud-Builder) - https://github.com/DevZupa/ZHB-A3 */
_allowedDialogs pushBack 5001;
_allowedDialogs pushBack -3;
/*	37400: Custom Menu from AltisLife used on some Epoch Servers */
_allowedDialogs pushBack 37400;


/* _badDialogsKICK: Forbidden Dialog Idds that will get you Kicked by the AH */
_badDialogsKICK = [-1337];


/* _badDialogsClose: Forbidden Dialog Idds that will get closed by the AH */
/*
	131 Change Keybinds
	148 Controller Menu
*/
_badDialogsClose =
[
	2,3,7,17,19,25,26,27,28,29,30,31,32,37,40,41,43,44,45,51,52,53,74,85,
	106,126,127,129,132,146,147,150,151,152,153,154,159,164,262,
	314,632,1320,2121
];



_UVC = false;	/* Use Vehicle Check(s) */
_UVW = false;	/* if "_UVW = true;" then it checks all vehicles on the map. If their type is not in "_VehicleWhiteList", they are flagged as hacked in and destroyed. */
_VehicleWhiteList =
[
	'AllowThisVehicle1','AllowThisVehicle2'
];
_ForbiddenVehicles =
[
	'B_Heli_Light_01_armed_F','B_Heli_Attack_01_F','B_Plane_CAS_01_F','B_APC_Tracked_01_rcws_F','B_APC_Tracked_01_CRV_F','B_APC_Tracked_01_AA_F','B_MBT_01_cannon_F',
	'B_MBT_01_arty_F','B_MBT_01_mlrs_F','B_Boat_Armed_01_minigun_F','B_UAV_02_F','B_UAV_02_CAS_F','B_MRAP_01_gmg_F','B_MRAP_01_hmg_F','B_G_Offroad_01_armed_F',
	'B_APC_Wheeled_01_cannon_F','B_MBT_01_TUSK_F','O_Heli_Light_02_F','O_Heli_Attack_02_F','O_Heli_Attack_02_black_F','O_Plane_CAS_02_F','O_APC_Tracked_02_cannon_F',
	'O_APC_Tracked_02_AA_F','O_MBT_02_cannon_F','O_MBT_02_arty_F','O_Boat_Armed_01_hmg_F','O_UAV_02_CAS_F','O_UAV_02_F','O_MRAP_02_hmg_F','O_MRAP_02_gmg_F','O_G_Offroad_01_armed_F',
	'O_APC_Wheeled_02_rcws_F','O_UGV_01_rcws_F','B_UGV_01_rcws_F','I_UGV_01_rcws_F','I_APC_Wheeled_03_cannon_F','I_MRAP_03_gmg_F','I_MRAP_03_hmg_F','I_G_Offroad_01_armed_F',
	'I_UAV_02_CAS_F','I_UAV_02_F','I_Boat_Armed_01_minigun_F','I_MBT_03_cannon_F','I_APC_tracked_03_cannon_F','I_Plane_Fighter_03_AA_F','I_Plane_Fighter_03_CAS_F','I_Heli_light_03_F',
	'B_HMG_01_F','O_HMG_01_F','I_HMG_01_F','B_HMG_01_high_F','O_HMG_01_high_F','I_HMG_01_high_F','B_HMG_01_A_F','O_HMG_01_A_F','I_HMG_01_A_F','B_Mortar_01_F','O_Mortar_01_F',
	'I_Mortar_01_F','I_G_Mortar_01_F','B_G_Mortar_01_F','O_G_Mortar_01_F','B_GMG_01_F','O_GMG_01_F','I_GMG_01_F','B_GMG_01_high_F','O_GMG_01_high_F','I_GMG_01_high_F','B_GMG_01_A_F',
	'O_GMG_01_A_F','I_GMG_01_A_F','B_static_AA_F','O_static_AA_F','I_static_AA_F','B_static_AT_F','O_static_AT_F','I_static_AT_F'
];


_UFI = false;	/* Use "_ForbiddenItems"/Item Check(s) */
_UIW = false;	/* if "_UIW = true;" then it checks if the items the individual player has are in "_ItemWhiteList" */
_ItemWhiteList =
[
	'AllowThisItem1','AllowThisItem2'
];
_ForbiddenItems =
[
	'autocannon_Base_F','autocannon_30mm','autocannon_35mm','autocannon_40mm_CTWS','autocannon_30mm_CTWS','Bomb_04_Plane_CAS_01_F',
	'Bomb_03_Plane_CAS_02_F','cannon_105mm','cannon_120mm','cannon_120mm_long','cannon_125mm','Cannon_30mm_Plane_CAS_02_F','gatling_20mm',
	'gatling_25mm','gatling_30mm','Gatling_30mm_Plane_CAS_01_F','GBU12BombLauncher','GMG_20mm','GMG_40mm','GMG_UGV_40mm','HMG_127_MBT',
	'HMG_127','HMG_127_APC','HMG_01','HMG_M2','HMG_NSVT','LMG_Minigun2','LMG_RCWS','LMG_M200','LMG_Minigun','LMG_Minigun_heli','LMG_coax',
	'Missile_AGM_02_Plane_CAS_01_F','Missile_AA_04_Plane_CAS_01_F','Missile_AA_03_Plane_CAS_02_F','Missile_AGM_01_Plane_CAS_02_F','missiles_DAGR',
	'missiles_DAR','missiles_ASRAAM','missiles_SCALPEL','missiles_titan','missiles_titan_static','missiles_Zephyr','Mk82BombLauncher','mortar_82mm',
	'mortar_155mm_AMOS','rockets_Skyfire','rockets_230mm_GAT','Rocket_04_HE_Plane_CAS_01_F','Rocket_04_AP_Plane_CAS_01_F','Rocket_03_HE_Plane_CAS_02_F',
	'Rocket_03_AP_Plane_CAS_02_F','Twin_Cannon_20mm'
];
/*
	"_ForbiddenOnEpochOnly" Array has some items that Epoch devs removed and/or replaced with their own items.
	Hackers still have them in their loadouts. Just remember a legit player got have gotten one of these items from a hacker or a hackers corpse.
	So you might want to leave this empty.
*/
_ForbiddenOnEpochOnly =
[
	'NVGoggles','optic_Nightstalker'
];


_UFA = false;	/* Use Ammo Check(s) */
_UAW = false;	/* if "_UAW = true;" then it checks if the ammo used by the individual player is in "_AmmoWhiteList" */
_AmmoWhiteList =
[
	'AllowThisAmmo1','AllowThisAmmo2'
];
_ForbiddenAmmo =
[
	'200Rnd_65x39_Belt','200Rnd_65x39_Belt_Tracer_Red','200Rnd_65x39_Belt_Tracer_Green','200Rnd_65x39_Belt_Tracer_Yellow','2000Rnd_65x39_Belt','2000Rnd_65x39_Belt_Green',
	'2000Rnd_65x39_Belt_Yellow','1000Rnd_65x39_Belt','1000Rnd_65x39_Belt_Green','1000Rnd_65x39_Belt_Yellow','2000Rnd_65x39_Belt_Tracer_Red','2000Rnd_65x39_Belt_Tracer_Green',
	'2000Rnd_65x39_Belt_Tracer_Yellow','1000Rnd_65x39_Belt_Tracer_Red','1000Rnd_65x39_Belt_Tracer_Green','1000Rnd_65x39_Belt_Tracer_Yellow','500Rnd_127x99_mag','500Rnd_127x99_mag_Tracer_Red',
	'500Rnd_127x99_mag_Tracer_Green','500Rnd_127x99_mag_Tracer_Yellow','200Rnd_127x99_mag','200Rnd_127x99_mag_Tracer_Green','200Rnd_127x99_mag_Tracer_Yellow',
	'450Rnd_127x108_Ball','150Rnd_127x108_Ball','50Rnd_127x108_Ball','8Rnd_82mm_Mo_shells','8Rnd_82mm_Mo_guided','8Rnd_82mm_Mo_LG','24Rnd_PG_missiles','12Rnd_PG_missiles','200Rnd_20mm_G_belt',
	'40Rnd_20mm_g_belt','96Rnd_40mm_G_belt','64Rnd_40mm_G_belt','32Rnd_40mm_G_belt','60Rnd_40mm_GPR_shells','60Rnd_40mm_GPR_Tracer_Red_shells','60Rnd_40mm_GPR_Tracer_Green_shells',
	'60Rnd_40mm_GPR_Tracer_Yellow_shells','40Rnd_40mm_APFSDS_shells','40Rnd_40mm_APFSDS_Tracer_Red_shells','40Rnd_40mm_APFSDS_Tracer_Green_shells','40Rnd_40mm_APFSDS_Tracer_Yellow_shells',
	'140Rnd_30mm_MP_shells','140Rnd_30mm_MP_shells_Tracer_Red','140Rnd_30mm_MP_shells_Tracer_Green','140Rnd_30mm_MP_shells_Tracer_Yellow','60Rnd_30mm_APFSDS_shells',
	'60Rnd_30mm_APFSDS_shells_Tracer_Red','60Rnd_30mm_APFSDS_shells_Tracer_Green','60Rnd_30mm_APFSDS_shells_Tracer_Yellow','2000Rnd_20mm_shells','1000Rnd_20mm_shells','300Rnd_20mm_shells',
	'250Rnd_30mm_HE_shells','250Rnd_30mm_APDS_shells','2Rnd_AAA_missiles','2Rnd_AAA_missiles_MI02','4Rnd_AAA_missiles','4Rnd_AAA_missiles_MI02','2Rnd_LG_scalpel','8Rnd_LG_scalpel',
	'6Rnd_LG_scalpel','2Rnd_GAT_missiles','5Rnd_GAT_missiles','4Rnd_GAA_missiles','4Rnd_Titan_long_missiles','14Rnd_80mm_rockets','38Rnd_80mm_rockets','32Rnd_120mm_APFSDS_shells',
	'32Rnd_120mm_APFSDS_shells_Tracer_Red','32Rnd_120mm_APFSDS_shells_Tracer_Green','32Rnd_120mm_APFSDS_shells_Tracer_Yellow','30Rnd_120mm_APFSDS_shells','30Rnd_120mm_APFSDS_shells_Tracer_Red',
	'30Rnd_120mm_APFSDS_shells_Tracer_Green','30Rnd_120mm_APFSDS_shells_Tracer_Yellow','30Rnd_120mm_HE_shells','30Rnd_120mm_HE_shells_Tracer_Red','30Rnd_120mm_HE_shells_Tracer_Green',
	'30Rnd_120mm_HE_shells_Tracer_Yellow','16Rnd_120mm_HE_shells','16Rnd_120mm_HE_shells_Tracer_Red','16Rnd_120mm_HE_shells_Tracer_Green','16Rnd_120mm_HE_shells_Tracer_Yellow',
	'1000Rnd_25mm_shells','300Rnd_25mm_shells','680Rnd_35mm_AA_shells','680Rnd_35mm_AA_shells_Tracer_Red','680Rnd_35mm_AA_shells_Tracer_Green','680Rnd_35mm_AA_shells_Tracer_Yellow',
	'32Rnd_155mm_Mo_shells','2Rnd_155mm_Mo_guided','2Rnd_155mm_Mo_LG','6Rnd_155mm_Mo_mine','2Rnd_155mm_Mo_Cluster','6Rnd_155mm_Mo_AT_mine','1Rnd_GAT_missiles','1Rnd_GAA_missiles',
	'2Rnd_GBU12_LGB','2Rnd_GBU12_LGB_MI10','2Rnd_Mk82','2Rnd_Mk82_MI08','12Rnd_230mm_rockets','140Rnd_30mm_MP_shells','140Rnd_30mm_MP_shells_Tracer_Red','140Rnd_30mm_MP_shells_Tracer_Green',
	'140Rnd_30mm_MP_shells_Tracer_Yellow','60Rnd_30mm_APFSDS_shells','60Rnd_30mm_APFSDS_shells_Tracer_Red','60Rnd_30mm_APFSDS_shells_Tracer_Green','60Rnd_30mm_APFSDS_shells_Tracer_Yellow',
	'28Rnd_120mm_APFSDS_shells','28Rnd_120mm_APFSDS_shells_Tracer_Red','28Rnd_120mm_APFSDS_shells_Tracer_Green','28Rnd_120mm_APFSDS_shells_Tracer_Yellow','14Rnd_120mm_HE_shells',
	'14Rnd_120mm_HE_shells_Tracer_Red','14Rnd_120mm_HE_shells_Tracer_Green','14Rnd_120mm_HE_shells_Tracer_Yellow','24Rnd_125mm_APFSDS','24Rnd_125mm_APFSDS_T_Red','24Rnd_125mm_APFSDS_T_Green',
	'24Rnd_125mm_APFSDS_T_Yellow','12Rnd_125mm_HE','12Rnd_125mm_HE_T_Red','12Rnd_125mm_HE_T_Green','12Rnd_125mm_HE_T_Yellow','12Rnd_125mm_HEAT','12Rnd_125mm_HEAT_T_Red','12Rnd_125mm_HEAT_T_Green',
	'12Rnd_125mm_HEAT_T_Yellow','2000Rnd_20mm_shells','1000Rnd_20mm_shells','300Rnd_20mm_shells','1000Rnd_Gatling_30mm_Plane_CAS_01_F','2Rnd_Missile_AA_04_F','6Rnd_Missile_AGM_02_F',
	'7Rnd_Rocket_04_HE_F','7Rnd_Rocket_04_AP_F','2Rnd_Bomb_03_F','4Rnd_Bomb_04_F','4Rnd_Missile_AGM_01_F','20Rnd_Rocket_03_HE_F','500Rnd_Cannon_30mm_Plane_CAS_02_F','20Rnd_Rocket_03_AP_F',
	'2Rnd_Missile_AA_03_F','500Rnd_127x99_mag','500Rnd_127x99_mag_Tracer_Red','500Rnd_127x99_mag_Tracer_Green','500Rnd_127x99_mag_Tracer_Yellow','200Rnd_127x99_mag',
	'200Rnd_127x99_mag_Tracer_Red','200Rnd_127x99_mag_Tracer_Green','200Rnd_127x99_mag_Tracer_Yellow','40Rnd_105mm_APFSDS','40Rnd_105mm_APFSDS_T_Red','40Rnd_105mm_APFSDS_T_Green',
	'40Rnd_105mm_APFSDS_T_Yellow','20Rnd_105mm_HEAT_MP','20Rnd_105mm_HEAT_MP_T_Red','20Rnd_105mm_HEAT_MP_T_Green','20Rnd_105mm_HEAT_MP_T_Yellow'
];


/*
	custom Box content:
	just an item like it is in the example with   'ItemMap'   will put the item once in the box.
	if an array is used like the   ['ItemGPS',5]   example, well I assume you could guess what it will do.
*/
_SupportBox1Content =
[
	'ItemMap',['ItemGPS',5],'ItemWatch'
];

_SupportBox2Content =
[
	'ItemMap',['ItemGPS',5],'ItemWatch'
];

_SupportBox3Content =
[
	'ItemMap',['ItemGPS',5],'ItemWatch'
];



/*
	"_badpeople": Most of these IDs belong to known hackers or those that have been caught and reported to me.
	This is not some kind of personal blacklist of myself (some people asked about that).
	The 4 Epoch Ids there should be deleted if you are "official host" or they will be upset about not being able
	to connect to your server. They are in there because of this vote: www.strawpoll.me/3138630/r
*/
_badpeople =
[
	'0',
	'76561197993400942',	/*	Epoch Sequisha */
	'76561198052912993',	/*	Epoch Axle */
	'76561198042281363',	/* Epoch Mr. CopyPaste aka Skarokid */
	'76561197960406763',	/*	Epoch [VB]AWOL */
	'76561198059930120','76561198134916119','76561198130615382','76561198000135158',
	'76561198098132364','76561198127436055','76561198120497784','76561198151285096',
	'76561198037143375','76561198053362106','76561197960693668','76561198029212490',
	'76561198118994984','76561198150211409','76561198118066332','76561198148495214',
	'76561198124727926','76561198087505309','76561198106834234','76561198056113988',
	'76561198153161518','76561198077972256','76561198144416171','76561198151661947',
	'76561198075411542','76561198106140797','76561198118378695','76561198062509950',
	'76561198080657666','76561198156021205','76561198126816660','76561197979392398',
	'76561197969005505','76561197978751247','76561197971107759','76561197967087500',
	'76561197995117205','76561197964338716','76561198128229370','76561198141766032',
	'76561198131838128','76561198137119508','76561198077957452','76561198067414796',
	'76561198055161991','76561198089299178','76561198129631838','76561198119258603',
	'76561198002094787','76561198148907901','76561197978913290','76561197984690630',
	'76561198025777475','76561197961122016','76561198160514374','76561198165856213',
	'76561198094783145','76561198085523173','76561197984998237','76561198013819290',
	'76561197982406660','76561197972252136','76561198009791150','76561198154257484',
	'76561197960292002','76561198044218532','76561198035170425','76561198141958508',
	'76561198152649864','76561198127341284','76561198166513783','76561198032309705',
	'76561198137073763','76561198085897950','76561198145115648','76561198080244706',
	'76561197994045926','76561198124128052','76561198119472477','76561198049992289',
	'76561198111864019','76561197997686263','76561198161483683','76561198124849894',
	'76561198164196577','76561198133066692','76561198163057499','76561198058635527',
	'76561198062276128','76561198157673117','76561198131170408','76561198128889826',
	'76561198128939134','76561198065607803','76561198121247387','76561198076232303',
	'76561198144358523','76561198032349954','76561198028313707','76561198148216075',
	'76561198165881759','76561198165211039','76561198074110583','76561198098254345',
	'76561198054619746','76561198061552644','76561198068243806','76561198164444108',
	'76561198165496777','76561198160602020','76561198018065224','76561198202739900',
	'76561198047883815','76561198069085023','76561198059688627','76561198122259220',
	'76561198164784675','76561198162451605','76561198151137695','76561198203651168',
	'76561198149065671','76561198175611354','76561198157469769','76561198019017645',
	'76561197963041299','76561198159780832','76561198014790670','76561198142729104',
	'76561198095569574','76561198016803159','76561198161648337','76561198134613431',
	'76561198166419716','76561198175853759','76561198123807524','76561198167827911',
	'76561198167152679','76561197980206587','76561197963458654','76561197967605970',
	'76561198033680504','76561198180913597','76561198123886811','76561197985584715',
	'76561197999691527','76561198105419039','76561198005271335','76561198053629469',
	'76561198026212101','76561198103738030','76561198035798322','76561198046700395',
	'76561198043439272','76561197970859383','76561198038412105','76561197987629806'
];
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ******************************DO NOT TOUCH BELOW********************************* */
if(!isNil 'infiSTAR_IS_RUN_ON_THIS_SERVER') exitWith {
	diag_log format['infiSTAR.de %1 - is already started %1 seconds ago..',time - infiSTAR_IS_RUN_ON_THIS_SERVER];
};
infiSTAR_IS_RUN_ON_THIS_SERVER = time;
if(_MOD != 'Epoch') then
{
	_CVD = false;
	_EHF = false;
	_HDC = false;
};
if(_MOD == 'AltisLife') then
{
	_UMW = true;
	_UNC = false;
	_CAO = false;
	_CAP = false;
	_OAP = false;
	_OAO = false;
	_UAT = false;
};
EPOCH_server_isPAdmin=compileFinal 'true';
diag_log format['infiSTAR.de %1 - run.sqf - finaled EPOCH_server_isPAdmin: %2',time,EPOCH_server_isPAdmin];
_admins = _adminLevel1_UIDs + _adminLevel2_UIDs + _adminLevel3_UIDs;
/* ********************************************************************************* */
/* #653 */
/* ********************************************************************************* */
comment 'Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de - License: (CC)';
diag_log format['infiSTAR.de %1 - run.sqf - including AntiHack',time];
#include "A3AH.sqf"
diag_log format['infiSTAR.de %1 - run.sqf - AntiHack included!',time];

diag_log format['infiSTAR.de %1 - run.sqf - including AdminTools',time];
#include "A3AT.sqf"
diag_log format['infiSTAR.de %1 - run.sqf - AdminTools included!',time];
/* ********************************************************************************* */
/* *********************************www.infiSTAR.de********************************* */
/* *******************Developed by infiSTAR (infiSTAR23@gmail.com)****************** */
/* **************infiSTAR Copyright®© 2011 - 2015 All rights reserved.************** */
/* ****DayZAntiHack.com***DayZAntiHack.de***ArmaAntiHack.com***Arma3AntiHack.com**** */
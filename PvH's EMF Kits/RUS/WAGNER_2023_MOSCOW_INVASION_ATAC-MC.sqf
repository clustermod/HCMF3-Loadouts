/*
 * Made for Arma 3 Virtual MILSIM
 *
 * THIS DOES IN NO WAY OR FORM SUPPORT WAGNER PMC, RUSSIA OR ANY OTHER GROUPS AFFILIATED WITH THEM.
 * THIS DOES NOT SUPPORT IN ANY WAY OR FORM THE ILLEGAL WAR OF AGGRESSION BY RUSSIA AGAINST UKRAINE.  
 *
 * Author: Hark
 * CC Modpack Version: V4
 * [Loadout insprired by the equipment visible during the coup of Wagner in 2023]
 * Roles: RFL, TL, PL, MED, MMG, GRD, MAT, ENG
 */

/* Get the unit's role */
private _condition = player getVariable ["cmf_common_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACRE_BF888S", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhs_weap_rpg18", "rhs_weap_rpg26", "rhs_weap_rshg2"];
private _defAttachments = [];
private _defMagazines = ["150Rnd_762x54_Box", "rhs_100Rnd_762x54mmR", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_camo_M", "CUP_30Rnd_762x39_AK47_bakelite_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_GRD40_White", "rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_green", "rhs_VG40OP_red", "rhs_VG40OP_white"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = ["CUP_U_CRYE_G3C_ATACSFG", "CUP_U_CRYE_G3C_ATACSAU", "CUP_U_CRYE_G3C_MC_V2", "CUP_I_B_PARA_Unit_1"];
private _defVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_weaponsbelt_rngr", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_medicalbelt_mc"];
private _defBackpacks = ["B_AssaultPack_khk", "B_AssaultPack_mcamo", "B_AssaultPack_rgr", "B_Kitbag_rgr", "B_Kitbag_sgg", "UK3CB_ION_B_B_LegStrapBag_win", "CUP_B_US_Assault_OCP", "CUP_B_Kombat_Olive", "CUP_B_RUS_Backpack"];
private _defHeadgear = ["rhsusf_opscore_rg_cover_pelt", "rhsusf_opscore_ut_pelt", "rhsusf_opscore_fg_pelt", "rhs_Booniehat_ocp", "rhs_altyn_novisor", "rhs_6m2_1", "rhs_6b7_1m_bala2", "rhs_6b7_1m"];
private _defFacewear = ["G_Bandanna_oli", "G_Bandanna_blk", "G_Shades_Black", "CUP_G_RUS_Balaclava_Ratnik", "CUP_G_RUS_Balaclava_Ratnik_v2", "CUP_Beard_Black", "CUP_Beard_Blonde", "CUP_Beard_Brown", "CUP_G_ESS_BLK_Facewrap_Black"];

/* Rifleman */
if (_condition in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail_camo", "CUP_arifle_AK74M_railed", "CUP_arifle_AK74M_railed_afg", "CUP_arifle_AK74M_railed_afg_camo", "CUP_arifle_AK74M_railed_camo", "CUP_arifle_AKMN_railed", "CUP_arifle_AKMN_railed_afg"];
	_availableAttachments = ["rhsusf_acc_t1_low", "tier1_exps3_0_black", "tier1_romeo4t_bcq_low_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "rhs_acc_2dpzenit_ris"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Team leader */
if (_condition in ["SL", "FTL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_GL_top_rail_camo", "CUP_arifle_AK74M_GL_top_rail", "CUP_arifle_AK74M_GL_railed", "CUP_arifle_AK74M_GL_camo"];
	_availableAttachments = ["rhsusf_acc_t1_low", "tier1_exps3_0_black", "tier1_romeo4t_bcq_low_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "rhs_acc_2dpzenit_ris"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_condition in ["MED"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail_camo", "CUP_arifle_AK74M_railed", "CUP_arifle_AK74M_railed_afg", "CUP_arifle_AK74M_railed_afg_camo", "CUP_arifle_AK74M_railed_camo", "CUP_arifle_AKMN_railed", "CUP_arifle_AKMN_railed_afg"];
	_availableAttachments = ["rhsusf_acc_t1_low", "tier1_exps3_0_black", "tier1_romeo4t_bcq_low_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "rhs_acc_2dpzenit_ris"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* MMG */
if (_condition in ["MMG"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_PKM_top_rail_B50_vfg", "CUP_lmg_Pecheneg_woodland", "CUP_lmg_Pecheneg_top_rail_B50_vfg"];
	_availableAttachments = ["tier1_exps3_0_black", "cup_optic_1p63"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Grenadier */
if (_condition in ["GRD"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_GL_top_rail_camo", "CUP_arifle_AK74M_GL_top_rail", "CUP_arifle_AK74M_GL_railed", "CUP_arifle_AK74M_GL_camo"];
	_availableAttachments = ["rhsusf_acc_t1_low", "tier1_exps3_0_black", "tier1_romeo4t_bcq_low_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "rhs_acc_2dpzenit_ris"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* MAT */
if (_condition in ["MAT"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_igla", "rhs_weap_rpg7", "CUP_arifle_AK74M_top_rail_camo", "CUP_arifle_AK74M_railed", "CUP_arifle_AK74M_railed_afg", "CUP_arifle_AK74M_railed_afg_camo", "CUP_arifle_AK74M_railed_camo", "CUP_arifle_AKMN_railed", "CUP_arifle_AKMN_railed_afg"];
	_availableAttachments = ["rhs_acc_pgo7v", "rhsusf_acc_t1_low", "tier1_exps3_0_black", "tier1_romeo4t_bcq_low_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "rhs_acc_2dpzenit_ris"];
	_availableMagazines = ["rhs_rpg7_PG7VR_mag", "rhs_rpg7_TBG7V_mag", "rhs_rpg7_type69_airburst_mag", "rhs_rpg7_OG7V_mag"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Engineer */
if (_condition in ["ENG"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail_camo", "CUP_arifle_AK74M_railed", "CUP_arifle_AK74M_railed_afg", "CUP_arifle_AK74M_railed_afg_camo", "CUP_arifle_AK74M_railed_camo", "CUP_arifle_AKMN_railed", "CUP_arifle_AKMN_railed_afg"];
	_availableAttachments = ["rhsusf_acc_t1_low", "tier1_exps3_0_black", "tier1_romeo4t_bcq_low_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "rhs_acc_2dpzenit_ris"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ToolKit", "ACE_Clacker"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Loadout array that's passed back to kosherArsenal */
[
	/* Loadoutfile version */
	"1.2",

	/* Allowed Equipment array */
	[
		(_availableBackpacks + _defBackpacks),
		(_availableVests + _defVests),
		(_availableUniforms + _defUniforms),
		(_availableFacewear + _defFacewear),
		(_defHeadgear + _availableHeadgear),
		(_defAttachments + _availableAttachments),
		(_availableMagazines + _defGrenades + _defMagazines + _availableGrenades),
		(_availableWeapons + _defWeapons),
		(_availableItems + _defItems)
	]
];

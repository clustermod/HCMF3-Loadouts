/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "rhsusf_acc_sf3p556", "rhsusf_acc_sfmb556", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_XL50", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACRE_PRC152"];
private _defMagazines = ["murshun_cigs_matches", "murshun_cigs_cigpack", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhs_mag_20Rnd_SCAR_762x51_m62_tracer", "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", "150Rnd_762x51_Box_Tracer", "CUP_21Rnd_9x19_M17_Black", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_M441_HE", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_M433_HEDP"];
private _defUniforms = ["rhs_uniform_g3_m81", "CUP_U_CRYE_G3C_M81_US", "CUP_U_CRYE_G3C_M81_US_V2", "CUP_U_CRYE_G3C_M81_US_V3", "CUP_U_CRYE_G3C_M81_RGR_US", "CUP_U_CRYE_G3C_M81_Tan_US"];
private _defWeapons = ["rhsusf_weap_glock17g4", "CUP_hgun_M17_Black", "rhsusf_bino_lerca_1200_black"];
private _defGrenades = ["ACE_Chemlight_IR","HandGrenade","rhs_mag_an_m8hc","ACE_M84", "rhs_mag_m18_red", "SmokeShellBlue", "rhs_mag_m18_purple"];
private _defVests = [];
private _defBackpacks = ["tgc_tssi_m9_hpc"];
private _defHeadgear = ["rhsusf_opscore_mc_cover_pe lt", "rhsusf_opscore_mc_cover_pelt_nsw","rhsusf_opscore_mc_cover_pelt_cam", "rhsusf_opscore_rg_cover_pelt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_nsw_cam"];
private _defFacewear = ["CUP_G_ESS_BLK_Dark", "UK3CB_BAF_G_Tactical_Clear"];
private _defAttachments = [];

// Made by Per_von_Harke with help from AutisticBalistic
// NOTE THAT RANGER GREEN CPCs ARE NOT ACCURATE
//Extra added roles: JTAC

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// JTAC
if (_condition in ["JTAC"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_communications_rngr", "CUP_V_CPC_communicationsbelt_rngr"];
	_availableItems = ["ACRE_PRC117F", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Team Leader / Element Leader
if (_condition in ["SL", "FTP"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_Soflam_Laserdesignator", "rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tl_rngr", "CUP_V_CPC_tlbelt_rngr"];
	_availableItems = ["ACRE_PRC117F", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = [ "rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medical_rngr", "CUP_V_CPC_medicalbelt_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = ["TRYK_B_Medbag_OD"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition in ["AR"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_Mk48"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rhsusf_acc_elcan", "rhsusf_acc_anpeq15side", "rhsusf_acc_ardec_m240", "muzzle_snds_h_mg_blk_f"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Marksmen
if (_condition in ["MRK"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_sr25_ec"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["cup_optic_leupoldmk4", "rhsusf_acc_sr25s", "ACE_SpottingScope", "rhsusf_acc_anpeq15side", "rhsusf_acc_sr25s_d", "rhsusf_acc_harris_bipod", "rhsusf_acc_aac_762sd_silencer"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition in ["GRD"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition in ["LAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_M136_hedp", "rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MAT
if (_condition in ["MAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC", "CUP_launch_MAAWS"];
	_availableMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT"];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_optic_maaws_scope"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// HAT
if (_condition in ["HAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC", "UK3CB_BAF_Javelin_Slung_Tube", "UK3CB_BAF_Javelin_CLU"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Engineer
if (_condition in ["ENG"]) then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_552", "rhsusf_acc_su230_c", "rhsusf_acc_aac_762sd_silencer", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
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

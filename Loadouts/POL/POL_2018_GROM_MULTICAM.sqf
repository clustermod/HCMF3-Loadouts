params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACRE_PRC343", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_M_SAW", "hlc_200rnd_556x45_T_SAW", "rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_30Rnd_556x45_M855_PMAG", "rhs_mag_30Rnd_556x45_M855_PMAG_Tan", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "ACE_40mm_Flare_white"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_CRYE_MCAM_NP2_Full"];
private _defWeapons = ["CUP_hgun_Glock17_blk", "CUP_hgun_Glock17_tan", "CUP_hgun_Glock17"];
private _defVests = [];
private _defBackpacks = ["B_AssaultPack_mcamo"];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];


// Loadout file made by Per_von_Harke

// Polish Special Forces, all camo is Multicam
// Classname of accurate looking gasmask = SE_S10_Gas_Mask
// NO NIGHTVISION GOGGLES INCLUDED , no real military uses Deagles they are impractical af


// Rifleman
if (_condition && _role in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d", "ACE_Vector"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Team leader
if (_condition && _role in ["SL", "FTL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhsusf_bino_lerca_1200_tan", "rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_mc"];
	_availableItems = ["ACRE_PRC152", "rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_lmg_minimi_railed"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_ardec_m240", "rhsusf_acc_elcan"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_m320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d", "rhs_weap_M136", "rhs_weap_M136_hedp", "rhs_weap_M136_hp"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_maaws", "rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhs_optic_maaws", "rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_fgm148", "rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then
{
	_unit setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
	_availableAttachments = [];
	_availableGrenades = [];
};

/* Loadout array that's passed back to kosherArsenal */
[
	/* Loadoutfile version */
	"1.3",

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

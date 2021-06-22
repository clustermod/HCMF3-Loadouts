params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "ACRE_PRC343", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_M_SAW", "hlc_200rnd_556x45_T_SAW", "rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_30Rnd_556x45_M855_PMAG", "rhs_mag_30Rnd_556x45_M855_PMAG_Tan", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "ACE_40mm_Flare_white"                                          "murshun_cigs_matches", "murshun_cigs_cigpack"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["CUP_U_CRYE_MCAM_NP2_Full"];
_defWeapons = ["CUP_hgun_Glock17_blk", "CUP_hgun_Glock17_tan", "CUP_hgun_Glock17"];
_defVests = [];
_defBackpacks = ["B_AssaultPack_mcamo"];
_defHeadgear = [];
_defFacewear = [];


// Loadout file made by Per_von_Harke

// Polish Special Forces, all camo is Multicam
// Classname of accurate looking gasmask = SE_S10_Gas_Mask
// NO NIGHTVISION GOGGLES INCLUDED , no real military uses Deagles they are impractical af


// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d", "ACE_Vector"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// Team leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhsusf_bino_lerca_1200_tan", "rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_mc"];
	_availableItems = ["ACRE_PRC152", "rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_lmg_minimi_railed"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_ardec_m240", "rhsusf_acc_elcan"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_m320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d", "rhs_weap_M136", "rhs_weap_M136_hedp", "rhs_weap_M136_hp"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_maaws", "rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhs_optic_maaws", "rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_fgm148", "rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d"];
	_availableMagazines = [];
	_availableVests = [ "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_flashlight", "cup_acc_flashlight_desert",  "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [ "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

//Populate with predefined items and whatever is already in the crate
_backpacks 	= (_availableBackpacks + _defBackpacks);
_items 		= (_availableVests + _availableItems + _availableUniforms + _defUniforms + _defVests + _defItems + _defFacewear + _availableFacewear + _defHeadgear + _availableHeadgear);
_magazines 	= (_availableMagazines + _defGrenades + _defMagazines);
_weapons 	= (_availableWeapons + _defWeapons);

if (!_rearmOnly) then {
	[_obj, _backpacks] 	call BIS_fnc_addVirtualBackpackCargo;
	[_obj, _items	 ] 	call BIS_fnc_addVirtualItemCargo;
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, _weapons	 ] 	call BIS_fnc_addVirtualWeaponCargo;
} else {
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, (_availableItems + _defItems)] call BIS_fnc_addVirtualItemCargo;
};


player setVariable ["EMF_KA_permittedGear", [_backpacks, _items, _magazines, _weapons], true];

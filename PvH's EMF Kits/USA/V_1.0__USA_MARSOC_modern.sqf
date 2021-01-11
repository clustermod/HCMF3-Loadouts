params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_sfmb556", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_XL50", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACRE_PRC152"];
_defMagazines = ["murshun_cigs_matches", "murshun_cigs_cigpack", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhs_mag_20Rnd_SCAR_762x51_m62_tracer", "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", "150Rnd_762x51_Box_Tracer", "CUP_21Rnd_9x19_M17_Black", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_M441_HE", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_M433_HEDP"];
_defUniforms = ["rhs_uniform_g3_m81", "CUP_U_CRYE_G3C_M81_US", "CUP_U_CRYE_G3C_M81_US_V2", "CUP_U_CRYE_G3C_M81_US_V3", "CUP_U_CRYE_G3C_M81_RGR_US", "CUP_U_CRYE_G3C_M81_Tan_US"];
_defWeapons = ["rhsusf_weap_glock17g4", "CUP_hgun_M17_Black", "rhsusf_bino_lerca_1200_black"];
_defGrenades = ["ACE_Chemlight_IR","HandGrenade","rhs_mag_an_m8hc","ACE_M84", "rhs_mag_m18_red", "SmokeShellBlue", "rhs_mag_m18_purple"];
_defVests = [];
_defBackpacks = ["tgc_tssi_m9_hpc"];
_defHeadgear = ["rhsusf_opscore_mc_cover_pe lt", "rhsusf_opscore_mc_cover_pelt_nsw","rhsusf_opscore_mc_cover_pelt_cam", "rhsusf_opscore_rg_cover_pelt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_nsw_cam"];
_defFacewear = ["CUP_G_ESS_BLK_Dark", "UK3CB_BAF_G_Tactical_Clear"];

//Extra added roles: JTAC

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_communications_rngr", "CUP_V_CPC_communicationsbelt_rngr"];
	_availableItems = ["ACRE_PRC117F", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team Leader / Element Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_Soflam_Laserdesignator", "rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tl_rngr", "CUP_V_CPC_tlbelt_rngr"];
	_availableItems = ["ACRE_PRC117F", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = [ "rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medical_rngr", "CUP_V_CPC_medicalbelt_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = ["TRYK_B_Medbag_OD"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_Mk48"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rhsusf_acc_elcan", "rhsusf_acc_anpeq15side", "rhsusf_acc_ardec_m240", "muzzle_snds_h_mg_blk_f"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Marksmen
if (_role == "MRK") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_sr25_ec"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["cup_optic_leupoldmk4", "rhsusf_acc_sr25s", "ACE_SpottingScope", "rhsusf_acc_anpeq15side", "rhsusf_acc_sr25s_d", "rhsusf_acc_harris_bipod", "rhsusf_acc_aac_762sd_silencer"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_M136_hedp", "rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC", "CUP_launch_MAAWS"];
	_availableMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT"];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_optic_maaws_scope"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_mstock", "CUP_arifle_Mk17_CQC_FG", "CUP_arifle_Mk17_STD", "CUP_arifle_Mk17_STD_FG", "rhs_weap_m4a1_blockII_KAC", "UK3CB_BAF_Javelin_Slung_Tube", "UK3CB_BAF_Javelin_CLU"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_Fastbelt_coy", "CUP_V_CPC_Fast_coy", "CUP_V_CPC_weaponsbelt_coy", "CUP_V_CPC_weapons_coy"];
	_availableItems = ["rksl_optic_eot552_c", "rksl_optic_eot552", "sma_eotech552_3xdown_des", "rhsusf_acc_su230_c", "sma_eotech552_kf_des", "sma_elcan_specter_green_4z", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "sma_eotech552", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black",    "cup_acc_anpeq_15_black", "cup_acc_anpeq_15_od", "cup_acc_anpeq_15_od_top", "cup_acc_anpeq_15", "cup_acc_anpeq_15_black_top", "cup_acc_anpeq_15_tan_top", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_top_flashlight_od_l", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then
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

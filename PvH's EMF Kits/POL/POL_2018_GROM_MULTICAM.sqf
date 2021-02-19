params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_PRC343", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_M_SAW", "hlc_200rnd_556x45_T_SAW", "rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_30Rnd_556x45_M855_PMAG", "rhs_mag_30Rnd_556x45_M855_PMAG_Tan", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan"                                          "murshun_cigs_matches", "murshun_cigs_cigpack"];
_defGrenades = [];
_defUniforms = [];
_defWeapons = ["CUP_hgun_Glock17_blk"];
_defVests = [];
_defBackpacks = ["B_AssaultPack_mcamo"];
_defHeadgear = [];
_defFacewear = [];

// Polish Special Forces, all camo is Multicam
// Classname of accurate gasmask = SE_S10_Gas_Mask
// NO NIGHTVISION GOGGLES INCLUDED


// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = ["rhs_uniform_g3_mc"];
	_availableWeapons = ["rhs_weap_hk416d10", "rhs_weap_hk416d10_LMT_d", "ACE_Vector"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des"];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// Team leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhsusf_bino_lerca_1200_tan", "rhs_weap_hk416d10", "rhs_weap_hk416d10_LMT_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_mc"];
	_availableItems = ["ACRE_PRC152", "rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des"];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10", "rhs_weap_hk416d10_LMT_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des"];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_lmg_minimi_railed"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["rhsusf_acc_ardec_m240", "rhsusf_acc_elcan"];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"]];
	_availableItems = [];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"]];
	_availableItems = [];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10", "rhs_weap_hk416d10_LMT_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"]];
	_availableItems = [];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10", "rhs_weap_hk416d10_LMT_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"]];
	_availableItems = [];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// HAT  // no real sources for AT loadouts
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_maaws", "rhs_weap_hk416d10", "rhs_weap_hk416d10_LMT_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"]];
	_availableItems = [];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
	_availableFacewear = ["rhs_googles_clear", "CUP_RUS_Balaclava_tan", "CUP_G_ESS_BLK", "CUP_G_WristWatch"];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10", "rhs_weap_hk416d10_LMT_d"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"]];
	_availableItems = ["rhsusf_acc_eotech_xps3", "rhsusf_acc_nt4_black", "rhsusf_acc_nt4_tan", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_black", "sma_eotech", "sma_eotechg33_3xdown", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des"];
	_availableBackpacks = ["TAC_MTAP_MTP2"];
	_availableHeadgear = ["rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw",   "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt"];
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

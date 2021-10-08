private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "ACRE_PRC343", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "rhsusf_ANPVS_15", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_200rnd_556x45_mixed_box", "rhsusf_200Rnd_556x45_box", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "CUP_20Rnd_762x51_HK417", "CUP_20Rnd_762x51_HK417_Camo_Wood"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = [];
_defWeapons = ["rhsusf_bino_m24", "CUP_hgun_Glock17_blk"];
_defVests = [];
_defBackpacks = ["B_AssaultPack_cbr"];
_defHeadgear = ["n_opscore_w_cover_pelt_nsw", "n_opscore_w_cover_pelt", "n_opscore_ut_pelt_nsw", "n_opscore_ut_pelt"];
_defFacewear = ["n_facemask_w", "rhs_googles_clear", "rhs_googles_black", "CUP_G_ESS_BLK", "G_Bandanna_oli", "CUP_G_WristWatch"];


// Koscher gasmask: SE_S10_Gas_Mask
// Loadout made by Per_von_Harke
//
// You can replace the PEQ2s with PEQ15s if you want to get more newer loadouts for Telemarken Battalion.

// Rifleman
if (_role == "RFL") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
  _availableUniforms = [];
	_availableWeapons = ["n_hk416n_black"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_light"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
  _availableUniforms = [];
	_availableWeapons = ["n_hk416n_black", "rhsusf_bino_lrf_Vector21"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_squadleader"];
	_availableItems = ["ACE_microDAGR", "ACRE_PRC152", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
  player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_black"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_corpsman"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
	_availableBackpacks = ["B_Kitbag_cbr", "n_backpack_kitbag_w"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
  _availableUniforms = [];
	_availableWeapons = ["rhs_weap_minimi_para_railed"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_mg"];
	_availableItems = ["rhsusf_acc_su230", "cup_acc_anpeq_2_grey", "rhsusf_acc_saw_lw_bipod", "rhsusf_acc_compm4"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_m320_black"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_light"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Designated Marksman
if (_role == "DMR") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
  _availableUniforms = [];
	_availableWeapons = ["CUP_arifle_HK417_20", "rhs_weap_M107"];
	_availableMagazines = ["rhsusf_mag_10Rnd_STD_50BMG_mk211", "ACE_5Rnd_127x99_API_Mag", "ACE_5Rnd_127x99_AMAX_Mag", "ACE_5Rnd_127x99_Mag"];
	_availableVests = ["n_m07_coy_marksman"];
	_availableItems = ["ACE_Kestrel4500", "ACE_RangeCard", "rhsusf_acc_harris_bipod", "cup_optic_leupoldmk4_10x40_lrt_woodland", "cup_optic_leupoldmk4", "rhsusf_acc_nxs_3515x50f1_h58_sun", "rhsusf_acc_nxs_3515x50f1_md_sun", "rhsusf_acc_nxs_5522x56_md_sun", "rhsusf_acc_nxs_5522x56_md"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_black", "rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_light"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_black", "launch_MRAWS_green_F"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_light"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_black", "UK3CB_BAF_Javelin_CLU", "UK3CB_BAF_Javelin_Launcher"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_light"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_black"];
	_availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
	_availableVests = ["n_m07_coy_light"];
	_availableItems = ["ACE_Clacker", "ACE_DefusalKit", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};


// Engineer
if (_role == "ENG") then
{
  [player, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_black"];
	_availableMagazines = [];
	_availableVests = ["n_m07_coy_light"];
	_availableItems = ["ToolKit", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
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

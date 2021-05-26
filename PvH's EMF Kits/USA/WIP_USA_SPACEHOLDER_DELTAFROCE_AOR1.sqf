params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = [ "ACRE_PRC148", "tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_m", "tgc_pvs23_special_n", "tgc_pvs23_special_2",                 "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = [];
_defGrenades = [];
_defUniforms = ["AOR1_ACd", "AOR1_AC_01_1", "AOR1_ACm", "AOR1_ACb", "AOR1_ACc", ""];
_defWeapons = [];
_defVests = ["tgc_mtv_lightp", "tgc_mtv_medium", "tgc_mtv_medium2", "tgc_mtv_medium3", "tgc_mtv_radio", "tgc_mtv_tan"];
_defBackpacks = [];
_defHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_od", "tc2002_sm"];
_defFacewear = ["G_ESS_black"];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "sma_eotech552", "rhsusf_acc_nt4_black", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "sma_eotech552", "rhsusf_acc_nt4_black", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10"];
	_availableMagazines = [];
	_availableVests = ["cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "sma_eotech552", "rhsusf_acc_nt4_black", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit"];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "sma_eotech552", "rhsusf_acc_nt4_black", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "sma_eotech552", "rhsusf_acc_nt4_black", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "sma_eotech552", "rhsusf_acc_nt4_black", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "sma_eotech552", "rhsusf_acc_nt4_black", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
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

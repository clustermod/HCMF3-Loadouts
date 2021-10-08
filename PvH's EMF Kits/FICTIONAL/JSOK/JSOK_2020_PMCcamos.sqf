private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "rhsusf_acc_grip2", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_grip3", "cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_rotex5_grey", "sma_eotech552", "sma_eotech552_3xdown", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_xps3", "rhsusf_acc_su230a_c", "sma_micro_t2", "sma_elcan_specter_tan", "optic_mrd_black", "ACRE_PRC152", "tgc_pvs23_special_p", "tgc_pvs23_special_m", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["CUP_21Rnd_9x19_M17_Black", "rhs_mag_30Rnd_556x45_Mk262_PMAG", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
_defGrenades = [];
_defUniforms = ["CUP_I_B_PMC_Unit_39", "CUP_I_B_PMC_Unit_42", "CUP_I_B_PMC_Unit_38"];
_defWeapons = ["rhsusf_bino_lrf_Vector21", "CUP_hgun_M17_Black"];
_defVests = [];
_defBackpacks = ["B_AssaultPack_cbr"];
_defHeadgear = ["rhsusf_opscore_mar_ut_pelt"];
_defFacewear = ["AGE_Balaclava_Black", "AGE_Balaclava_MCam"];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_tlbelt_mc"];
	_availableItems = [];
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
	_availableWeapons = ["rhs_weap_mk18_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249_pip_S_para"];
	_availableMagazines = ["rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box"];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_saw_bipod"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_m320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_mc"];
	_availableItems = [];
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

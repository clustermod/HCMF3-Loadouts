params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "ACE_CableTie", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "age_pk1", "age_pk2", "age_pk0", "AGE_NVG", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_100Rnd_762x54mmR_7N26", "rhs_100Rnd_762x54mmR_green", "rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_tracer", "rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_AK_plum_green", ""];
_defGrenades = ["rhs_mag_rgd5", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_f1"];
_defUniforms = ["rhs_uniform_g3_tan"];
_defWeapons = [];
_defVests = ["AGE_TV110_AK_Holster_Coyote"];
_defBackpacks = [];
_defHeadgear = ["CUP_H_RUS_6B47_headset_desert"];
_defFacewear = ["G_SWDG", "CUP_G_Tan_Scarf_Shades_GPSCombo_Beard_Blonde", "CUP_G_Tan_Scarf_Shades_GPSCombo_Beard", "CUP_G_WristWatch", "CUP_RUS_Balaclava_tan"];


// Is supposed to be some PMC of Russian decent operating in Syria and is completely fictional
// Made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak103_zenitco01_b33"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rhs_acc_dtk2", "sma_eotech552", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_xps3", "age_inforce_white", "rhs_acc_2dpzenit", "rhs_acc_dtk1", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_tan"];
	_availableBackpacks = ["tgc_hpc_backpanel_tan"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhssaf_zrak_rd7j", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak103_zenitco01_b33"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rhs_acc_dtk2", "sma_eotech552", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_xps3", "age_inforce_white", "rhs_acc_2dpzenit", "rhs_acc_dtk1", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_tan"];
	_availableBackpacks = ["tgc_hpc_backpanel_tan"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak103_zenitco01_b33"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhs_acc_dtk2", "sma_eotech552", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_xps3", "age_inforce_white", "rhs_acc_2dpzenit", "rhs_acc_dtk1", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_tan"];
	_availableBackpacks = ["TAC_MTAP_CY2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Machinegunner
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_Pecheneg_top_rail_B50_vfg"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["sma_eotech552", "rhs_acc_2dpzenit_ris"];
	_availableBackpacks = ["tgc_hpc_backpanel_tan"];
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

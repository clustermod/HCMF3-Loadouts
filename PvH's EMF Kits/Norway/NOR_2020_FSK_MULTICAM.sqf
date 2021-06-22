params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "ACE_microDAGR", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "rhsusf_ANPVS_15", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["n_g3_mc"];
_defWeapons = ["CUP_hgun_Glock17_blk", "rhsusf_bino_m24"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["n_opscore_ut_pelt_nsw", "n_opscore_ut_pelt"];
_defFacewear = [];


//
// Loadout made by Per_von_Harke
// WIP

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["rhsusf_falconii_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhsusf_bino_lrf_Vector21", "n_hk416n_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communications_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_tl_mc", "CUP_V_JPC_tlbelt_mc"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["rhsusf_falconii_mc"];
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
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_medical_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["n_backpack_kitbag_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_minimi_para_railed"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
	_availableItems = ["rhsusf_acc_su230", "cup_acc_anpeq_2_grey", "rhsusf_acc_saw_lw_bipod", "rhsusf_acc_compm4"];
	_availableBackpacks = ["rhsusf_falconii_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
	_availableItems = [];
	_availableBackpacks = ["rhsusf_falconii_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_m320_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_mc"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["rhsusf_falconii_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m72a7", "n_hk416n_m320_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["rhsusf_falconii_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["launch_MRAWS_olive_F", "n_hk416n_m320_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["n_backpack_kitbag_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_Javelin_Slung_Tube", "UK3CB_BAF_Javelin_CLU", "n_hk416n_m320_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
	_availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["rhsusf_falconii_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_m320_black"];
	_availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
	_availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
	_availableItems = ["ACE_Clacker", "ACE_DefusalKit", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["rhsusf_falconii_mc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};


// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["n_hk416n_m320_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
	_availableItems = ["ToolKit", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
	_availableBackpacks = ["rhsusf_falconii_mc"];
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

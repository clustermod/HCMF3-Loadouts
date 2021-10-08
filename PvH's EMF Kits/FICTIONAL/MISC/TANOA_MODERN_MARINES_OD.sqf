private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["rhsusf_ANPVS_15", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_mag_30Rnd_556x45_Mk262_PMAG", "UK3CB_BAF_762_200Rnd", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_100Rnd_762x51_m80a1epr", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEDP", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["rhs_uniform_g3_rgr"];
_defWeapons = ["rhsusf_bino_m24", "rhsusf_weap_glock17g4"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["rhsusf_opscore_rg_cover_pelt"];
_defFacewear = ["CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr"];


// FICTIONAL
// Loadout made by Per_von_Harke
// If this is uncomplete which I don't remember atm pls message me on Discord. 

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_blockII"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
  _availableWeapons = ["rhs_weap_m4a1_blockII"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_blockII"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["TRYK_B_Medbag_OD"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249_pip_S_para"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["rhsusf_acc_su230a_c", "cup_acc_anpeq_15", "rhsusf_acc_grip4_bipod",  "rhsusf_acc_sfmb556"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m240B"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["rhsusf_acc_su230a_c", "cup_acc_anpeq_15", "rhsusf_acc_ardec_m240"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_blockII_M203"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_rngr"];
	_availableItems = ["cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
  _availableWeapons = ["rhs_weap_m4a1_blockII", "launch_MRAWS_green_F"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "cup_acc_anpeq_15"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
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

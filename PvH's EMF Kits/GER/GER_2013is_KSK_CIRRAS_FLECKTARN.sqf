private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_SEM52SL", "tgc_pvs23_special_2", "tgc_pvs23_bungee",  "rhsusf_acc_nt4_black", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["BWA3_200Rnd_556x45", "BWA3_200Rnd_556x45_Tracer", "rhssaf_30rnd_556x45_MDIM_G36", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
_defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"
];
_defUniforms = ["CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
_defWeapons = [];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["tc2002_sb", "tc2002od2", "tc2002_od"];
_defFacewear = ["AGE_Balaclava_Black", "CUP_G_RUS_Balaclava_Ratnik", "CUP_G_ESS_BLK"];


//
// Loadout made by Per_von_Harke
// Not 100% accurate. But accurate as it can get and still look good/acceptable inside Arma.

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_TL"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["rhsusf_acc_su230a", "cup_acc_llm01_l"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_RIS_AG36"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Grenadier"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS", "CUP_launch_BF3", "CUP_launch_PzF3", "CUP_launch_HCPF3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
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

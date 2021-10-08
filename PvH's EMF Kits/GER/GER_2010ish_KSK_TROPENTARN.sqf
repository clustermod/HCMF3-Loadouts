private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_SEM52SL", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["CUP_30Rnd_556x45_G36_camo", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo", "hlc_50rnd_762x51_M_G3", "BWA3_120Rnd_762x51", "BWA3_120Rnd_762x51_Tracer", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
_defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3"
];
_defUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_3"];
_defWeapons = ["BWA3_Vector", "BWA3_P8"];
_defVests = ["CUP_V_B_GER_Carrier_Vest_2"];
_defBackpacks = ["BWA3_PatrolPack_Tropen"];
_defHeadgear = ["BWA3_M92_Tropen", "BWA3_Booniehat_Tropen"];
_defFacewear = ["AGE_Goggles_ComTacs", "CUP_G_PMC_RadioHeadset", "rhsusf_shemagh2_tan", "rhsusf_shemagh_tan"];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK_VFG_camo", "CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_llm01_desert_l", "cup_optic_holodesert", "rhsusf_acc_su230a_c", "cup_muzzle_snds_g36_desert"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK_VFG_camo", "CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_llm01_desert_l", "cup_optic_holodesert", "rhsusf_acc_su230a_c", "cup_muzzle_snds_g36_desert", "ACE_DAGR"];
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
	_availableWeapons = ["CUP_arifle_G36K_KSK_VFG_camo", "CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "cup_acc_llm01_desert_l", "cup_optic_holodesert", "rhsusf_acc_su230a_c", "cup_muzzle_snds_g36_desert"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_rifle_g3sg1"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["hlc_optic_zfsg1"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG3"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["bwa3_bipod_mg3"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_RIS_AG36_camo"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_llm01_desert_l", "cup_optic_holodesert", "rhsusf_acc_su230a_c", "cup_muzzle_snds_g36_desert"];
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

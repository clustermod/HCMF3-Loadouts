params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "cup_optic_g36dualoptics", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["BWA3_15Rnd_9x19_P8", "BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft", "BWA3_200Rnd_556x45", "BWA3_200Rnd_556x45_Tracer", "CUP_30Rnd_556x45_G36", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36",         "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
_defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange"];
_defUniforms = ["CUP_U_B_GER_Flecktarn_6"];
_defWeapons = ["BWA3_P8"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["CUP_H_Ger_M92_Cover"];
_defFacewear = ["BWA3_G_Combat_clear", "BWA3_G_Combat_black"];

//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Fleck_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A", "rhsusf_bino_m24"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Fleck_TL"];
	_availableItems = ["ACRE_SEM52SL"];
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
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Fleck_Med"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit","adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck_Medic"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Fleck_MG"];
	_availableItems = [];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Fleck_MG"];
	_availableItems = [];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AG36"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Fleck_Gren"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A", "CUP_launch_PzF3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Fleck_RFL"];
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

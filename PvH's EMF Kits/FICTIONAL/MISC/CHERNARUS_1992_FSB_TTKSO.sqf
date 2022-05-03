private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["CUP_30Rnd_545x39_AK_M", "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", "CUP_5Rnd_127x108_KSVK_M"];
_defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
_defUniforms = ["rhs_uniform_afghanka_ttsko"];
_defWeapons = ["rhs_weap_makarov_pm"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["UK3CB_H_Beanie_02_BLK", "UK3CB_H_Bandanna_Camo", "H_Bandanna_khk", "rhs_fieldcap_m88_ttsko"];
_defFacewear = ["rhs_scarf", "G_Balaclava_blk", "CUP_RUS_Balaclava_blk", "CUP_G_RUS_Balaclava_Ratnik"];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74_Early", "CUP_arifle_AKS74U", "CUP_arifle_AKS74_Early"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_lifchik", "rhs_6b2_chicom", "rhs_6b2_holster", "rhs_6b2"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_stsh81"];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74_Early", "CUP_arifle_AKS74U", "CUP_arifle_AKS74_Early"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_lifchik", "rhs_6b2_chicom", "rhs_6b2_holster", "rhs_6b2"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_stsh81"];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74_Early", "CUP_arifle_AKS74U", "CUP_arifle_AKS74_Early"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_lifchik", "rhs_6b2_chicom", "rhs_6b2_holster", "rhs_6b2"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope"];
	_availableBackpacks = ["CUP_B_CivPack_WDL"];
	_availableHeadgear = ["rhs_stsh81"];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_RPK74_45"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_RPK"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_stsh81"];
	_availableFacewear = [];
};

// Marksman
if (_role == "MRK") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m76", "CUP_srifle_ksvk"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_SVD"];
	_availableItems = ["cup_optic_pso_3", "cup_optic_pso_1_1"];
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

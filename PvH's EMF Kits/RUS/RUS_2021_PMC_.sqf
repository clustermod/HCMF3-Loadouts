private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["cup_muzzle_tgpa_desert", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["CUP_30Rnd_545x39_AK74M_desert_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_desert_M", "rhs_100Rnd_762x54mmR_7N26", "rhs_100Rnd_762x54mmR_green", "rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_tracer"];
_defGrenades = [];
_defUniforms = ["rhs_uniform_gorka_r_y_gloves", "UK3CB_CW_SOV_O_Late_U_Spetsnaz_Uniform_Gorka_01_KLMK", "FGN_RU_Gorka_Multicam"];
_defWeapons = [];
_defVests = ["AGE_TV110_AK_MultiCam", "AGE_TV110_AK_Holster_MultiCam", "AGE_TV110_SL_Holster_MultiCam", "AGE_WAS_AK_MultiCam"];
_defBackpacks = ["B_AssaultPack_cbr"];
_defHeadgear = ["H_Bandanna_cbr", "H_Bandanna_sand", "H_Booniehat_khk", "H_Cap_tan", "CUP_H_FR_BandanaGreen", "CUP_H_RUS_Bandana_GSSh_Headphones", "CUP_H_PMC_Beanie_Khaki", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_RUS_Cap_ATACSAU", "CUP_H_USA_Cap_MCAM", "CUP_H_PMC_Cap_Back_EP_Tan", "AGE_ComTacs", "AGE_ComTacs_Facemask"];
_defFacewear = ["rhs_scarf", "AGE_Balaclava_MCam", "AGE_Goggles_ComTacs"];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_desert", "CUP_arifle_AK74M_top_rail_desert", "CUP_arifle_AK74M_desert", "CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert", "CUP_arifle_AK74_Early", "rhs_weap_akm"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_optic_microt1_low_coyote", ""];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhssaf_zrak_rd7j", "CUP_arifle_AK74M_railed_desert", "CUP_arifle_AK74M_top_rail_desert", "CUP_arifle_AK74M_desert", "CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert"];
	_availableMagazines = [];
	_availableVests = [];
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
	_availableWeapons = ["CUP_arifle_AK74M_railed_desert", "CUP_arifle_AK74M_top_rail_desert", "CUP_arifle_AK74M_desert", "CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_pkm"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_GL_desert", "CUP_arifle_AK74M_GL_top_rail_desert", "CUP_arifle_AK74M_GL_railed_desert"];
	_availableMagazines = [];
	_availableVests = [];
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

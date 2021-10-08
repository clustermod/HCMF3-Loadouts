private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACE_CableTie", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhsusf_mag_7x45acp_MHP", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M583A1_white", "rhs_mag_m662_red", "rhs_mag_m661_green", "rhs_mag_m713_Red"];
_defGrenades = ["rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_m67"];
_defUniforms = ["CUP_U_B_HIL_ACU_Kneepad_Gloves_CCE"];
_defWeapons = ["rhsusf_bino_m24", "rhsusf_weap_m1911a1"];
_defVests = ["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Olive2", "CUP_V_B_Ciras_Olive3", "CUP_V_B_Ciras_Olive4"];
_defBackpacks = ["UNS_Ammopack"];
_defHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_CZ_Helmet09", "CUP_H_Booniehat_CCE"];
_defFacewear = ["UK3CB_G_Neck_Shemag_Tan", "CUP_G_ESS_BLK"];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_Colt727"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_optic_aimpoint_5000"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_Colt727"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_optic_aimpoint_5000", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36"];
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
	_availableWeapons = ["CUP_arifle_Colt727"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "kat_larynx", "kat_chestSeal", "cup_optic_aimpoint_5000"];
	_availableBackpacks = ["UNS_ARMY_MED"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_m249_para"];
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
	_availableWeapons = ["CUP_arifle_Colt727_M203"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_optic_aimpoint_5000"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_Colt727", "rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_optic_aimpoint_5000"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Explosive Specialist
if (_role == "ESP") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_Colt727"];
	_availableMagazines = ["rhs_ec200_mag", "rhs_ec400_mag", "CUP_TimeBomb_M", "rhsusf_m112_mag", "rhsusf_m112x4_mag"];
	_availableVests = [];
	_availableItems = ["cup_optic_aimpoint_5000", "ACE_Clacker"];
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

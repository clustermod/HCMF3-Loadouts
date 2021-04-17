params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = [ "CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "CUP_30Rnd_556x45_G36", "CUP_30Rnd_TE1_Green_Tracer_556x45_G36", "rhsusf_200Rnd_556x45_soft_pouch_coyote",   "rhs_mag_M433_HEDP", "rhs_mag_M397_HET", "rhs_mag_M441_HE", "ACE_40mm_Flare_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "UGL_FlareRed_F"];
_defGrenades = ["Chemlight_green", "Chemlight_blue", "ACE_Chemlight_IR", "Chemlight_red", "ACE_Chemlight_Orange", "rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_mk84"];
_defUniforms = [];
_defWeapons = [];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];

//Loadout made by Per_von_Harke
// murshun_cigs_matches , murshun_cigs_cigpack
// Grenade presets follow Cluster-Community SOP's.
//
// Default western Grenades: "Chemlight_green", "Chemlight_blue", "ACE_Chemlight_IR", "Chemlight_red", "ACE_Chemlight_Orange", "rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_mk84", "rhs_mag_mk3a2", "rhs_mag_m7a3_cs"
// Default Eastern Grenades:
//

// Zeus
if (_role == "ZEUS") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_1"];
	_availableWeapons = ["CUP_arifle_G36K_camo", "ACE_Vector"];
	_availableMagazines = ["CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo"];
	_availableVests = ["CUP_V_B_GER_Carrier_Vest_2"];
	_availableItems = ["cup_bipod_g36_desert", "cup_muzzle_snds_g36_desert", "cup_acc_llm01_desert_l", "cup_optic_g36optics_rds_desert"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_Boonie2_desert"];
	_availableFacewear = ["rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = ["cup_optic_g36optics_rds", "cup_optic_g36optics_rds_3d"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// Team leader / Squad leader
if (_role == "SL") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_TL"];
	_availableItems = ["cup_optic_g36optics_rds", "cup_optic_g36optics_rds_3d"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_Med"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "cup_optic_g36optics_rds", "cup_optic_g36optics_rds_3d"];
	_availableBackpacks = ["CUP_B_GER_Medic_Tropentarn"];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_lmg_m249_pip1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_MG"];
	_availableItems = ["cup_optic_hensoldtzo_low"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_lmg_MG3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_MG"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_AG36"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_Gren"];
	_availableItems = ["cup_optic_g36optics_rds", "cup_optic_g36optics_rds_3d"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A";
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A", "CUP_launch_BF3", "CUP_launch_HCPF3", "CUP_launch_PzF3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = ["ToolKit"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["rhs_weap_M320", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_Gren"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// Marksman
if (_role == "MRK") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// Breacher
if (_role == "BRC") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
};

// Rotary Wing Pilot
if (_role == "RWP") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Fixed Wing Pilot
if (_role == "FWP") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A", "ACE_VMH3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
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

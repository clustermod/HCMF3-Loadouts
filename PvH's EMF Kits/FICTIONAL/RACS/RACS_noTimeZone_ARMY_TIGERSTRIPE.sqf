params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_PRC343", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "CUP_30Rnd_556x45_Stanag_Tracer_Red", "CUP_30Rnd_556x45_Stanag", "CUP_MAAWS_HEDP_M", "CUP_MAAWS_HEAT_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",   "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_SmokeGreen_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_SmokeRed_M203"];
_defGrenades = ["CUP_HandGrenade_M67", "SmokeShell", "SmokeShellGreen", "SmokeShellRed", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"];
_defUniforms = ["CUP_U_I_RACS_mech_1"];
_defWeapons = [];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["CUP_H_LWHv2_tigerstripe_comms"];
_defFacewear = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "rhssaf_zrak_rd7j"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
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
	_availableWeapons = ["CUP_arifle_M16A2"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_M249_E2"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_M240"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2_GL"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Grenadier_Olive"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "CUP_launch_M72A6"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "CUP_launch_MAAWS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "CUP_launch_M47"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
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

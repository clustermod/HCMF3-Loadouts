params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["cup_optic_susat", "uk3cb_baf_susat", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["UK3CB_BAF_1Rnd_SmokeBlue_Grenade_shell", "UK3CB_BAF_1Rnd_HE_Grenade_Shell", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_UGL_FlareCIR_F", "UK3CB_BAF_UGL_FlareGreen_F", "UK3CB_BAF_1Rnd_SmokeOrange_Grenade_shell", "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell", "UK3CB_BAF_UGL_FlareRed_F", "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell",          "murshun_cigs_matches", "murshun_cigs_cigpack", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T", "UK3CB_BAF_762_100Rnd", "UK3CB_BAF_762_100Rnd_T", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"];
_defGrenades = ["UK3CB_BAF_SmokeShellYellow", "UK3CB_BAF_SmokeShellPurple", "UK3CB_BAF_SmokeShell", "UK3CB_BAF_SmokeShellGreen", "UK3CB_BAF_SmokeShellOrange", "UK3CB_BAF_SmokeShellRed", "UK3CB_BAF_SmokeShellBlue", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "HandGrenade"];
_defUniforms = ["UK3CB_BAF_U_CombatUniform_DDPM", "UK3CB_BAF_U_CombatUniform_DDPM_ShortSleeve"];
_defWeapons = [];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["UK3CB_BAF_H_Mk6_DDPM_A", "UK3CB_BAF_H_Mk6_DDPM_B", "UK3CB_BAF_H_Mk6_DDPM_C", "UK3CB_BAF_H_Mk6_DDPM_D", "UK3CB_BAF_H_Mk6_DDPM_E", "UK3CB_BAF_H_Mk6_DDPM_F"];
_defFacewear = ["rhs_googles_black", "rhs_googles_clear", "rhs_googles_orange"];

//Loadout made by Per_von_Harke

// Zeus
if (_role == "ZEUS") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader / Squad leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = ["ACRE_PRC148"];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_SL_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	[player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM9"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit"];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L110A1"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L7A2"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2_UGL"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM3"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2", "UK3CB_BAF_AT4_CS_AP_Launcher", "UK3CB_BAF_AT4_CS_AT_Launcher"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2", "UK3CB_BAF_Javelin_Slung_Tube", "rhs_weap_fgm148"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2_UGL"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = ["ACRE_PRC148"];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_JTAC_A", "UK3CB_BAF_B_Bergen_TAN_JTAC_H_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Marksman   !not yet finished!
if (_role == "MRK") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Breacher
if (_role == "BRC") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_L85A2", "ACE_VMH3"];
	_availableMagazines = [];
	_availableVests = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM4", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM6", "UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM8"];
	_availableItems = [];
	_availableBackpacks = ["UK3CB_BAF_B_Bergen_TAN_Rifleman_B", "UK3CB_BAF_B_Bergen_TAN_Rifleman_A"];
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

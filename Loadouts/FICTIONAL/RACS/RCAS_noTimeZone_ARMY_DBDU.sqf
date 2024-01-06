params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACRE_PRC343", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "CUP_30Rnd_556x45_Stanag_Tracer_Red", "CUP_30Rnd_556x45_Stanag", "CUP_MAAWS_HEDP_M", "CUP_MAAWS_HEAT_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",   "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_SmokeGreen_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_SmokeRed_M203"];
private _defGrenades = ["CUP_HandGrenade_M67", "SmokeShell", "SmokeShellGreen", "SmokeShellRed", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"];
private _defUniforms = ["CUP_U_I_RACS_Desert_1"];
private _defWeapons = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["CUP_H_LWHv2_desert_comms"];
private _defFacewear = [];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Coyote"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "rhssaf_zrak_rd7j"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Coyote"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Coyote"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = ["CUP_B_AssaultPack_Coyote"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_M249_E2"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Coyote"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AssaultPack_Coyote"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_M240"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Coyote"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AssaultPack_Coyote"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2_GL"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Grenadier_Coyote"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "CUP_launch_M72A6"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Coyote"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "CUP_launch_MAAWS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Coyote"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AssaultPack_Coyote"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "CUP_launch_M47"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Coyote"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

/* Loadout array that's passed back to kosherArsenal */
[
    /* Loadoutfile version */
    "1.3",

    /* Allowed Equipment array */
    [
        (_availableBackpacks + _defBackpacks),
        (_availableVests + _defVests),
        (_availableUniforms + _defUniforms),
        (_availableFacewear + _defFacewear),
        (_defHeadgear + _availableHeadgear),
        (_defAttachments + _availableAttachments),
        (_availableMagazines + _defGrenades + _defMagazines + _availableGrenades),
        (_availableWeapons + _defWeapons),
        (_availableItems + _defItems)
    ]
];
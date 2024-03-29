/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * A norwegian tanker crew
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "rhsusf_acc_compm4", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhsusf_mag_40Rnd_46x30_FMJ", "rhsusf_mag_40Rnd_46x30_AP"];
private _defGrenades = [];
private _defUniforms = ["n_m04_w"];
private _defWeapons = ["rhsusf_weap_MP7A2"];
private _defVests = ["n_m07_coy_crewman"];
private _defBackpacks = [];
private _defHeadgear = ["rhsusf_cvc_green_alt_helmet"];
private _defFacewear = ["rhsusf_oakley_goggles_clr", "rhs_googles_clear"];
private _defAttachments = [];

// Crewman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Tankcommander
if (_condition && _role in ["TC"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
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
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
    _availableBackpacks = ["n_backpack_kitbag_w"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ToolKit"];
    _availableBackpacks = ["B_AssaultPack_cbr"];
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

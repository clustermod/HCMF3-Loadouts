/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * 
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_30Rnd_762x39_AK47_M"];
private _defGrenades = ["rhs_mag_f1", "rhs_mag_rgd5"];
private _defUniforms = ["M93_bdu_B"];
private _defWeapons = [];
private _defVests = ["rhsgref_chicom"];
private _defBackpacks = ["CUP_B_AlicePack_OD"];
private _defHeadgear = ["usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "CUP_H_ChDKZ_Beanie"];
private _defFacewear = ["G_Bandanna_oli"];
private _defAttachments = [];

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_akms", "rhs_weap_akm"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhssaf_zrak_rd7j", "rhs_weap_akms", "rhs_weap_akm"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = ["G_Aviator"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_akms", "rhs_weap_akm"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "kat_larynx", "kat_chestSeal"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW / LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_RPK74"];
    _availableMagazines = ["CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"];
    _availableVests = [];
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
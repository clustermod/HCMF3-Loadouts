/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: cc_core_v6
 * Chernarus tank crew for IFVs and MBTs.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["Armband_Green_medium2_NVG", "Armband_Yellow_medium2_NVG", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["CUP_arifle_AKS74U"];
private _defAttachments = [];
private _defMagazines = ["CUP_30Rnd_545x39_AK74_plum_M"];
private _defGrenades = [];
private _defUniforms = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhs_tsh4_ess_bala", "rhs_tsh4", "rhs_tsh4_ess"];
private _defFacewear = ["G_Bandanna_oli"];

/* Crewman */
if (_condition && _role in ["CRW"]) then {
    _availableUniforms = [];
    _availableWeapons = [];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Tank Commander */
if (_condition && _role in ["TC"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhssaf_zrak_rd7j"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
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
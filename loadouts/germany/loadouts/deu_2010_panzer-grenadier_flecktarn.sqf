/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * Panzergrenadiere are the Mechanized Infantry part of the Bundeswehr. During the time this loadout is in the Panzergrenadiere used the Marder IFV.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "cup_optic_g36dualoptics", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["BWA3_15Rnd_9x19_P8", "BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft", "BWA3_200Rnd_556x45", "BWA3_200Rnd_556x45_Tracer", "CUP_30Rnd_556x45_G36", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36",         "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange"];
private _defUniforms = ["CUP_U_B_GER_Flecktarn_6"];
private _defWeapons = ["BWA3_P8"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["CUP_H_Ger_M92_Cover"];
private _defFacewear = ["BWA3_G_Combat_clear", "BWA3_G_Combat_black"];
private _defAttachments = [];

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36A"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_GER_PVest_Fleck_RFL"];
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
    _availableWeapons = ["CUP_arifle_G36A", "rhsusf_bino_m24"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_GER_PVest_Fleck_TL"];
    _availableItems = ["ACRE_SEM52SL"];
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
    _availableWeapons = ["CUP_arifle_G36A"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_GER_PVest_Fleck_Med"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit","adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
    _availableBackpacks = ["BWA3_Kitbag_Fleck_Medic"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["BWA3_MG4"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_GER_PVest_Fleck_MG"];
    _availableItems = [];
    _availableBackpacks = ["BWA3_Kitbag_Fleck"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["BWA3_MG3"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_GER_PVest_Fleck_MG"];
    _availableItems = [];
    _availableBackpacks = ["BWA3_Kitbag_Fleck"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AG36"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_GER_PVest_Fleck_Gren"];
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
    _availableWeapons = ["CUP_arifle_G36A", "CUP_launch_PzF3"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_GER_PVest_Fleck_RFL"];
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

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["Tier1_250Rnd_762x51_Belt_M80", "CUP_30Rnd_556x45_Stanag", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE"];
private _defGrenades = [];
private _defUniforms = ["rhs_uniform_bdu_erdl"];
private _defWeapons = [];
private _defVests = ["rhsgref_alice_webbing"];
private _defBackpacks = [];
private _defHeadgear = ["rhsgref_helmet_pasgt_erdl"];
private _defFacewear = ["LEN_BCG"];
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
    _availableWeapons = ["CUP_arifle_M16A2"];
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
    _availableWeapons = ["CUP_arifle_M16A2"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope"];
    _availableBackpacks = ["UNS_Alice_MED"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_M60"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = [];
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
    _availableVests = [];
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
    _availableWeapons = ["CUP_arifle_M16A2", "CUP_launch_M72A6_Special", "CUP_launch_M72A6"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = [];
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
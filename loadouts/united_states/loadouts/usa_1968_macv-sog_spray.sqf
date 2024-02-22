params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel","ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["uns_m1911mag", "uns_m60mag", "uns_m45mag_NT", "uns_rpdsogmag", "uns_20Rnd_556x45_Stanag", "uns_1Rnd_AB_M397", "Uns_1Rnd_HE_M381", "Uns_1Rnd_HE_M406", "uns_1Rnd_HEDP_M433", "uns_40mm_green", "uns_40mm_white", "uns_40mm_red"];
private _defGrenades = ["uns_m61gren", "uns_m67gren", "uns_m34gren", "uns_m308gren", "uns_v40gren", "uns_m18red", "uns_m18white","SmokeShellGreen", "SmokeShellBlue"];
private _defUniforms = ["UNS_SOG_BDU_OP", "UNS_SOG_BDU_O"];
private _defWeapons = ["uns_m1911", "uns_m72"];
private _defVests = ["UNS_M1956_S1", "UNS_M1956_S2", "UNS_M1956_S3", "UNS_M1956_S4"];
private _defBackpacks = [];
private _defHeadgear = ["UNS_Boonie_ODP", "UNS_Boonie_OD2", "UNS_Bandana_OD3"];
private _defFacewear = ["UNS_Scarf_OD"];
private _defAttachments = [];

//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
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
    _availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "kat_larynx", "kat_chestSeal"];
    _availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["uns_rpdsog", "uns_m60shorty"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["uns_xm177e1_xm148"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Radioman - RTO
if (_condition && _role in ["RTO"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACRE_PRC77"];
    _availableBackpacks = ["uns_simc_rajio_4"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Zeus
if (_condition && _role in ["ZEUS"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACRE_PRC77"];
    _availableBackpacks = ["uns_simc_rajio_4"];
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

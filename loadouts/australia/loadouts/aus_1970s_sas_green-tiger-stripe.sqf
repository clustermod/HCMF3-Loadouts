params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["uns_binocular_army", "rhsusf_weap_m1911a1"];
private _defAttachments = [];
private _defMagazines = ["rhsusf_mag_7x45acp_MHP", "uns_l1a1mag_NT", "uns_l1a1mag", "uns_l1a1mag_T", "Uns_1Rnd_HE_M406", "uns_1Rnd_HEDP_M433", "Uns_1Rnd_HE_M381", "uns_1Rnd_AB_M397"];
private _defGrenades = [];
private _defUniforms = ["UNS_SAS_BDU_T"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["uns_sas_booniehat_tiger4", "uns_sas_booniehat_tiger2", "uns_sas_headband_tiger"];
private _defFacewear = ["G_Nomex_2_lang", "G_simc_US_Bandoleer_556", "G_simc_US_Bandoleer_556_low", "G_simc_US_Bandoleer_4cm", "G_simc_US_Bandoleer_556_fore", "G_Nomex_1_lang_cut"];

//
// Made for Arma 3 Virtual MILSIM
//
//
//

// Rifleman
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["uns_l2a1_shorty", "uns_l1a1"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["V_Simc_Alice", "V_Simc_Alice_ligt", "V_Simc_Alice_sekop", "V_Simc_Alice_mc_alt", "V_Simc_Alice_mc_sekop", "V_Simc_Alice_mc_M56", "V_Simc_Alice_mc_45", "V_Simc_Alice_mc_m56_45"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_pack_frem_7"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Team leader
if (_condition && _role in ["SL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["uns_l2a1_shorty", "uns_l1a1"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_rajio_3_alt"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Medic
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["uns_l2a1_shorty", "uns_l1a1"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope"];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_pack_frem_med5", "B_simc_pack_frem_med3"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// MMG
if (_condition && _role in ["MMG"]) then {
    _availableUniforms = [];
    _availableWeapons = [];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_pack_frem_9"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then {
    _availableUniforms = [];
    _availableWeapons = ["uns_l1a1gl"];
    _availableAttachments = ["uns_b_mas49"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_pack_frem_7"];
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

/*
 * Author: Eric
 * 1990s - 2015 Japanese Ground Self Defence Forces in Jietai
 * Uses the FAL OSW as a stand in for the Howa Type 89.
 * Uses the P320 as a stand-in for the mineba p9 (JGSDF model P220)
 *
 * cc_core_v6
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACRE_PRC343", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = [];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "ACE_M14", "Chemlight_blue", "Chemlight_green", "ACE_Chemlight_IR", "Chemlight_red", "Chemlight_yellow"];
private _defUniforms = ["U_cca_jp_type3_jietai"];
private _defVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Grenadier_Olive", "CUP_V_B_Interceptor_Base_Olive"];
private _defBackpacks = [];
private _defHeadgear = ["H_cca_jp_type88_jietai", "H_cca_jp_type88_jietai_b", "H_cca_jp_type88_jietai_b_SWDG", "H_cca_jp_type88_jietai_SWDG_low_b", "H_cca_jp_type88_jietai_scrim_alt", "H_cca_jp_type88_jietai_scrim_alt_SWDG", "H_cca_jp_type88_jietai_SWDG", "H_cca_jp_type88_jietai_SWDG_low"];
private _defFacewear = ["G_SWDG", "G_SWDG_low", "UK3CB_G_Gloves_Black", "CUP_RUS_Balaclava_rgr", "BWA3_G_Combat_black", "BWA3_G_Combat_clear", "AD_Petzl_Neck_b1", "CUP_G_PMC_RadioHeadset", "CUP_G_PMC_RadioHeadset_Glasses", "CUP_G_PMC_RadioHeadset_Glasses_Dark", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_FNFAL_OSW"];
    _availableAttachments = [];
    _availableMagazines = ["UK3CB_FNFAL_30rnd_762x51"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["CUP_B_Kombat_Olive"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["PL", "SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_FNFAL_OSW", "Tier1_P320", "rhsusf_bino_m24", "uns_binocular_navy"];
    _availableAttachments = [];
    _availableMagazines = ["UK3CB_FNFAL_30rnd_762x51", "Tier1_17Rnd_9x19_P320_FMJ"];
    _availableVests = [];
    _availableItems = ["ACRE_PRC152"];
    _availableGrenades = ["rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow"];
    _availableBackpacks = ["CUP_B_Kombat_Radio_Olive"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    [_unit, "ace_medical_medicclass", 2] call CBA_fnc_setVarNet;
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_FNFAL_OSW"];
    _availableAttachments = [];
    _availableMagazines = ["UK3CB_FNFAL_30rnd_762x51"];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["CUP_B_Kombat_Olive"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_M249_E1"];
    _availableAttachments = [];
    _availableMagazines = ["rhsusf_200rnd_556x45_mixed_box"];
    _availableVests = [];
    _availableItems = ["ACE_SpareBarrel"];
    _availableGrenades = [];
    _availableBackpacks = ["CUP_B_Kombat_Olive"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Assistant Autorifleman */
if (_condition && _role in ["AAR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_FNFAL_OSW"];
    _availableAttachments = [];
    _availableMagazines = ["UK3CB_FNFAL_30rnd_762x51", "rhsusf_200rnd_556x45_mixed_box"];
    _availableVests = [];
    _availableItems = ["ACE_SpareBarrel"];
    _availableGrenades = [];
    _availableBackpacks = ["CUP_B_Kombat_Olive"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Anti-Tank, Light */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_FNFAL_OSW"];
    _availableAttachments = [];
    _availableMagazines = ["UK3CB_FNFAL_30rnd_762x51"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["CUP_B_Kombat_Olive"];
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

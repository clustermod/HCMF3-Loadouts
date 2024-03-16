/*
 * Author: Eric
 * 2004 Lithuanian Army in Lithuanian M05 (Woodland) Camo
 *
 * cc_core_v5
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["CUP_NVG_PVS14", "acex_intelitems_notepad", "ACRE_SEM52SL", "ACE_WaterBottle", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = [];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc"];
private _defUniforms = ["U_cca_lt_gsu", "U_cca_lt_gsu_roll"];
private _defVests = ["CUP_V_B_Interceptor_Rifleman_Olive"];
private _defBackpacks = [];
private _defHeadgear = ["H_cca_lt_pasgt_m05", "H_cca_lt_pasgt_m05_b", "H_cca_lt_pasgt_m05_b_SWDG", "H_cca_lt_pasgt_m05_SWDG_low_b", "H_cca_lt_pasgt_m05_scrim_alt", "H_cca_lt_pasgt_m05_scrim_alt_SWDG", "H_cca_lt_pasgt_m05_scrim", "H_cca_lt_pasgt_m05_scrim_SWDG", "H_cca_lt_pasgt_m05_SWDG", "H_cca_lt_pasgt_m05_SWDG_low"];
private _defFacewear = ["G_SWDG", "G_SWDG_low", "UK3CB_G_Gloves_Black", "CUP_RUS_Balaclava_rgr", "BWA3_G_Combat_black", "BWA3_G_Combat_clear", "AD_Petzl_Neck_b1", "CUP_G_PMC_RadioHeadset", "CUP_G_PMC_RadioHeadset_Glasses", "CUP_G_PMC_RadioHeadset_Glasses_Dark", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["UK3CB_G3A3"];
    _availableAttachments = ["uk3cb_optic_STANAGZF_G3", "uk3cb_optic_STANAGZF2D_G3"];
    _availableMagazines = ["UK3CB_G3_20rnd_762x51_RT"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["PL", "SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhsusf_bino_m24", "UK3CB_G3A3"];
    _availableAttachments = ["uk3cb_optic_STANAGZF_G3", "uk3cb_optic_STANAGZF2D_G3"];
    _availableMagazines = ["UK3CB_G3_20rnd_762x51_RT"];
    _availableVests = [];
    _availableItems = ["ACE_PlottingBoard", "ACE_DAGR"];
    _availableGrenades = ["rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow"];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["UK3CB_G3A3"];
    _availableAttachments = ["uk3cb_optic_STANAGZF_G3", "uk3cb_optic_STANAGZF2D_G3"];
    _availableMagazines = ["UK3CB_G3_20rnd_762x51_RT"];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit", "ACE_suture", "kat_pocketBVM", "kat_naloxone", "kat_CarbonateItem", "ACE_bodyBag"];
    _availableGrenades = [];
    _availableBackpacks = ["UK3CB_B_US_Medic_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_fnmag"];
    _availableAttachments = [];
    _availableMagazines = ["rhsusf_100Rnd_762x51_m62_tracer", "Tier1_100Rnd_762x51_Belt_M62_Tracer", "Tier1_250Rnd_762x51_Belt_M62_Tracer"];
    _availableVests = [];
    _availableItems = ["ACE_SpareBarrel"];
    _availableGrenades = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Assistant Autorifleman */
if (_condition && _role in ["AAR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["UK3CB_G3A3"];
    _availableAttachments = ["uk3cb_optic_STANAGZF_G3", "uk3cb_optic_STANAGZF2D_G3"];
    _availableMagazines = ["UK3CB_G3_20rnd_762x51_RT", "rhsusf_100Rnd_762x51_m62_tracer", "Tier1_100Rnd_762x51_Belt_M62_Tracer", "Tier1_250Rnd_762x51_Belt_M62_Tracer"];
    _availableVests = [];
    _availableItems = ["ACE_SpareBarrel"];
    _availableGrenades = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Anti-Tank, Light */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["UK3CB_G3A3", "CUP_launch_M72A6"];
    _availableAttachments = ["uk3cb_optic_STANAGZF_G3", "uk3cb_optic_STANAGZF2D_G3"];
    _availableMagazines = ["UK3CB_G3_20rnd_762x51_RT"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
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

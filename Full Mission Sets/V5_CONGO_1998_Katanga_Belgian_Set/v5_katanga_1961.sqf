/*
 * Author: [Author]
 * [Description]
 *
 * [Modpack Version]
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = ["rhsgref_acc_l1a1_l2a2"];
private _defMagazines = [];
private _defGrenades = ["uns_mk2gren"];
private _defUniforms = ["U_cca_belg_smock"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["H_Simc_Boon_green_5", "H_Simc_Boon_green_6", "SNS_M51", "UK3CB_ANA_B_H_Beret_MAR"];
private _defFacewear = ["G_Anduk_2", "G_Anduk_1", "UNS_Band_H", "UNS_Band_L", "G_Aviator"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
    _availableVests = ["V_sns_m58_p37_bare", "V_sns_m58_p37", "V_sns_m58_bare"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_US_Bandoleer_556_3", "B_simc_US_Bandoleer_556_1", "B_simc_US_Bandoleer_556_fore", "B_simc_US_Bandoleer_556_doppel_1", "B_simc_USMC65_M41", "B_simc_USMC65_M41_flat"];
    _availableHeadgear = [];
    _availableFacewear = ["G_simc_US_Bandoleer_556_right", "G_simc_US_Bandoleer_556_fore", "G_simc_US_Bandoleer_556_left"];
};

/* Squad Leader and Platoon Leader */
if (_condition && _role in ["SL", "PL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49", "CUP_hgun_Browning_HP", "rhssaf_zrak_rd7j"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT", "CUP_13Rnd_9x19_Browning_HP"];
    _availableVests = ["V_sns_m58_p37_bare", "V_sns_m58_p37", "V_sns_m58_bare"];
    _availableItems = ["ACRE_PRC77", "ACRE_SEM52SL", "ACE_MapTools", "ItemMap"];
    _availableGrenades = ["rhs_mag_m18_purple", "rhs_mag_an_m8hc"];
    _availableBackpacks = ["B_simc_MC_rajio_base", "B_simc_rajio_2", "B_simc_rajio_base"];
    _availableHeadgear = [];
    _availableFacewear = ["G_simc_US_Bandoleer_556_right", "G_simc_US_Bandoleer_556_fore", "G_simc_US_Bandoleer_556_left"];
};

/* Fireteam Leader */
if (_condition && _role in ["FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49", "CUP_hgun_Browning_HP", "rhssaf_zrak_rd7j"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT", "CUP_13Rnd_9x19_Browning_HP"];
    _availableVests = ["V_sns_m58_p37_bare", "V_sns_m58_p37", "V_sns_m58_bare"];
    _availableItems = ["ACRE_PRC77", "ACRE_SEM52SL", "ACE_MapTools", "ItemMap"];
    _availableGrenades = ["rhs_mag_m18_purple", "rhs_mag_an_m8hc"];
    _availableBackpacks = ["B_simc_MC_rajio_base", "B_simc_rajio_2", "B_simc_rajio_base"];
    _availableHeadgear = [];
    _availableFacewear = ["G_simc_US_Bandoleer_556_right", "G_simc_US_Bandoleer_556_fore", "G_simc_US_Bandoleer_556_left"];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
    _availableVests = ["V_sns_m58_p37_bare", "V_sns_m58_p37", "V_sns_m58_bare"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_pack_frem_med5"];
    _availableHeadgear = [];
    _availableFacewear = ["G_simc_US_Bandoleer_556_right", "G_simc_US_Bandoleer_556_fore", "G_simc_US_Bandoleer_556_left"];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_FNMAG", "uns_m1919a6", "rhssaf_zrak_rd7j"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", "uns_100Rnd_m1919"];
    _availableVests = ["V_sns_m58_p37_bare", "V_sns_m58_p37", "V_sns_m58_bare"];
    _availableItems = ["ACE_SpareBarrel_Item"];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_USMC65_M41", "B_simc_USMC65_M41_flat", "B_simc_US_Bandoleer_60_L", "B_simc_US_Bandoleer_60_R", "B_simc_US_Bandoleer_60"];
    _availableHeadgear = [];
    _availableFacewear = ["G_simc_US_Bandoleer_60_R", "G_simc_US_Bandoleer_60_L", "G_simc_US_Bandoleer_60"];
};

/* Assistant Autorifleman */
if (_condition && _role in ["AAR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", "uns_100Rnd_m1919"];
    _availableVests = ["V_sns_m58_p37_bare", "V_sns_m58_p37", "V_sns_m58_bare"];
    _availableItems = ["ACE_SpareBarrel_Item"];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_USMC65_M41", "B_simc_USMC65_M41_flat", "B_simc_US_Bandoleer_60_L", "B_simc_US_Bandoleer_60_R", "B_simc_US_Bandoleer_60"];
    _availableHeadgear = [];
    _availableFacewear = ["G_simc_US_Bandoleer_60_R", "G_simc_US_Bandoleer_60_L", "G_simc_US_Bandoleer_60"];
};

/* Anti-Tank, Light */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49", "uns_m20_bazooka"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT", "uns_M28A2_mag", "uns_M30_smoke_mag"];
    _availableVests = ["V_sns_m58_p37_bare", "V_sns_m58_p37", "V_sns_m58_bare"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_packboard_mortar_1", "B_simc_USMC65_M41_mortar", "B_simc_MC_packboard_3"];
    _availableHeadgear = [];
    _availableFacewear = ["G_simc_US_Bandoleer_556_right", "G_simc_US_Bandoleer_556_fore", "G_simc_US_Bandoleer_556_left"];
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

/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Galil
 * CC Modpack Version: V5 
 * [Depiction of Israeli ground forces during the Siege of Gaze that started on the 7th of October 2023. Limited by available assets in the CC V5 modpack.]
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie", "rhsusf_Rhino", "ACRE_PRC152", "ItemMicroDAGR"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = [];
private _defGrenades = ["rhs_mag_an_m14_th3", "rhs_mag_an_m8hc", "rhs_mag_m67", "rhs_mag_m7a3_cs", "rhs_mag_mk84"];
private _defUniforms = ["CUP_U_CRYE_G3C_RGR", "CUP_U_CRYE_RGR_Full", "CUP_U_CRYE_RGR_Roll"];
private _defVests = [];
private _defBackpacks = ["G3_FanBag_R_v2_2", "G3_FanBag_R_v2_3", "G3_RangerBelt_v5_1"];
private _defHeadgear = ["UK3CB_TKA_O_H_6b7_1m_bala2_DES", "rhs_6b7_1m_olive"];
private _defFacewear = ["CUP_G_GPS", "CUP_G_PMC_RadioHeadset", "CUP_G_WatchGPSCombo", "rhsusf_shemagh_grn", "rhsusf_shemagh_od", "rhsusf_shemagh_white", "rhs_googles_black", "rhs_googles_clear"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Fort224", "CUP_arifle_Fort224_Grippod"];
    _availableAttachments = ["cup_optic_mepro", "cup_optic_mars"];
    _availableMagazines = ["CUP_30Rnd_545x39_Fort224_M"];
    _availableVests = ["INS_R_MBAV_Ranger_v6_1", "INS_R_MBAV_Ranger_v10_1", "INS_G_MBAV_Ranger_v2_1", "M_MAR_CIRAS_Ranger_v1_1", "M_MAR_CIRAS_Ranger_v2_1", "M_MAR_CIRAS_Ranger_v3_1", "M_MAR_CIRAS_Ranger_v4_1", "G_AFG_MBAV_Ranger_v1_2", "G_AFG_MBAV_Ranger_v10_2", "R_MBAV_Ranger_v4_1"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle_m203"];
    _availableAttachments = ["cup_optic_mepro", "cup_optic_mars"];
    _availableMagazines = ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "rhs_mag_m4009"];
    _availableVests = ["R_MBAV_Ranger_v9_1", "G_MBAV_Ranger_v1_1", "G_AFG_MBAV_Ranger_v8_2", "G_AFG_MBAV_Ranger_v6_2", "INS_G_MBAV_Ranger_v1_1"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Fort224", "CUP_arifle_Fort224_Grippod"];
    _availableAttachments = ["cup_optic_mepro", "cup_optic_mars"];
    _availableMagazines = ["CUP_30Rnd_545x39_Fort224_M"];
    _availableVests = ["INS_R_MBAV_Ranger_v6_1", "INS_R_MBAV_Ranger_v10_1", "INS_G_MBAV_Ranger_v2_1", "M_MAR_CIRAS_Ranger_v1_1", "M_MAR_CIRAS_Ranger_v2_1", "M_MAR_CIRAS_Ranger_v3_1", "M_MAR_CIRAS_Ranger_v4_1", "G_AFG_MBAV_Ranger_v1_2", "G_AFG_MBAV_Ranger_v10_2", "R_MBAV_Ranger_v4_1"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["LMG_Zafir_F"];
    _availableAttachments = [];
    _availableMagazines = ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"];
    _availableVests = ["INS_G_MBAV_Ranger_v3_1", "G_MBAV_Ranger_v6_1", "R_MBAV_Ranger_v8_1"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Assistant Autorifleman */
if (_condition && _role in ["AAR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Fort224", "CUP_arifle_Fort224_Grippod"];
    _availableAttachments = ["cup_optic_mepro", "cup_optic_mars"];
    _availableMagazines = ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer", "CUP_30Rnd_545x39_Fort224_M"];
    _availableVests = ["INS_R_MBAV_Ranger_v6_1", "INS_R_MBAV_Ranger_v10_1", "INS_G_MBAV_Ranger_v2_1", "M_MAR_CIRAS_Ranger_v1_1", "M_MAR_CIRAS_Ranger_v2_1", "M_MAR_CIRAS_Ranger_v3_1", "M_MAR_CIRAS_Ranger_v4_1", "G_AFG_MBAV_Ranger_v1_2", "G_AFG_MBAV_Ranger_v10_2", "R_MBAV_Ranger_v4_1"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Anti-Tank, Light */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Fort224", "CUP_arifle_Fort224_Grippod", "rhs_weap_m72a7"];
    _availableAttachments = ["cup_optic_mepro", "cup_optic_mars"];
    _availableMagazines = ["CUP_30Rnd_545x39_Fort224_M"];
    _availableVests = ["INS_R_MBAV_Ranger_v6_1", "INS_R_MBAV_Ranger_v10_1", "INS_G_MBAV_Ranger_v2_1", "M_MAR_CIRAS_Ranger_v1_1", "M_MAR_CIRAS_Ranger_v2_1", "M_MAR_CIRAS_Ranger_v3_1", "M_MAR_CIRAS_Ranger_v4_1", "G_AFG_MBAV_Ranger_v1_2", "G_AFG_MBAV_Ranger_v10_2", "R_MBAV_Ranger_v4_1"];
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

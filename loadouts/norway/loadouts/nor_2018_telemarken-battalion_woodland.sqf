/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * Norwegian mechanized infantry. You can replace the PEQ2s with PEQ15s if you want to get more newer loadouts for Telemarken Battalion.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACRE_PRC343", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "rhsusf_ANPVS_15", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_200rnd_556x45_mixed_box", "rhsusf_200Rnd_556x45_box", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "CUP_20Rnd_762x51_HK417", "CUP_20Rnd_762x51_HK417_Camo_Wood"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = [];
private _defWeapons = ["rhsusf_bino_m24", "CUP_hgun_Glock17_blk"];
private _defVests = [];
private _defBackpacks = ["B_AssaultPack_cbr"];
private _defHeadgear = ["n_opscore_w_cover_pelt_nsw", "n_opscore_w_cover_pelt", "n_opscore_ut_pelt_nsw", "n_opscore_ut_pelt"];
private _defFacewear = ["n_facemask_w", "rhs_googles_clear", "rhs_googles_black", "CUP_G_ESS_BLK", "G_Bandanna_oli", "CUP_G_WristWatch"];
private _defAttachments = [];

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_light"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black", "rhsusf_bino_lrf_Vector21"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_squadleader"];
    _availableItems = ["ACE_microDAGR", "ACRE_PRC152", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    [_unit, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_corpsman"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
    _availableBackpacks = ["B_Kitbag_cbr", "n_backpack_kitbag_w"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_minimi_para_railed"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_mg"];
    _availableItems = ["rhsusf_acc_su230", "cup_acc_anpeq_2_grey", "rhsusf_acc_saw_lw_bipod", "rhsusf_acc_compm4"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_m320_black"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_light"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Designated Marksman
if (_condition && _role in ["DMR"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_HK417_20", "rhs_weap_M107"];
    _availableMagazines = ["rhsusf_mag_10Rnd_STD_50BMG_mk211", "ACE_5Rnd_127x99_API_Mag", "ACE_5Rnd_127x99_AMAX_Mag", "ACE_5Rnd_127x99_Mag"];
    _availableVests = ["n_m07_coy_marksman"];
    _availableItems = ["ACE_Kestrel4500", "ACE_RangeCard", "rhsusf_acc_harris_bipod", "cup_optic_leupoldmk4_10x40_lrt_woodland", "cup_optic_leupoldmk4", "rhsusf_acc_nxs_3515x50f1_h58_sun", "rhsusf_acc_nxs_3515x50f1_md_sun", "rhsusf_acc_nxs_5522x56_md_sun", "rhsusf_acc_nxs_5522x56_md"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black", "rhs_weap_m72a7"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_light"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_unit in ["MAT"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black", "launch_MRAWS_green_F"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_light"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black", "UK3CB_BAF_Javelin_CLU", "UK3CB_BAF_Javelin_Launcher"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_light"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// EOD
if (_condition && _role in ["EOD"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black"];
    _availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
    _availableVests = ["n_m07_coy_light"];
    _availableItems = ["ACE_Clacker", "ACE_DefusalKit", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};


// Engineer
if (_condition && _role in ["ENG"]) then
{
    [_unit, "n_tmbn1"] call BIS_fnc_setUnitInsignia;
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black"];
    _availableMagazines = [];
    _availableVests = ["n_m07_coy_light"];
    _availableItems = ["ToolKit", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top"];
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

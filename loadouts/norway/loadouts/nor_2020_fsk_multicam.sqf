/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * A norwegian sof team in multicam.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_microDAGR", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "rhsusf_ANPVS_15", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["n_g3_mc"];
private _defWeapons = ["CUP_hgun_Glock17_blk", "rhsusf_bino_m24"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["n_opscore_ut_pelt_nsw", "n_opscore_ut_pelt"];
private _defFacewear = [];
private _defAttachments = [];

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["rhsusf_falconii_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhsusf_bino_lrf_Vector21", "n_hk416n_black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communications_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_tl_mc", "CUP_V_JPC_tlbelt_mc"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["rhsusf_falconii_mc"];
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
    _availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_medical_mc"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["n_backpack_kitbag_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_minimi_para_railed"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
    _availableItems = ["rhsusf_acc_su230", "cup_acc_anpeq_2_grey", "rhsusf_acc_saw_lw_bipod", "rhsusf_acc_compm4"];
    _availableBackpacks = ["rhsusf_falconii_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
    _availableItems = [];
    _availableBackpacks = ["rhsusf_falconii_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_m320_black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_weaponsbelt_mc"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["rhsusf_falconii_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m72a7", "n_hk416n_m320_black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["rhsusf_falconii_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["launch_MRAWS_olive_F", "n_hk416n_m320_black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["n_backpack_kitbag_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["UK3CB_BAF_Javelin_Slung_Tube", "UK3CB_BAF_Javelin_CLU", "n_hk416n_m320_black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
    _availableItems = ["rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["rhsusf_falconii_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// EOD
if (_condition && _role in ["EOD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_m320_black"];
    _availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
    _availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
    _availableItems = ["ACE_Clacker", "ACE_DefusalKit", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["rhsusf_falconii_mc"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};


// Engineer
if (_condition && _role in ["ENG"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["n_hk416n_m320_black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_weapons_mc"];
    _availableItems = ["ToolKit", "rhsusf_acc_su230", "sma_elcan_specter","rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_grip2_wd", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_black_top"];
    _availableBackpacks = ["rhsusf_falconii_mc"];
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

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_CableTie", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "age_pk1", "age_pk2", "age_pk0", "AGE_NVG", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_100Rnd_762x54mmR_7N26", "rhs_100Rnd_762x54mmR_green", "rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_tracer", "rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_AK_plum_green", ""];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_f1"];
private _defUniforms = ["rhs_uniform_g3_tan"];
private _defWeapons = [];
private _defVests = ["AGE_TV110_AK_Holster_Coyote"];
private _defBackpacks = [];
private _defHeadgear = ["CUP_H_RUS_6B47_headset_desert"];
private _defFacewear = ["G_SWDG", "CUP_G_Tan_Scarf_Shades_GPSCombo_Beard_Blonde", "CUP_G_Tan_Scarf_Shades_GPSCombo_Beard", "CUP_G_WristWatch", "CUP_RUS_Balaclava_tan"];
private _defAttachments = [];


// Is supposed to be some PMC of Russian decent operating in Syria and is completely fictional
// Made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak103_zenitco01_b33"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["rhs_acc_dtk2", "sma_eotech552", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_xps3", "age_inforce_white", "rhs_acc_2dpzenit", "rhs_acc_dtk1", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_tan"];
    _availableBackpacks = ["tgc_hpc_backpanel_tan"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhssaf_zrak_rd7j", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak103_zenitco01_b33"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["rhs_acc_dtk2", "sma_eotech552", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_xps3", "age_inforce_white", "rhs_acc_2dpzenit", "rhs_acc_dtk1", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_tan"];
    _availableBackpacks = ["tgc_hpc_backpanel_tan"];
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
    _availableWeapons = ["rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak103_zenitco01_b33"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhs_acc_dtk2", "sma_eotech552", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_xps3", "age_inforce_white", "rhs_acc_2dpzenit", "rhs_acc_dtk1", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_tan"];
    _availableBackpacks = ["TAC_MTAP_CY2"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Machinegunner
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_Pecheneg_top_rail_B50_vfg"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["sma_eotech552", "rhs_acc_2dpzenit_ris"];
    _availableBackpacks = ["tgc_hpc_backpanel_tan"];
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
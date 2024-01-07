params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "rhsusf_ANPVS_15", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_12Rnd_45ACP_mk23", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_CRYE_G3C_M81", "CUP_U_CRYE_G3C_M81_RGR"];
private _defWeapons = ["rhsusf_bino_m24", "CUP_hgun_Mk23"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt_nsw"];
private _defFacewear = ["CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk", "G_AirPurifyingRespirator_02_black_F", "CUP_G_Beard_Shades_Blonde", "CUP_G_Beard_Shades_Black", "CUP_G_Tan_Scarf_Shades_GPSCombo_Beard", "CUP_G_Tan_Scarf_Shades_GPSCombo_Beard_Blonde", "CUP_G_Grn_Scarf_Shades_GPSCombo_Beard_Blonde", "CUP_G_Grn_Scarf_Shades_GPSCombo_Beard", "CUP_G_WatchGPSCombo", "TAC_SG_SK"];
private _defAttachments = [];

// Completely fictional unit.
// JSOK = Joint Special Operations Kommando
//

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_mk18", "rhs_weap_mk18_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr"];
    _availableItems = ["rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_black", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_blk", "rhsusf_acc_kac_grip",  "rhsusf_acc_grip2", "sma_eotech552", "sma_eotech552_3xdown", "rhsusf_acc_eotech", "rhsusf_acc_g33_xps3", "rhsusf_acc_su230a", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech_xps3", "cup_optic_sb_11_4x20_pm", "cup_acc_anpeq_15_top_flashlight_black_l"];
    _availableBackpacks = ["tgc_hpc_backpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_mk18", "rhs_weap_mk18_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communicationsbelt_rngr"];
    _availableItems = ["ItemAndroid"];
    _availableBackpacks = ["tgc_hpc_backpanel"];
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
    _availableWeapons = ["rhs_weap_m4a1_blockII", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_mk18", "rhs_weap_mk18_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_medicalbelt_rngr"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
    _availableBackpacks = ["CUP_B_Kombat_Olive"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m249_pip_S_para"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr"];
    _availableItems = ["rhsusf_acc_saw_lw_bipod", "rhsusf_acc_sfmb556", "sma_eotech552", "rhsusf_acc_su230a", "cup_acc_anpeq_15_black"];
    _availableBackpacks = ["tgc_hpc_backpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_mk18_m320", "rhs_weap_m4a1_blockII_M203"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_weaponsbelt_rngr"];
    _availableItems = [];
    _availableBackpacks = ["tgc_hpc_backpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_mk18", "rhs_weap_mk18_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr"];
    _availableItems = [];
    _availableBackpacks = ["tgc_hpc_backpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_mk18", "rhs_weap_mk18_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr"];
    _availableItems = [];
    _availableBackpacks = ["tgc_hpc_backpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Explosive Specialist
if (_condition && _role in ["ESP"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_mk18", "rhs_weap_mk18_KAC"];
    _availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr"];
    _availableItems = ["ACE_Clacker", "ACE_DefusalKit"];
    _availableBackpacks = ["tgc_hpc_backpanel"];
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
    _availableWeapons = ["rhs_weap_m4a1_blockII", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_mk18", "rhs_weap_mk18_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr"];
    _availableItems = ["ToolKit"];
    _availableBackpacks = ["tgc_hpc_backpanel"];
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
/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * The KSK or Kommando Spezialkräfte is the most elite unit of the German Bundeswehr. They specialise in operations behind enemy lines, hostage rescues and point raids. 
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_CableTie", "ACE_microDAGR", "ItemMicroDAGR", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACRE_PRC152", "ACE_wirecutter", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft", "BWA3_120Rnd_762x51", "BWA3_120Rnd_762x51_Tracer", "BWA3_15Rnd_9x19_P8", "CUP_30Rnd_556x45_G36", "CUP_30Rnd_TE1_Green_Tracer_556x45_G36", "rhssaf_30rnd_556x45_MDIM_G36", "CUP_20Rnd_762x51_HK417", "CUP_20Rnd_TE1_Green_Tracer_762x51_HK417", "CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "CUP_17Rnd_9x19_glock17", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "ACE_40mm_Flare_white"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_CRYE_MCAM_NP2_Full"];
private _defWeapons = ["BWA3_P8"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = ["rhs_googles_black", "rhs_googles_orange", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
private _defAttachments = [];

//Loadout made by Per_von_Harke

// Zeus
if (_condition && _role in ["ZEUS"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_tlbelt_mc", "CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_tl_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Team leader / Squad leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_tlbelt_mc", "CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_tl_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["tgc_tssi_m9_hpc"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["hlc_rifle_g3sg1"];
    _availableMagazines = ["hlc_50rnd_762x51_MDIM_G3", "hlc_50rnd_762x51_M_G3"];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = [];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["BWA3_MG5_tan"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["bwa3_optic_zo4x30i_rsas_sand", "cup_acc_anpeq_15"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36K_RIS_AG36"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_weapons_mc", "CUP_V_CPC_weaponsbelt_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "BWA3_RGW90_Loaded"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "CUP_launch_PzF3", "CUP_launch_HCPF3", "CUP_launch_BF3"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["ToolKit", "rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// JTAC
if (_condition && _role in ["JTAC"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "rhs_weap_M320"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_weapons_mc", "CUP_V_CPC_weaponsbelt_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Designated Marksman
if (_condition && _role in ["DMR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_HK417_20", "CUP_arifle_HK417_20_Wood", "CUP_srifle_G22_blk", "rhs_weap_M107", "rhs_weap_M107_w", "CUP_arifle_HK417_20_Desert"];
    _availableMagazines = ["rhsusf_5Rnd_300winmag_xm2010", "CUP_5Rnd_762x67_G22",             "rhsusf_mag_10Rnd_STD_50BMG_mk211", "rhsusf_mag_10Rnd_STD_50BMG_M33", "ACE_5Rnd_127x99_API_Mag", "ACE_5Rnd_127x99_AMAX_Mag", "ACE_5Rnd_127x99_Mag"];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["rhsusf_acc_aac_762sd_silencer", "cup_bipod_harris_1a2_l_blk", "cup_optic_sb_11_4x20_pm", "cup_acc_anpeq_15", "cup_acc_anpeq_15_od", "rksl_optic_pmii_525", "rksl_optic_pmii_525_wdl", "cup_optic_sb_11_4x20_pm_tan",          "cup_muzzle_snds_awm", "cup_bipod_vltor_modpod_black", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_premier_low",       "ACE_SpottingScope", "ACE_Tripod", "ACE_Kestrel4500", "ACE_ATragMX"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam", "CUP_H_Ger_Boonie2_Flecktarn", "usm_bdu_boonie_odg"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};


// Breacher
if (_condition && _role in ["BRC"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "CUP_sgun_M1014_Entry"];
    _availableMagazines = ["rhsusf_5Rnd_00Buck", "rhsusf_5Rnd_Slug"];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// EOD
if (_condition && _role in ["EOD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "ACE_VMM3"];
    _availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["ACE_DefusalKit", "ACE_Clacker",               "rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Explosive Specialist
if (_condition && _role in ["ESP"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
    _availableMagazines = ["rhs_ec400_mag", "rhs_ec200_mag", "rhs_ec75_mag", "rhsusf_m112x4_mag", "rhsusf_m112_mag", "rhsusf_mine_m14_mag", "rhs_mine_M19_mag", "CUP_TimeBomb_M", "CUP_PipeBomb_M"];
    _availableVests = ["CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_lightbelt_mc"];
    _availableItems = ["ACE_Clacker", "rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des", "rhsusf_acc_eotech", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
    _availableBackpacks = ["B_AssaultPack_mcamo"];
    _availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_cam"];
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

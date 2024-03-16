/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * Fallschirmjäger are German paratroopers.
 * The KSK or Kommando Spezialkräfte is the most elite unit of the German Bundeswehr. They specialise in operations behind enemy lines, hostage rescues and point raids.
 * This loadout also includes loadouts for aircrews. The KSK does have their own SOF aviation companies.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "rhsusf_acc_ardec_m240", "ACRE_SEM52SL", "ACE_wirecutter", "ACE_adenosine", "ACE_CableTie","ACE_DefusalKit","ACE_SpraypaintBlue", "ItemcTabHCam","ACE_EntrenchingTool", "ACE_IR_Strobe_Item", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_microDAGR"];
private _defMagazines = ["BWA3_15Rnd_9x19_P8","hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_M_SAW", "hlc_200rnd_556x45_Mdim_SAW", "hlc_200rnd_556x45_T_SAW", "hlc_50rnd_762x51_MDIM_G3", "hlc_50rnd_762x51_M_G3",                         "murshun_cigs_matches", "1Rnd_HE_Grenade_shell", "CUP_1Rnd_HEDP_M203", "CUP_FlareWhite_M203", "CUP_1Rnd_StarFlare_White_M203", "CUP_FlareRed_M203", "CUP_1Rnd_StarCluster_Red_M203", "rhs_mag_M433_HEDP", "CUP_1Rnd_StarFlare_Red_M203", "CUP_1Rnd_SmokeRed_M203", "rhs_mag_m4009", "murshun_cigs_cigpack", "CUP_30Rnd_556x45_G36_camo", "CUP_30Rnd_556x45_G36", "30Rnd_9x21_Mag", "16Rnd_9x21_Mag"];
private _defGrenades = ["ACE_M84","Chemlight_blue","Chemlight_green","ACE_Chemlight_IR","Chemlight_red", "CUP_HandGrenade_M67","SmokeShell","SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"];
private _defUniforms = [];
private _defWeapons = ["BWA3_P8", "ACE_Vector", "rhsusf_bino_lrf_Vector21"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];

// Zeus
if (_condition && _role in ["ZEUS"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ACRE_SEM70", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Team leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ACRE_SEM70", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel" ];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["rhssaf_kitbag_smb"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// JTAC
if (_condition && _role in ["JTAC"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo", "rhs_weap_M320"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ACRE_SEM70", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["rhssaf_kitbag_smb", "tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Marksman
if (_condition && _role in ["MRK"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_srifle_G22_blk", "CUP_srifle_G22_des", "hlc_rifle_psg1", "CUP_arifle_HK417_20"];
    _availableMagazines = ["CUP_20Rnd_762x51_HK417", "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417", "CUP_20Rnd_TE1_Green_Tracer_762x51_HK417", "CUP_5Rnd_762x67_G22", "rhsusf_5Rnd_300winmag_xm2010", "hlc_20rnd_762x51_IRDim_G3", "hlc_20rnd_762x51_barrier_G3", "hlc_20rnd_762x51_MDim_G3", "hlc_20rnd_762x51_b_G3"];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_optic_sb_3_12x50_pmii", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_harris_bipod", "cup_muzzle_snds_awm", "cup_bipod_vltor_modpod_black", "cup_optic_leupoldmk4_25x50_lrt"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};


// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["BWA3_MG4"];
    _availableMagazines = ["BWA3_200Rnd_556x45", "BWA3_200Rnd_556x45_Tracer"];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "sma_elcan_specter"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["BWA3_MG3"];
    _availableMagazines = ["BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft"];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "sma_elcan_specter"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableWeapons = ["CUP_arifle_G36K_RIS_AG36_camo", "CUP_arifle_G36K_RIS_AG36"];
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};


if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["BWA3_RGW90_Loaded", "CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo",   "CUP_launch_HCPF3", "CUP_launch_PzF3", "CUP_launch_BF3"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo", "rhs_weap_maaws"];
    _availableMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT"];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "rhs_optic_maaws", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["rhssaf_kitbag_smb", "TAC_MTAP_RG"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ToolKit", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["rhssaf_kitbag_smb", "TAC_MTAP_RG"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Rotary Wing Pilot
if (_condition && _role in ["RWP"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = ["CUP_U_B_GER_Fleck_Overalls_Pilot"];
    _availableWeapons = ["CUP_smg_MP5A5", "hgun_Pistol_Signal_F"];
    _availableMagazines = ["CUP_30Rnd_9x19_MP5", "6Rnd_GreenSignal_F", "6Rnd_RedSignal_F"];
    _availableVests = ["tgc_mtv_radio"];
    _availableItems = ["sma_eotech552", "ACRE_SEM70", "ACRE_PRC148", "ACRE_PRC152", "ToolKit"];
    _availableBackpacks = [];
    _availableHeadgear = ["rhsusf_hgu56p", "rhsusf_hgu56p_visor", "rhsusf_hgu56p_green", "rhsusf_hgu56p_visor_green", "rhsusf_hgu56p_black", "rhsusf_hgu56p_visor_black"];
    _availableAttachments = [];
    _availableGrenades = [];
    _availableFacewear = ["G_Aviator"];
};

// Fixed Wing Pilot
if (_condition && _role in ["FWP"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = ["CUP_U_B_GER_Fleck_Overalls_Pilot"];
    _availableWeapons = ["CUP_smg_MP5A5", "hgun_Pistol_Signal_F"];
    _availableMagazines = ["CUP_30Rnd_9x19_MP5", "6Rnd_GreenSignal_F", "6Rnd_RedSignal_F"];
    _availableVests = ["CUP_V_B_PilotVest"];
    _availableItems = ["rhsusf_ANPVS_15", "sma_eotech552", "ACRE_SEM70", "ACRE_PRC148", "ACRE_PRC152", "ToolKit"];
    _availableAttachments = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = ["RHS_jetpilot_usaf"];
    _availableFacewear = ["G_Aviator"];
};

// EOD  , HAS TO BE SET AS EOD INSIDE 3DEN EDITOR THROUGH ACE.
if (_condition && _role in ["EOD"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
    _availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
    _availableMagazines = [];
    _availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
    _availableItems = ["rhsusf_ANPVS_15", "ACE_DefusalKit", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
    _availableBackpacks = ["rhssaf_kitbag_smb", "TAC_MTAP_RG"];
    _availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
    _availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
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

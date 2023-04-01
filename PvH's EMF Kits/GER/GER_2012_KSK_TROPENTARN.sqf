private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "rhsusf_acc_ardec_m240", "ACRE_SEM52SL", "ACE_wirecutter", "ACE_adenosine", "ACE_CableTie","ACE_DefusalKit","ACE_SpraypaintBlue", "ItemcTabHCam","ACE_EntrenchingTool", "ACE_IR_Strobe_Item", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_microDAGR"];
_defMagazines = ["BWA3_15Rnd_9x19_P8","hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_M_SAW", "hlc_200rnd_556x45_Mdim_SAW", "hlc_200rnd_556x45_T_SAW", "hlc_50rnd_762x51_MDIM_G3", "hlc_50rnd_762x51_M_G3",                         "murshun_cigs_matches", "1Rnd_HE_Grenade_shell", "CUP_1Rnd_HEDP_M203", "CUP_FlareWhite_M203", "CUP_1Rnd_StarFlare_White_M203", "CUP_FlareRed_M203", "CUP_1Rnd_StarCluster_Red_M203", "rhs_mag_M433_HEDP", "CUP_1Rnd_StarFlare_Red_M203", "CUP_1Rnd_SmokeRed_M203", "rhs_mag_m4009", "murshun_cigs_cigpack", "CUP_30Rnd_556x45_G36_camo", "CUP_30Rnd_556x45_G36", "30Rnd_9x21_Mag", "16Rnd_9x21_Mag"];
_defGrenades = ["ACE_M84","Chemlight_blue","Chemlight_green","ACE_Chemlight_IR","Chemlight_red", "CUP_HandGrenade_M67","SmokeShell","SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"];
_defUniforms = [];
_defWeapons = ["BWA3_P8", "ACE_Vector", "rhsusf_bino_lrf_Vector21"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];

// Made by Per_von_Harke

// Zeus
if (_role == "ZEUS") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ACRE_SEM70", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// Team leader
if (_role == "SL") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ACRE_SEM70", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel" ];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["rhssaf_kitbag_smb"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ACRE_SEM70", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["rhssaf_kitbag_smb", "tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// Marksman
if (_role == "MRK") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_srifle_G22_blk", "CUP_srifle_G22_des", "hlc_rifle_psg1", "CUP_arifle_HK417_20"];
	_availableMagazines = ["CUP_20Rnd_762x51_HK417", "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417", "CUP_20Rnd_TE1_Green_Tracer_762x51_HK417", "CUP_5Rnd_762x67_G22", "rhsusf_5Rnd_300winmag_xm2010", "hlc_20rnd_762x51_IRDim_G3", "hlc_20rnd_762x51_barrier_G3", "hlc_20rnd_762x51_MDim_G3", "hlc_20rnd_762x51_b_G3"];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_optic_sb_3_12x50_pmii", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_harris_bipod", "cup_muzzle_snds_awm", "cup_bipod_vltor_modpod_black", "cup_optic_leupoldmk4_25x50_lrt"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};


// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["BWA3_MG4"];
	_availableMagazines = ["BWA3_200Rnd_556x45", "BWA3_200Rnd_556x45_Tracer"];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "sma_elcan_specter"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["BWA3_MG3"];
	_availableMagazines = ["BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft"];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "sma_elcan_specter"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// Grenadier
if (_role == "GRD") then
{
	_availableWeapons = ["CUP_arifle_G36K_RIS_AG36_camo", "CUP_arifle_G36K_RIS_AG36"];
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};


if (_role == "LAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["BWA3_RGW90_Loaded", "CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo",   "CUP_launch_HCPF3", "CUP_launch_PzF3", "CUP_launch_BF3"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["tgc_breacherB", "tgc_hpc_backpanel_tan","tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo", "rhs_weap_maaws"];
	_availableMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT"];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "rhs_optic_maaws", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["rhssaf_kitbag_smb", "TAC_MTAP_RG"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["tgc_pvs23_band", "tgc_pvs23_bungee", "tgc_pvs23_special_2", "ToolKit", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["rhssaf_kitbag_smb", "TAC_MTAP_RG"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

// Rotary Wing Pilot
if (_role == "RWP") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Fleck_Overalls_Pilot"];
	_availableWeapons = ["CUP_smg_MP5A5", "hgun_Pistol_Signal_F"];
	_availableMagazines = ["CUP_30Rnd_9x19_MP5", "6Rnd_GreenSignal_F", "6Rnd_RedSignal_F"];
	_availableVests = ["tgc_mtv_radio"];
	_availableItems = ["sma_eotech552", "ACRE_SEM70", "ACRE_PRC148", "ACRE_PRC152", "ToolKit"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhsusf_hgu56p", "rhsusf_hgu56p_visor", "rhsusf_hgu56p_green", "rhsusf_hgu56p_visor_green", "rhsusf_hgu56p_black", "rhsusf_hgu56p_visor_black"];
	_availableFacewear = ["G_Aviator"];
};

// Fixed Wing Pilot
if (_role == "FWP") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Fleck_Overalls_Pilot"];
	_availableWeapons = ["CUP_smg_MP5A5", "hgun_Pistol_Signal_F"];
	_availableMagazines = ["CUP_30Rnd_9x19_MP5", "6Rnd_GreenSignal_F", "6Rnd_RedSignal_F"];
	_availableVests = ["CUP_V_B_PilotVest"];
	_availableItems = ["rhsusf_ANPVS_15", "sma_eotech552", "ACRE_SEM70", "ACRE_PRC148", "ACRE_PRC152", "ToolKit"];
	_availableBackpacks = [];
	_availableHeadgear = ["RHS_jetpilot_usaf"];
	_availableFacewear = ["G_Aviator"];
};

// EOD  , HAS TO BE SET AS EOD INSIDE 3DEN EDITOR THROUGH ACE.
if (_role == "ENG") then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG","CUP_arifle_G36K_KSK_VFG_camo","CUP_arifle_G36K_KSK_camo"];
	_availableMagazines = [];
	_availableVests = ["tgc_mtv_light","tgc_mtv_radio","tgc_hpc_radio_ng"];
	_availableItems = ["rhsusf_ANPVS_15", "ACE_DefusalKit", "cup_acc_llm01_desert_l", "cup_acc_llm01_coyote_l", "cup_acc_llm01_l", "sma_eotech552_kf_des", "sma_elcan_specter", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rksl_optic_eot552_c", "rksl_optic_eot552", "sma_elcan_specter_4z", "sma_elcan_specter_green", "sma_elcan_specter_tan", "sma_elcan_specter_green_4z", "sma_elcan_specter_tan_4z", "sma_eotech552", "cup_optic_holodesert"];
	_availableBackpacks = ["rhssaf_kitbag_smb", "TAC_MTAP_RG"];
	_availableHeadgear = ["tc2002od2", "tc2002_sb","tc2002_s", "tc2002_od", "tc2002_tan", "tc2002_p"];
	_availableFacewear = ["CUP_G_Oakleys_Drk", "CUP_G_ESS_BLK","rhs_balaclava","CUP_RUS_Balaclava_blk","G_Shades_tactical", "CUP_RUS_Balaclava_tan"];
};

//Populate with predefined items and whatever is already in the crate
_backpacks 	= (_availableBackpacks + _defBackpacks);
_items 		= (_availableVests + _availableItems + _availableUniforms + _defUniforms + _defVests + _defItems + _defFacewear + _availableFacewear + _defHeadgear + _availableHeadgear);
_magazines 	= (_availableMagazines + _defGrenades + _defMagazines);
_weapons 	= (_availableWeapons + _defWeapons);

if (!_rearmOnly) then {
	[_obj, _backpacks] 	call BIS_fnc_addVirtualBackpackCargo;
	[_obj, _items	 ] 	call BIS_fnc_addVirtualItemCargo;
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, _weapons	 ] 	call BIS_fnc_addVirtualWeaponCargo;
} else {
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, (_availableItems + _defItems)] call BIS_fnc_addVirtualItemCargo;
};


player setVariable ["EMF_KA_permittedGear", [_backpacks, _items, _magazines, _weapons], true];

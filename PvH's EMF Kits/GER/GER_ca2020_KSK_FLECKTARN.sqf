params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACE_CableTie", "ACE_microDAGR", "ItemMicroDAGR", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACRE_PRC152", "ACE_wirecutter", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["murshun_cigs_matches", "murshun_cigs_cigpack", "CUP_30Rnd_556x45_G36", "CUP_30Rnd_TE1_Green_Tracer_556x45_G36", "rhssaf_30rnd_556x45_MDIM_G36", "CUP_20Rnd_762x51_HK417", "CUP_20Rnd_TE1_Green_Tracer_762x51_HK417", "CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "CUP_17Rnd_9x19_glock17", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "ACE_40mm_Flare_white"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["CUP_U_B_GER_Fleck_Crye"];
_defWeapons = ["CUP_hgun_Glock17_blk"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = ["rhs_googles_black", "rhs_googles_orange", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];

//Loadout made by Per_von_Harke

// Zeus
if (_role == "ZEUS") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tl_rngr", "CUP_V_CPC_communications_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// Team leader / Squad leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tl_rngr", "CUP_V_CPC_communications_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	[player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["TRYK_B_Medbag_OD"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_rifle_g3sg1"];
	_availableMagazines = ["hlc_50rnd_762x51_MDIM_G3", "hlc_50rnd_762x51_M_G3"];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_MG3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_RIS_AG36"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "rhs_weap_M136_hp", "rhs_weap_M136_hedp", "rhs_weap_M136"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "CUP_launch_PzF3", "CUP_launch_HCPF3", "CUP_launch_BF3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weapons_rngr", "CUP_V_CPC_weaponsbelt_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// Designated Marksman 
if (_role == "DMR") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_HK417_20", "CUP_arifle_HK417_20_Wood", "CUP_srifle_G22_blk", "rhs_weap_M107", "rhs_weap_M107_w"];
	_availableMagazines = ["rhsusf_5Rnd_300winmag_xm2010", "CUP_5Rnd_762x67_G22",             "rhsusf_mag_10Rnd_STD_50BMG_mk211", "rhsusf_mag_10Rnd_STD_50BMG_M33", "ACE_5Rnd_127x99_API_Mag", "ACE_5Rnd_127x99_AMAX_Mag", "ACE_5Rnd_127x99_Mag"];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_aac_762sd_silencer", "cup_bipod_harris_1a2_l_blk", "cup_optic_sb_11_4x20_pm", "cup_acc_anpeq_15", "cup_acc_anpeq_15_od", "rksl_optic_pmii_525", "rksl_optic_pmii_525_wdl",           "cup_muzzle_snds_awm", "cup_bipod_vltor_modpod_black", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_premier_low"       "ACE_SpottingScope", "ACE_Tripod", "ACE_Kestrel4500", "ACE_ATragMX"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt", "CUP_H_Ger_Boonie2_Flecktarn", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};


// Breacher
if (_role == "BRC") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "CUP_sgun_M1014_Entry"];
	_availableMagazines = ["ACE_2Rnd_12Gauge_Pellets_No4_Buck"];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// EOD 
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip", "ACE_VMM3"];
	_availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["ACE_DefusalKit", "ACE_Clacker"               "rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
};

// Explosive Specialist 
if (_role == "ESP") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36KA3", "CUP_arifle_G36KA3_grip"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_lightbelt_rngr"];
	_availableItems = ["ACE_Clacker", "rhs_ec400_mag", "rhs_ec200_mag", "rhs_ec75_mag", "rhsusf_m112x4_mag", "rhsusf_m112_mag", "rhsusf_mine_m14_mag", "rhs_mine_M19_mag", "CUP_TimeBomb_M", "CUP_PipeBomb_M"              "rhsusf_acc_sf3p556", "rhsusf_acc_eotech_552_d", "rhsusf_acc_su230_c", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech552_3xdown_des" "rhsusf_acc_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_llm01_l", "rhsusf_acc_nt4_tan", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["CUP_B_GER_Medic_Flecktarn"];
	_availableHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_rg_cover_pelt"];
	_availableFacewear = [];
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

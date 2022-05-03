params["_role"];
private["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "tgc_anvis10_tan", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhs_weap_rpg26", "rhs_weap_rshg2", "rhs_weap_rpg18", "rhs_weap_M136_hedp", "rhsusf_weap_glock17g4"];
private _defAttachments = [];
private _defMagazines = ["rhs_100Rnd_762x54mmR", "30Rnd_65x39_caseless_msbs_mag", "rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N10_2mag_AK", "rhs_30Rnd_545x39_7N10_plum_AK", "CUP_30Rnd_545x39_AK12_M", "Tier1_20Rnd_9x19_FMJ", "Tier1_30Rnd_762x35_300BLK_PMAG", "Tier1_30Rnd_762x35_300BLK_SMK_PMAG"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_CRYE_G3C_MC_V3"];
private _defVests = [];
private _defBackpacks = ["ECPV1", "ECPV2", "Crewcab"];
private _defHeadgear = ["CUP_H_OpsCore_Covered_MCAM_SF", "CUP_H_OpsCore_Tan_SF", "CUP_H_OpsCore_Covered_MCAM"];
private _defFacewear = ["CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk", "rhsusf_oakley_goggles_clr", "G_Sport_Blackred", "G_Shades_tactical", "CUP_RUS_Balaclava_rgr", "UK3CB_G_Balaclava2_DES", "CUP_G_PMC_Facewrap_Tan_Glasses_Dark"];

// Rifleman
if (_role == "RFL") then {
	_availableUniforms = [];
	_availableWeapons = ["arifle_MSBS65_sand_F", "arifle_MSBS65_black_F", "rhs_weap_ak74m_zenitco01_b33", "CUP_arifle_AKS74U_railed", "CUP_arifle_AK12_black"];
	_availableAttachments = ["rhsusf_acc_g33_xps3", "rhsusf_acc_g33_t1", "rhsusf_acc_eotech", "rhsusf_acc_t1_low", "rhsusf_acc_t1_high", "rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15side_bk", "tier1_exps3_0_black", "tier1_exps3_0_3xmag_black_up", "cup_acc_anpeq_15_top_flashlight_black_l", "rhs_acc_dtk1", "rhs_acc_ak5", "rhs_acc_grip_rk6", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "tier1_mcx_la5_m600v_black", "rhsusf_acc_rotex5_grey", "tier1_rvg_mlok_black", "tier1_mvg_mlok_black", "tier1_afg_mlok_black", "tier1_dd_mlok_vfg_black", "tier1_bcm_gunfighter_vg_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_tlbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_role == "SL") then {
	_availableUniforms = [];
	_availableWeapons = ["arifle_MSBS65_sand_F", "arifle_MSBS65_black_F", "rhs_weap_ak74m_zenitco01_b33", "CUP_arifle_AKS74U_railed", "CUP_arifle_AK12_black"];
	_availableAttachments = ["rhsusf_acc_g33_xps3", "rhsusf_acc_g33_t1", "rhsusf_acc_eotech", "rhsusf_acc_t1_low", "rhsusf_acc_t1_high", "rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15side_bk", "tier1_exps3_0_black", "tier1_exps3_0_3xmag_black_up", "cup_acc_anpeq_15_top_flashlight_black_l", "rhs_acc_dtk1", "rhs_acc_ak5", "rhs_acc_grip_rk6", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "tier1_mcx_la5_m600v_black", "rhsusf_acc_rotex5_grey", "tier1_rvg_mlok_black", "tier1_mvg_mlok_black", "tier1_afg_mlok_black", "tier1_dd_mlok_vfg_black", "tier1_bcm_gunfighter_vg_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_tlbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["arifle_MSBS65_sand_F", "arifle_MSBS65_black_F", "rhs_weap_ak74m_zenitco01_b33", "CUP_arifle_AKS74U_railed", "CUP_arifle_AK12_black"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
	_availableGrenades = [];
	_availableBackpacks = ["RATS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_PKM_top_rail_B50_vfg"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_tlbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["tier1_exps3_0_black", "cup_acc_anpeq_15_black", "cup_muzzle_mfsup_flashhider_pk_black"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_fgm148", "arifle_MSBS65_sand_F", "arifle_MSBS65_black_F", "rhs_weap_ak74m_zenitco01_b33", "CUP_arifle_AKS74U_railed", "CUP_arifle_AK12_black"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_tlbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["rhsusf_acc_g33_xps3", "rhsusf_acc_g33_t1", "rhsusf_acc_eotech", "rhsusf_acc_t1_low", "rhsusf_acc_t1_high", "rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15side_bk", "tier1_exps3_0_black", "tier1_exps3_0_3xmag_black_up", "cup_acc_anpeq_15_top_flashlight_black_l", "rhs_acc_dtk1", "rhs_acc_ak5", "rhs_acc_grip_rk6", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "tier1_mcx_la5_m600v_black", "rhsusf_acc_rotex5_grey", "tier1_rvg_mlok_black", "tier1_mvg_mlok_black", "tier1_afg_mlok_black", "tier1_dd_mlok_vfg_black", "tier1_bcm_gunfighter_vg_black"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["arifle_MSBS65_sand_F", "arifle_MSBS65_black_F", "rhs_weap_ak74m_zenitco01_b33", "CUP_arifle_AKS74U_railed", "CUP_arifle_AK12_black"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_tlbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["rhsusf_acc_g33_xps3", "rhsusf_acc_g33_t1", "rhsusf_acc_eotech", "rhsusf_acc_t1_low", "rhsusf_acc_t1_high", "rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15side_bk", "tier1_exps3_0_black", "tier1_exps3_0_3xmag_black_up", "cup_acc_anpeq_15_top_flashlight_black_l", "rhs_acc_dtk1", "rhs_acc_ak5", "rhs_acc_grip_rk6", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "tier1_mcx_la5_m600v_black", "rhsusf_acc_rotex5_grey", "tier1_rvg_mlok_black", "tier1_mvg_mlok_black", "tier1_afg_mlok_black", "tier1_dd_mlok_vfg_black", "tier1_bcm_gunfighter_vg_black"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Return loadout arrays
[
	"1.0", // loadout version
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

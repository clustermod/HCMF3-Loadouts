/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5
 * [Recreation of Ukrainian Mechanized Infantry as seen operating in conjunction with American donated Bradley IFVs on the eastern front.]
 *
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACRE_BF888S", "ACE_wirecutter", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["BWA3_RGW90_Loaded", "rhsusf_bino_m24_ARD", "rhs_weap_M136_hp", "rhs_weap_M136_hedp", "rhs_weap_M136", "rhs_weap_m72a7", "rhs_weap_rpg18", "rhs_weap_rpg26", "rhs_weap_rshg2"];
private _defAttachments = [];
private _defMagazines = ["rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_GRD40_White", "rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_green", "rhs_VG40OP_red", "rhs_VG40OP_white"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"
, "BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"
, "rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"
 ];
private _defUniforms = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = ["LOP_U_UKR_Fatigue_Multicam"];
    _availableWeapons = ["CUP_arifle_AK74M_railed_camo", "CUP_arifle_AK74M_railed_afg_camo"];
    _availableAttachments = ["tier1_exps3_0_desert", "tier1_exps3_0_g33_desert_up", "rhsusf_acc_t1_high", "rhsusf_acc_mrds_c"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_Ciras_Mcam4", "CUP_V_PMC_CIRAS_Khaki_Patrol"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["ECPV1", "CUP_B_USMC_AssaultPack", "B_Kitbag_mcamo", "B_AssaultPack_mcamo"];
    _availableHeadgear = ["CUP_H_OpsCore_Covered_MTP", "CUP_H_OpsCore_Covered_MCAM", "CUP_H_Ger_M92_Black", "CUP_H_Ger_M92_Tan", "CUP_H_Ger_M92"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr"];
};

/* Team leader */
if (_condition && _role in ["SL", "FTL"]) then {
    _availableUniforms = ["LOP_U_UKR_Fatigue_Multicam"];
    _availableWeapons = ["CUP_arifle_AK74M_GL_camo", "CUP_arifle_AK74M_GL_railed_camo"];
    _availableAttachments = ["tier1_exps3_0_desert", "tier1_exps3_0_g33_desert_up", "rhsusf_acc_t1_high", "rhsusf_acc_mrds_c"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_Ciras_Mcam4", "CUP_V_PMC_CIRAS_Khaki_Patrol"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["ECPV1", "CUP_B_USMC_AssaultPack", "B_Kitbag_mcamo", "B_AssaultPack_mcamo"];
    _availableHeadgear = ["CUP_H_OpsCore_Covered_MTP", "CUP_H_OpsCore_Covered_MCAM", "CUP_H_Ger_M92_Black", "CUP_H_Ger_M92_Tan", "CUP_H_Ger_M92"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr"];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = ["LOP_U_UKR_Fatigue_Multicam"];
    _availableWeapons = ["CUP_arifle_AK74M_railed_camo", "CUP_arifle_AK74M_railed_afg_camo"];
    _availableAttachments = ["tier1_exps3_0_desert", "tier1_exps3_0_g33_desert_up", "rhsusf_acc_t1_high", "rhsusf_acc_mrds_c"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_Ciras_Mcam4", "CUP_V_PMC_CIRAS_Khaki_Patrol"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["ECPV1", "CUP_B_USMC_AssaultPack", "B_Kitbag_mcamo", "B_AssaultPack_mcamo"];
    _availableHeadgear = ["CUP_H_OpsCore_Covered_MTP", "CUP_H_OpsCore_Covered_MCAM", "CUP_H_Ger_M92_Black", "CUP_H_Ger_M92_Tan", "CUP_H_Ger_M92"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr"];
};

/* SAW/LMG */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = ["LOP_U_UKR_Fatigue_Multicam"];
    _availableWeapons = ["rhs_weap_m249_pip_S", "rhs_weap_m240B", "BWA3_MG3", "CUP_lmg_Pecheneg_top_rail" ];
    _availableAttachments = ["bwa3_bipod_mg3", "optic_tws_mg"];
    _availableMagazines = ["150Rnd_762x54_Box", "Tier1_250Rnd_762x51_Belt_M80A1_EPR", "Tier1_100Rnd_762x51_Belt_M80A1_EPR", "rhsusf_200Rnd_556x45_box", "rhsusf_100Rnd_556x45_soft_pouch", "BWA3_120Rnd_762x51", "BWA3_120Rnd_762x51_soft"];
    _availableVests = ["CUP_V_B_Ciras_Mcam4", "CUP_V_PMC_CIRAS_Khaki_Patrol"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["ECPV1", "CUP_B_USMC_AssaultPack", "B_Kitbag_mcamo", "B_AssaultPack_mcamo"];
    _availableHeadgear = ["CUP_H_OpsCore_Covered_MTP", "CUP_H_OpsCore_Covered_MCAM", "CUP_H_Ger_M92_Black", "CUP_H_Ger_M92_Tan", "CUP_H_Ger_M92"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr"];
};

/* Grenadier */
if (_condition && _role in ["GRD"]) then {
    _availableUniforms = ["LOP_U_UKR_Fatigue_Multicam"];
    _availableWeapons = ["CUP_arifle_AK74M_GL_camo", "CUP_arifle_AK74M_GL_railed_camo"];
    _availableAttachments = ["tier1_exps3_0_desert", "tier1_exps3_0_g33_desert_up", "rhsusf_acc_t1_high", "rhsusf_acc_mrds_c"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_B_Ciras_Mcam4", "CUP_V_PMC_CIRAS_Khaki_Patrol"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["ECPV1", "CUP_B_USMC_AssaultPack", "B_Kitbag_mcamo", "B_AssaultPack_mcamo"];
    _availableHeadgear = ["CUP_H_OpsCore_Covered_MTP", "CUP_H_OpsCore_Covered_MCAM", "CUP_H_Ger_M92_Black", "CUP_H_Ger_M92_Tan", "CUP_H_Ger_M92"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr"];
};

/* LAT */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = ["LOP_U_UKR_Fatigue_Multicam"];
    _availableWeapons = ["CUP_arifle_AK74M_railed_camo", "CUP_arifle_AK74M_railed_afg_camo", "rhs_weap_rpg7", "launch_NLAW_F"];
    _availableAttachments = ["tier1_exps3_0_desert", "tier1_exps3_0_g33_desert_up", "rhsusf_acc_t1_high", "rhsusf_acc_mrds_c"];
    _availableMagazines = ["rhs_rpg7_OG7V_mag", "rhs_rpg7_PG7V_mag", "rhs_rpg7_PG7VL_mag", "rhs_rpg7_PG7VM_mag", "rhs_rpg7_PG7VR_mag", "rhs_rpg7_PG7VS_mag", "rhs_rpg7_TBG7V_mag", "rhs_rpg7_type69_airburst_mag"];
    _availableVests = ["CUP_V_B_Ciras_Mcam4", "CUP_V_PMC_CIRAS_Khaki_Patrol"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["ECPV1", "CUP_B_USMC_AssaultPack", "B_Kitbag_mcamo", "B_AssaultPack_mcamo"];
    _availableHeadgear = ["CUP_H_OpsCore_Covered_MTP", "CUP_H_OpsCore_Covered_MCAM", "CUP_H_Ger_M92_Black", "CUP_H_Ger_M92_Tan", "CUP_H_Ger_M92"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr"];
};

/* MAT */
if (_condition && _role in ["MAT"]) then {
    _availableUniforms = ["LOP_U_UKR_Fatigue_Multicam"];
    _availableWeapons = ["CUP_arifle_AK74M_railed_camo", "CUP_arifle_AK74M_railed_afg_camo", "launch_MRAWS_green_rail_F", "rhs_weap_fgm148"];
    _availableAttachments = ["tier1_exps3_0_desert", "tier1_exps3_0_g33_desert_up", "rhsusf_acc_t1_high", "rhsusf_acc_mrds_c"];
    _availableMagazines = ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HE"];
    _availableVests = ["CUP_V_B_Ciras_Mcam4", "CUP_V_PMC_CIRAS_Khaki_Patrol"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["ECPV1", "CUP_B_USMC_AssaultPack", "B_Kitbag_mcamo", "B_AssaultPack_mcamo"];
    _availableHeadgear = ["CUP_H_OpsCore_Covered_MTP", "CUP_H_OpsCore_Covered_MCAM", "CUP_H_Ger_M92_Black", "CUP_H_Ger_M92_Tan", "CUP_H_Ger_M92"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr"];
};

/* Engineer */
if (_condition && _role in ["ENG"]) then {
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = ["LOP_U_UKR_Fatigue_Multicam"];
    _availableWeapons = ["CUP_arifle_AK74M_railed_camo", "CUP_arifle_AK74M_railed_afg_camo"];
    _availableAttachments = ["tier1_exps3_0_desert", "tier1_exps3_0_g33_desert_up", "rhsusf_acc_t1_high", "rhsusf_acc_mrds_c"];
    _availableMagazines = ["rhs_ec200_mag", "rhs_ec400_mag", "CUP_TimeBomb_M", "rhsusf_m112_mag", "rhsusf_m112x4_mag"];
    _availableVests = ["CUP_V_B_Ciras_Mcam4", "CUP_V_PMC_CIRAS_Khaki_Patrol"];
    _availableItems = ["ACE_Clacker"];
    _availableGrenades = [];
    _availableBackpacks = ["ECPV1", "CUP_B_USMC_AssaultPack", "B_Kitbag_mcamo", "B_AssaultPack_mcamo"];
    _availableHeadgear = ["CUP_H_OpsCore_Covered_MTP", "CUP_H_OpsCore_Covered_MCAM", "CUP_H_Ger_M92_Black", "CUP_H_Ger_M92_Tan", "CUP_H_Ger_M92"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr"];
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

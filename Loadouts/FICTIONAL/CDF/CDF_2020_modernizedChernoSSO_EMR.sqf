params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["rhs_1PN138", "cup_muzzle_tgpa_woodland", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACRE_BF888S", "BWA3_ItemNaviPad", "rhs_1PN138", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhssaf_zrak_rd7j", "rhs_weap_rpg18", "rhs_weap_rpg26", "rhs_weap_rshg2", "rhs_weap_pya"];
private _defAttachments = [];
private _defMagazines = ["rhs_100Rnd_762x54mmR_7N26", "rhs_mag_9x19_7n31_17", "CUP_30Rnd_545x39_AK74M_camo_M", "rhs_VOG25P", "rhs_VOG25", "rhs_VG40TB", "rhs_GRD40_Green", "rhs_GRD40_Red"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = ["CUP_U_O_RUS_Ratnik_Summer"];
private _defVests = [];
private _defBackpacks = ["CUP_O_RUS_Patrol_bag_Green", "CUP_O_RUS_Patrol_bag_Green_Shovel", "CUP_O_RUS_Patrol_bag_Summer", "CUP_O_RUS_Patrol_bag_Summer_Shovel"];
private _defHeadgear = ["rhsusf_opscore_fg_pelt" ];
private _defFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_emr", "UK3CB_G_Balaclava2_DES", "UK3CB_G_Balaclava2_BLK"];

//
// Made for Arma 3 Virtual MILSIM
//
// Made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK12_AFG_lush"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["tier1_exps3_0_black","tier1_microt2_leap_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "cup_muzzle_mfsup_flashhider_545x39_black", "rhsusf_acc_su230"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Team leader
if (_condition && _role in ["SL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_pdu4", "CUP_arifle_AK12_GP34_lush"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
    _availableItems = ["tier1_exps3_0_black","tier1_microt2_leap_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "cup_muzzle_mfsup_flashhider_545x39_black", "rhsusf_acc_su230"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Medic
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK12_AFG_lush"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "kat_chestSeal", "kat_larynx", "kat_stethoscope","kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "kat_AED", "tier1_exps3_0_black","tier1_microt2_leap_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "cup_muzzle_mfsup_flashhider_545x39_black", "rhsusf_acc_su230"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_RPK74M_railed"];
    _availableAttachments = ["rhsusf_acc_t1_low", "cup_acc_anpeq_15_flashlight_black_l", "cup_muzzle_mfsup_flashhider_545x39_black"];
    _availableMagazines = ["CUP_60Rnd_545x39_AK74M_M"];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// MMG
if (_condition && _role in ["MMG"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_Pecheneg_top_rail_B50_vfg"];
    _availableAttachments = ["rhsusf_acc_t1_low", "cup_acc_anpeq_15_flashlight_black_l"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK12_AFG_lush"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
    _availableItems = ["tier1_exps3_0_black","tier1_microt2_leap_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "cup_muzzle_mfsup_flashhider_545x39_black", "rhsusf_acc_su230"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// MAT
if (_condition && _role in ["MAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_launch_RPG7V", "CUP_arifle_AK12_AFG_lush"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_OG7_M", "CUP_PG7VL_M", "rhs_rpg7_TBG7V_mag"];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["cup_optic_nspu_rpg", "cup_optic_pgo7v3", "tier1_exps3_0_black","tier1_microt2_leap_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "cup_muzzle_mfsup_flashhider_545x39_black", "rhsusf_acc_su230"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then {
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK12_AFG_lush"];
    _availableAttachments = ["tier1_exps3_0_black","tier1_microt2_leap_black", "tier1_romeo4t_bcq_black", "tier1_romeo4t_bcd_black", "cup_muzzle_mfsup_flashhider_545x39_black", "rhsusf_acc_su230"];
    _availableMagazines = ["rhs_ec200_mag", "rhs_ec400_mag", "CUP_TimeBomb_M", "rhsusf_m112_mag", "rhsusf_m112x4_mag"];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["ACE_Clacker"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
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
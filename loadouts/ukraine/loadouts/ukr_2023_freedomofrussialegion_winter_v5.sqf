/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5 
 * [This is losely inspired by the Freedom Russia Legion unit of the Armed Force of Ukraine. They have a mix of western and russian weapons and oftene conduct cross border raids into Russian territory.]
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_CableTie", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhs_weap_M136_hedp"];
private _defAttachments = [];
private _defMagazines = ["CUP_30Rnd_545x39_AK74M_M", "BWA3_120Rnd_762x51_Tracer_soft", "rhs_VG40TB", "rhs_VOG25", "rhs_VOG25P"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"
, "rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"
];
private _defUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["CUP_H_OpsCore_Covered_MCAM_SF"];
private _defFacewear = ["CUP_PMC_Facewrap_Winter", "CUP_G_PMC_Facewrap_Winter_Glasses_Dark", "UK3CB_G_Balaclava_Win"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK74M_railed_afg", "CUP_arifle_AK74M_railed"];
    _availableAttachments = ["Tier1_MicroT2_Low_Black", "Tier1_MicroT1_Low_Black", "Tier1_EXPS3_0_Black", "rhsusf_acc_T1_low", "rhsusf_acc_mrds", "rhsusf_acc_ACOG3"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["G3_Backpack_v2_2"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhssaf_zrak_rd7j", "CUP_arifle_AK74M_GL_top_rail", "BWA3_P2A1"];
    _availableAttachments = ["Tier1_MicroT2_Low_Black", "Tier1_MicroT1_Low_Black", "Tier1_EXPS3_0_Black", "rhsusf_acc_T1_low", "rhsusf_acc_mrds", "rhsusf_acc_ACOG3"];
    _availableMagazines = ["BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Singlestar_White", "BWA3_1Rnd_Flare_Singlestar_Green"];
    _availableVests = ["CUP_V_JPC_tlbelt_mc", "CUP_V_JPC_weaponsbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["G3_Backpack_v2_2"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK74M_railed_afg", "CUP_arifle_AK74M_railed"];
    _availableAttachments = ["Tier1_MicroT2_Low_Black", "Tier1_MicroT1_Low_Black", "Tier1_EXPS3_0_Black", "rhsusf_acc_T1_low", "rhsusf_acc_mrds", "rhsusf_acc_ACOG3"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_medicalbelt_mc"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["G3_MedBag_LBT_v1_1"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["BWA3_MG5_tan"];
    _availableAttachments = ["rhsusf_acc_compm4", "rhsusf_acc_su230", "Tier1_EXPS3_0_Black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["G3_Backpack_v2_2"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Anti-Tank, Light */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK74M_railed_afg", "CUP_arifle_AK74M_railed", "CUP_launch_NLAW"];
    _availableAttachments = ["Tier1_MicroT2_Low_Black", "Tier1_MicroT1_Low_Black", "Tier1_EXPS3_0_Black", "rhsusf_acc_T1_low", "rhsusf_acc_mrds", "rhsusf_acc_ACOG3"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["G3_Backpack_v2_2"];
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
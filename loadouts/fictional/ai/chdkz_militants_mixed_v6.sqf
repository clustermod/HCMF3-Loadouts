/*
 * Author: Hark
 * Chernarussian Movement of the Red Star (ChDKZ) militants armed with Russian supplied gear and weapons or battlefield pickups from the fight with CDF troops.
 *
 * cc_core_v6
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!ai_arsenal_template.sqf
 */

/* Get the unit's role */
params ["_role"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = [];
private _defGrenades = [];
private _defUniforms = ["LOP_U_US_Fatigue_05", "rhs_uniform_mvd_izlom", "LOP_U_US_Fatigue_11", "LOP_U_US_Fatigue_04", "LOP_U_US_Fatigue_09", "LOP_U_US_Fatigue_12", "LOP_U_US_Fatigue_07"];
private _defVests = ["LOP_V_6Sh92_Radio_OLV", "LOP_V_6Sh92_OLV", "V_sns_m58_bare", "rhs_6b23_digi_6sh92_Spetsnaz", "rhs_6b23_digi_engineer", "rhs_6sh117_rifleman", "rhs_6sh92_vog_headset", "rhs_6sh92_vsr", "rhs_chicom", "rhs_vydra_3m", "rhsgref_6b23_khaki_rifleman"];
private _defBackpacks = [];
private _defHeadgear = ["UK3CB_H_Woolhat_BLK", "UK3CB_H_Beanie_02_BRN", "UK3CB_H_Woolhat_KHK", "CUP_H_ChDKZ_Beanie", "LOP_H_Beanie_m81", "rhs_beanie_green", "rhs_fieldcap_m88_grey", "rhs_fieldcap_early", "rhs_ssh68_2", "rhs_vkpo_cap_alt", "rhs_vkpo_cap", "rhsgref_fieldcap_ttsko_mountain", "rhsgref_hat_m1941cap", "rhsgref_M56", "rhssaf_bandana_md2camo", "rhssaf_bandana_digital", "rhssaf_bandana_smb", "rhs_6b27m_green"];
private _defFacewear = ["Armband_Red_medium2", "Armband_White_medium2"];

/* Rifleman */
if (_role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_flora2", "rhs_rd54_vest_emr1", "rhssaf_kitbag_md2camo", "CUP_B_HikingPack_Civ"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader */
if (_role in ["SL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early", "CUP_arifle_AKMS_Early", "CUP_arifle_AKS74U"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_flora2", "rhs_rd54_vest_emr1", "rhssaf_kitbag_md2camo", "CUP_B_HikingPack_Civ"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Medic */
if (_role in ["MED"]) then {
    player setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early", "CUP_arifle_AKMS_Early", "CUP_arifle_AKS74U"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M"];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_medic_bag"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Machinegunner */
if (_role in ["MG"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_PKM"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_100Rnd_762x54mmR_green"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_flora2", "rhs_rd54_vest_emr1", "rhssaf_kitbag_md2camo", "CUP_B_HikingPack_Civ"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Anti-Tank */
if (_role in ["AT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early", "CUP_launch_RPG7V"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M", "rhs_rpg7_OG7V_mag", "rhs_rpg7_PG7VL_mag"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rpg_2", "UNS_NVA_RPG"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Engineer */
if (_role in ["ENG"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early", "CUP_arifle_AKMS_Early", "CUP_arifle_AKS74U"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_flora2", "rhs_rd54_vest_emr1", "rhssaf_kitbag_md2camo", "CUP_B_HikingPack_Civ"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Marksman */
if (_role in ["MAR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early", "CUP_arifle_AKMS_Early", "CUP_arifle_AKS74U"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_flora2", "rhs_rd54_vest_emr1", "rhssaf_kitbag_md2camo", "CUP_B_HikingPack_Civ"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Crewman */
if (_role in ["CRW"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early", "CUP_arifle_AKMS_Early", "CUP_arifle_AKS74U"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_flora2", "rhs_rd54_vest_emr1", "rhssaf_kitbag_md2camo", "CUP_B_HikingPack_Civ"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Rotary Pilot */
if (_role in ["RPIL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early", "CUP_arifle_AKMS_Early", "CUP_arifle_AKS74U"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_flora2", "rhs_rd54_vest_emr1", "rhssaf_kitbag_md2camo", "CUP_B_HikingPack_Civ"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Fixed-Wing Pilot */
if (_role in ["WPIL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKM_Early", "CUP_arifle_AKMS_Early", "CUP_arifle_AKS74U"];
    _availableAttachments = [];
    _availableMagazines = ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_camo_M", "CUP_30Rnd_545x39_AK74_plum_M"];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_flora2", "rhs_rd54_vest_emr1", "rhssaf_kitbag_md2camo", "CUP_B_HikingPack_Civ"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Loadout array that's passed back to kosherArsenal */
[
    /* Loadoutfile version */
    "1.2",

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

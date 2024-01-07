/*
 * Author: [Author]
 * [Description]
 *
 * [Modpack Version]
 */

/* Get the unit's role */
params ["_role"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = ["rhs_30Rnd_545x39_AK_green"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspd", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = [selectRandom ["rhs_uniform_afghanka_winter_vsr_3", "rhs_uniform_afghanka_winter_vsr_2", "rhs_uniform_afghanka_winter_vsr"]];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = ["CUP_Beard_Brown", "CUP_Beard_Black", "CUP_G_RUS_Balaclava_Ratnik_v2", "CUP_G_RUS_Balaclava_Ratnik", "CUP_G_TK_RoundGlasses_blk", "CUP_G_TK_RoundGlasses"];

/* Rifleman */
if (_role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKS74", "CUP_arifle_AK74"];
    _availableAttachments = ["rhs_acc_pgo7v", "rhs_acc_1p78"];
    _availableMagazines = [];
    _availableVests = ["rhs_6b3_AK", "rhs_6b3_AK_2", "rhs_6b3_AK_3", "rhs_6b3"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = ["rhs_ushanka", selectRandom ["CUP_H_SLA_BeanieGreen", "CUP_H_ChDKZ_Beanie", "CUP_H_PMC_Beanie_Black"], selectRandom ["rhs_ssh60", "rhs_ssh68_2", "rhs_stsh81"]] + selectRandom [["rhs_fieldcap_m88_vsr_2_back", "rhs_fieldcap_m88_vsr_2", "rhs_fieldcap_vsr"], ["rhs_fieldcap_m88_vsr", "rhs_fieldcap_m88_vsr_back", "rhs_fieldcap_vsr"], ["rhs_fieldcap_khk", "rhs_fieldcap_m88_back", "rhs_fieldcap_m88"]];
    _availableFacewear = [];
};

/* Squad Leader */
if (_role in ["SL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKS74_GL", "CUP_arifle_AK74_GL", "rhssaf_zrak_rd7j", "CUP_hgun_Makarov"];
    _availableAttachments = ["rhs_acc_pgo7v", "rhs_acc_1p78"];
    _availableMagazines = ["rhs_mag_9x18_8_57N181S", "rhs_VG40OP_white", "rhs_VG40OP_red", "rhs_VOG25", "rhs_VOG25P", "CUP_1Rnd_SmokeGreen_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"];
    _availableVests = ["rhs_6b3_off", "rhs_6b3_VOG", "rhs_6b3_VOG_2"];
    _availableItems = ["ItemMap", "ACRE_BF888S"];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_r148"];
    _availableHeadgear = ["rhs_ushanka", selectRandom ["CUP_H_SLA_BeanieGreen", "CUP_H_ChDKZ_Beanie", "CUP_H_PMC_Beanie_Black"], selectRandom ["rhs_ssh60", "rhs_ssh68_2", "rhs_stsh81"]] + selectRandom [["rhs_fieldcap_m88_vsr_2_back", "rhs_fieldcap_m88_vsr_2", "rhs_fieldcap_vsr"], ["rhs_fieldcap_m88_vsr", "rhs_fieldcap_m88_vsr_back", "rhs_fieldcap_vsr"], ["rhs_fieldcap_khk", "rhs_fieldcap_m88_back", "rhs_fieldcap_m88"]];
    _availableFacewear = [];
};

/* Medic */
if (_role in ["MED"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKS74", "CUP_arifle_AK74"];
    _availableAttachments = ["rhs_acc_pgo7v", "rhs_acc_1p78"];
    _availableMagazines = [];
    _availableVests = ["rhs_6b3_AK", "rhs_6b3_AK_2", "rhs_6b3_AK_3", "rhs_6b3"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_vest"];
    _availableHeadgear = ["rhs_ushanka", selectRandom ["CUP_H_SLA_BeanieGreen", "CUP_H_ChDKZ_Beanie", "CUP_H_PMC_Beanie_Black"], selectRandom ["rhs_ssh60", "rhs_ssh68_2", "rhs_stsh81"]] + selectRandom [["rhs_fieldcap_m88_vsr_2_back", "rhs_fieldcap_m88_vsr_2", "rhs_fieldcap_vsr"], ["rhs_fieldcap_m88_vsr", "rhs_fieldcap_m88_vsr_back", "rhs_fieldcap_vsr"], ["rhs_fieldcap_khk", "rhs_fieldcap_m88_back", "rhs_fieldcap_m88"]];
    _availableFacewear = [];
};

/* Machinegunner */
if (_role in ["MG"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_RPK74_45"];
    _availableAttachments = ["rhs_acc_pgo7v", "rhs_acc_1p78"];
    _availableMagazines = ["rhs_45Rnd_545X39_AK_Green"];
    _availableVests = ["rhs_6b3_RPK"];
    _availableItems = ["ACE_SpareBarrel"];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_vest"];
    _availableHeadgear = ["rhs_ushanka", selectRandom ["CUP_H_SLA_BeanieGreen", "CUP_H_ChDKZ_Beanie", "CUP_H_PMC_Beanie_Black"], selectRandom ["rhs_ssh60", "rhs_ssh68_2", "rhs_stsh81"]] + selectRandom [["rhs_fieldcap_m88_vsr_2_back", "rhs_fieldcap_m88_vsr_2", "rhs_fieldcap_vsr"], ["rhs_fieldcap_m88_vsr", "rhs_fieldcap_m88_vsr_back", "rhs_fieldcap_vsr"], ["rhs_fieldcap_khk", "rhs_fieldcap_m88_back", "rhs_fieldcap_m88"]];
    _availableFacewear = [];
};

/* Anti-Tank */
if (_role in ["AT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKS74", "CUP_arifle_AK74", "rhs_weap_rpg7"];
    _availableAttachments = ["rhs_acc_pgo7v", "rhs_acc_1p78"];
    _availableMagazines = ["CUP_PG7V_M", "CUP_OG7_M"];
    _availableVests = ["rhs_6b3_AK", "rhs_6b3_AK_2", "rhs_6b3_AK_3", "rhs_6b3"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rpg_6b3"];
    _availableHeadgear = ["rhs_ushanka", selectRandom ["CUP_H_SLA_BeanieGreen", "CUP_H_ChDKZ_Beanie", "CUP_H_PMC_Beanie_Black"], selectRandom ["rhs_ssh60", "rhs_ssh68_2", "rhs_stsh81"]] + selectRandom [["rhs_fieldcap_m88_vsr_2_back", "rhs_fieldcap_m88_vsr_2", "rhs_fieldcap_vsr"], ["rhs_fieldcap_m88_vsr", "rhs_fieldcap_m88_vsr_back", "rhs_fieldcap_vsr"], ["rhs_fieldcap_khk", "rhs_fieldcap_m88_back", "rhs_fieldcap_m88"]];
    _availableFacewear = [];
};

/* Engineer */
if (_role in ["ENG"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKS74", "CUP_arifle_AK74"];
    _availableAttachments = ["rhs_acc_pgo7v", "rhs_acc_1p78"];
    _availableMagazines = [];
    _availableVests = ["rhs_6b3_AK", "rhs_6b3_AK_2", "rhs_6b3_AK_3", "rhs_6b3"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = ["rhs_ushanka", selectRandom ["CUP_H_SLA_BeanieGreen", "CUP_H_ChDKZ_Beanie", "CUP_H_PMC_Beanie_Black"], selectRandom ["rhs_ssh60", "rhs_ssh68_2", "rhs_stsh81"]] + selectRandom [["rhs_fieldcap_m88_vsr_2_back", "rhs_fieldcap_m88_vsr_2", "rhs_fieldcap_vsr"], ["rhs_fieldcap_m88_vsr", "rhs_fieldcap_m88_vsr_back", "rhs_fieldcap_vsr"], ["rhs_fieldcap_khk", "rhs_fieldcap_m88_back", "rhs_fieldcap_m88"]];
    _availableFacewear = [];
};

/* Marksman */
if (_role in ["MAR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_srifle_SVD"];
    _availableAttachments = ["CUP_optic_PSO_1_1"];
    _availableMagazines = ["rhs_10Rnd_762x54mmR_7N1"];
    _availableVests = ["rhs_6b3_AK", "rhs_6b3_AK_2", "rhs_6b3_AK_3", "rhs_6b3"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = ["rhs_ushanka", selectRandom ["CUP_H_SLA_BeanieGreen", "CUP_H_ChDKZ_Beanie", "CUP_H_PMC_Beanie_Black"], selectRandom ["rhs_ssh60", "rhs_ssh68_2", "rhs_stsh81"]] + selectRandom [["rhs_fieldcap_m88_vsr_2_back", "rhs_fieldcap_m88_vsr_2", "rhs_fieldcap_vsr"], ["rhs_fieldcap_m88_vsr", "rhs_fieldcap_m88_vsr_back", "rhs_fieldcap_vsr"], ["rhs_fieldcap_khk", "rhs_fieldcap_m88_back", "rhs_fieldcap_m88"]];
    _availableFacewear = [];
};

/* Crewman */
if (_role in ["CRW"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKS74U", "rhssaf_zrak_rd7j", "CUP_hgun_Makarov"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_9x18_8_57N181S"];
    _availableVests = ["rhs_gear_OFF"];
    _availableItems = ["ItemMap", "ACRE_BF888S"];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_r148"];
    _availableHeadgear = ["rhs_tsh4"];
    _availableFacewear = [];
};

/* Rotary Pilot */
if (_role in ["RPIL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKS74U", "rhssaf_zrak_rd7j", "CUP_hgun_Makarov"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_9x18_8_57N181S"];
    _availableVests = ["rhs_gear_OFF"];
    _availableItems = ["ItemMap", "ACRE_BF888S"];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_r148"];
    _availableHeadgear = ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike"];
    _availableFacewear = [];
};

/* Fixed-Wing Pilot */
if (_role in ["WPIL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AKS74U", "rhssaf_zrak_rd7j", "CUP_hgun_Makarov"];
    _availableAttachments = [];
    _availableMagazines = ["rhs_mag_9x18_8_57N181S"];
    _availableVests = ["rhs_gear_OFF"];
    _availableItems = ["ItemMap", "ACRE_BF888S"];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_r148"];
    _availableHeadgear = ["rhs_zsh7a", "rhs_zsh7a_alt"];
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

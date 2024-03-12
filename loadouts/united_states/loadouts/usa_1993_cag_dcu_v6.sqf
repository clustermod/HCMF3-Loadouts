/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: A. Stular
 * CC Modpack Version: v6
 * 1993 US Delta Force (CAG) team in DCU.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie", "ACRE_BF888S"];
private _defWeapons = ["CUP_hgun_Colt1911"];
private _defAttachments = [];
private _defMagazines = ["rhsusf_mag_7x45acp_MHP", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhsusf_20Rnd_762x51_m993_Mag"];
private _defGrenades = ["ACE_M14", "MiniGrenade", "HandGrenade", "ACE_M84", "rhs_mag_an_m8hc"];
private _defUniforms = ["U_Simc_DCU_knee", "U_Simc_DCU_knee_trop", "U_Simc_DCU_knee_nomex", "U_Simc_DCU_knee_nomex_trop", "U_Simc_DCU_tee", "U_simc_DCU_raid", "U_Simc_DCU_raid_trop", "U_Simc_DCU_raid_knee", "U_Simc_DCU_raid_knee_trop", "U_Simc_DCU_raid_knee_nomex", "U_Simc_DCU_raid_knee_nomex_trop", "U_Simc_DCU_raid_nomex"];
private _defVests = ["V_Simc_vest_fauf_rig_1", "V_Simc_vest_fauf_rig_2", "V_Simc_vest_fauf_rig_3", "V_Simc_vest_fauf_rig_4", "V_Simc_vest_fauf_LBV", "V_Simc_vest_fauf_LBV_2", "V_Simc_vest_fauf_LBV_belt_45"];
private _defBackpacks = ["UK3CB_B_Invisible", "CUP_B_AssaultPack_Black", "CUP_B_AssaultPack_Coyote"];
private _defHeadgear = ["H_Simc_protec_half_nvo", "H_Simc_protec_hs_nvo", "H_Simc_protec_hs_nvo_ir", "H_Simc_protec_hs_nvo_ir_swdg", "H_Simc_protec_hs_nvo_ir_swdg_low", "H_Simc_protec_hs_nvo_swdg", "H_Simc_protec_hs_nvo_swdg_low", "H_Simc_protec_half_nvo_ir", "H_Simc_protec_half_nvo_ir_swdg", "H_Simc_protec_half_nvo_ir_swdg_low", "H_Simc_protec_half_nvo_swdg", "H_Simc_protec_half_nvo_swdg_low", "H_Simc_protec_half_swdg", "H_Simc_protec_full_nvo", "H_Simc_protec_full_nvo_ir", "H_Simc_protec_full_nvo_ir_swdg", "H_Simc_protec_full_nvo_ir_swdg_low", "H_Simc_protec_full_nvo_swdg", "H_Simc_protec_full_nvo_swdg_low", "H_Simc_protec_full_swdg", "H_Simc_protec_full_swdg_low", "H_Booniehat_tan", "UK3CB_H_BoonieHat_WDL_03", "H_Simc_Boon_dcu_2", "H_Simc_Boon_dcu_7"];
private _defFacewear = ["CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk", "CUP_G_Oakleys_Embr", "G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_LEN_BCG", "G_Aviator", "G_SWDG_low"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727", "CUP_srifle_M14"];
    _availableAttachments = ["CUP_optic_Aimpoint_5000", "rhsusf_acc_M952V", "CUP_optic_ACOG2", "CUP_muzzle_snds_G36_black"];
    _availableMagazines = ["DemoCharge_Remote_Mag", "uns_mine_m14_mag"];
    _availableVests = [];
    _availableItems = ["ACE_M26_Clacker"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["PL", "SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727"];
    _availableAttachments = ["CUP_optic_Aimpoint_5000", "rhsusf_acc_M952V", "CUP_optic_ACOG2", "CUP_muzzle_snds_G36_black"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACRE_PRC77"];
    _availableGrenades = [];
    _availableBackpacks = ["UNS_ARMY_RTO"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    [_unit, "ace_medical_medicclass", 2] call CBA_fnc_setVarNet;
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727"];
    _availableAttachments = ["CUP_optic_Aimpoint_5000", "rhsusf_acc_M952V", "CUP_optic_ACOG2", "CUP_muzzle_snds_G36_black"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["B_simc_pack_med_m5"];
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

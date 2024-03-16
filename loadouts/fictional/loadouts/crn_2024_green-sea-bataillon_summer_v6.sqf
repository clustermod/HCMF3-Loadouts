/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: v5
 * Cluster Community modpack adjusted interpretaion of the "Green Sea Bataillon" seen in other mods dealing with the Chernorussia lore.
 * The Green Sea Bataillon mostly has eastern style gear but a western modernisation is seen throuout their equipment.
 * Inside the loadout is also a ID armband in the colors green and yellow. The enemy armband colors should be either white or red. 
 * 
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhs_weap_rpg75", "rhs_weap_tt33"];
private _defAttachments = [];
private _defMagazines = ["rhs_30Rnd_545x39_7N10_plum_AK", "rhsgref_30rnd_556x45_vhs2", "rhsusf_200Rnd_556x45_box", "rhs_rpg7_OG7V_mag", "rhs_rpg7_TBG7V_mag", "rhs_rpg7_PG7VL_mag", "rhs_mag_762x25_8", "rhs_VG40TB", "rhs_VOG25P", "rhs_VG40OP_green", "rhs_VG40OP_red", "rhs_VG40OP_white"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
private _defUniforms = ["CUP_U_O_RUS_Ratnik_Summer"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhs_6b27m_green", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_mar_fg_pelt", "rhsusf_opscore_fg", "rhsusf_opscore_rg_cover"];
private _defFacewear = [/*ID-Armband in Green --> */"Armband_Green_large", "Armband_Yellow_large"/* <-- ID-Armband in Green */];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74m_npz", "rhs_weap_vhsd2_ct15x"];
    _availableAttachments = ["rhsusf_acc_T1_high", "Tier1_EXPS3_0_Black"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_Nut", "CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_tortila_grey", "rhs_tortila_emr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74m_gp25_npz", "rhsusf_bino_m24"];
    _availableAttachments = ["rhsusf_acc_ACOG", "rhs_acc_dtk1983"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_tortila_grey", "rhs_tortila_emr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74m_npz", "rhs_weap_vhsd2_ct15x"];
    _availableAttachments = ["rhsusf_acc_T1_high", "Tier1_EXPS3_0_Black"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_Nut", "CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_tortila_grey", "rhs_tortila_emr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m249_pip_S_para"];
    _availableAttachments = ["Tier1_Eotech553_Black", "rhsusf_acc_grip4_bipod"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP_Nut"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_tortila_grey", "rhs_tortila_emr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Anti-Tank, Light */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74m_npz", "rhs_weap_vhsd2_ct15x", "CUP_launch_RPG7V"];
    _availableAttachments = ["rhsusf_acc_T1_high", "Tier1_EXPS3_0_Black", "CUP_optic_NSPU_RPG"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rpg_empty", "rhs_rpg_6b3"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Grenadier */
if (_condition && _role in ["GRD"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74m_gp25_npz"];
    _availableAttachments = ["rhsusf_acc_ACOG", "rhs_acc_dtk1983"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_tortila_grey", "rhs_tortila_emr"];
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
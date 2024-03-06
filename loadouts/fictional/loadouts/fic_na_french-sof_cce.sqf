/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * French special force team.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_CableTie", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhsusf_mag_7x45acp_MHP", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M583A1_white", "rhs_mag_m662_red", "rhs_mag_m661_green", "rhs_mag_m713_Red"];
private _defGrenades = ["rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_m67"];
private _defUniforms = ["CUP_U_B_HIL_ACU_Kneepad_Gloves_CCE"];
private _defWeapons = ["rhsusf_bino_m24", "rhsusf_weap_m1911a1"];
private _defVests = ["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Olive2", "CUP_V_B_Ciras_Olive3", "CUP_V_B_Ciras_Olive4"];
private _defBackpacks = ["UNS_Ammopack"];
private _defHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_CZ_Helmet09", "CUP_H_Booniehat_CCE"];
private _defFacewear = ["UK3CB_G_Neck_Shemag_Tan", "CUP_G_ESS_BLK"];
private _defAttachments = [];

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["cup_optic_aimpoint_5000"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["cup_optic_aimpoint_5000", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "kat_larynx", "kat_chestSeal", "cup_optic_aimpoint_5000"];
    _availableBackpacks = ["UNS_ARMY_MED"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_m249_para"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727_M203"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["cup_optic_aimpoint_5000"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727", "rhs_weap_m72a7"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["cup_optic_aimpoint_5000"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Explosive Specialist
if (_condition && _role in ["ESP"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_Colt727"];
    _availableMagazines = ["rhs_ec200_mag", "rhs_ec400_mag", "CUP_TimeBomb_M", "rhsusf_m112_mag", "rhsusf_m112x4_mag"];
    _availableVests = [];
    _availableItems = ["cup_optic_aimpoint_5000", "ACE_Clacker"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
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
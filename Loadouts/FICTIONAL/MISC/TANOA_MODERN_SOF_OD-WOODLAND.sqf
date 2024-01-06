params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["rhsusf_ANPVS_14", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_30Rnd_545x39_7N10_AK"];
private _defGrenades = [];
private _defUniforms = ["CUP_U_CRYE_G3C_M81", "CUP_U_CRYE_G3C_M81_RGR"];
private _defWeapons = ["rhsusf_bino_m24", "rhs_weap_rpg75"];
private _defVests = ["CUP_V_B_Ciras_Olive2", "CUP_V_B_Ciras_Olive"];
private _defBackpacks = [];
private _defHeadgear = ["CUP_H_CZ_Helmet10"];
private _defFacewear = ["CUP_G_ESS_BLK"];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak74m_zenitco01_b33"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["tier1_exps3_0_g33_black_up", "tier1_exps3_0_black", "cup_acc_anpeq_15_top_flashlight_black_l", "rhs_acc_dtk1", "rhsusf_acc_grip2", "rhs_acc_grip_rk6", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip3", "rhsusf_acc_su230a"];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
  [_unit, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = ["UK3CB_B_US_Backpack"];
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
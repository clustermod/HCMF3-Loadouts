params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACRE_PRC148", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhsusf_mag_7x45acp_MHP", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "rhs_mag_30Rnd_556x45_M855_Stanag"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["U_B_RBU_DCU_no", "U_B_RBU_DCU", "U_B_RBU_DCU_IR"];
private _defWeapons = ["rhsusf_bino_m24", "rhsusf_weap_m1911a1"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["tc2002_sb", "tc2002_s", "tc2002od2", "tc2002_od", "tc2002_sm", "tgc_psq36", "tgc_psq36b", "tgc_pvs23_base", "tgc_pvs23_band", "tgc_pvs23_bolle_a", "tgc_pvs23_bolle_b", "tgc_pvs23_bungee", "tgc_pvs23_special_m", "tgc_pvs23_special_n", "tgc_pvs23_compass", "tgc_pvs23_special_2", "tgc_pvs23_special", "tgc_pvs23_special_p", "tgc_pvs23_special_o"];
private _defFacewear = ["CUP_G_Oakleys_Clr", "LEN_Ess1", "G_Shades_tactical", "rhsusf_oakley_goggles_clr"];
private _defAttachments = [];

// Loadout made by Per_von_Harke with help from Aleks and Eric

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
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
    _availableWeapons = ["rhs_weap_m4a1_carryhandle"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_n"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
    _availableBackpacks = ["tgc_tssi_m9_hpc", "CUP_B_AssaultPack_Coyote"];
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
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = [];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
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
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = [];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle_m203"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// JTAC or FAC
if (_condition && _role in ["JTAC"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle_m203"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle", "rhs_weap_m72a7"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle", "rhs_weap_M136_hp", "rhs_weap_M136_hedp", "rhs_weap_M136"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle", "rhs_weap_fgm148"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// EOD
if (_condition && _role in ["EOD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle"];
    _availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["ACE_Clacker", "ACE_DefusalKit", "cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};


// Engineer
if (_condition && _role in ["ENG"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_carryhandle"];
    _availableMagazines = [];
    _availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
    _availableItems = ["ToolKit", "cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
    _availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
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

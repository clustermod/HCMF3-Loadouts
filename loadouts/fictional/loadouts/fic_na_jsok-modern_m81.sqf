params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ItemAndroid", "rhsusf_ANPVS_15", "ACRE_PRC152", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["Tier1_Glock22", "rhsusf_bino_lrf_Vector21", "rhs_weap_m72a7"];
private _defAttachments = [];
private _defMagazines = ["Tier1_250Rnd_762x51_Belt_M80A1_EPR", "rhsusf_200Rnd_556x45_box", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "Tier1_20Rnd_40SW_FMJ", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_CRYE_G3C_M81"];
private _defVests = [];
private _defBackpacks = ["B_AssaultPack_rgr"];
private _defHeadgear = ["rhsusf_mich_bare_norotos_arc_alt"];
private _defFacewear = ["CUP_G_ESS_BLK"];
private _defAttachments = [];

//
// Made for Arma 3 Virtual MILSIM
//
// Made by Per_von_Harke
//


// Rifleman
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII_KAC"];
    _availableAttachments = ["tier1_eotech553_tan", "tier1_m4bii_la5_m300c_black_fl", "rhsusf_acc_grip2", "tier1_gangster_grip_black", "rhsusf_acc_rvg_blk"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Team leader
if (_condition && _role in ["SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII_KAC"];
    _availableAttachments = ["rhsusf_acc_su230a", "tier1_m4bii_la5_m300c_black_fl", "rhsusf_acc_grip2", "tier1_gangster_grip_black", "rhsusf_acc_rvg_blk"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_Kitbag_rgr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Medic
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII_KAC"];
    _availableAttachments = ["tier1_eotech553_tan", "tier1_m4bii_la5_m300c_black_fl", "rhsusf_acc_grip2", "tier1_gangster_grip_black", "rhsusf_acc_rvg_blk"                    ];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_medicalbelt_rngr"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_minimi_para_railed"];
    _availableAttachments = ["rhsusf_acc_su230a", "cup_acc_anpeq_15", "tier1_saw_bipod_kac", "tier1_gangster_grip_black"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// MMG
if (_condition && _role in ["MMG"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m240B"];
    _availableAttachments = ["rhsusf_acc_su230a", "cup_acc_anpeq_15", "rhsusf_acc_ardec_m240", ""];
    _availableMagazines = ["rhsusf_100Rnd_762x51_m80a1epr", "Tier1_100Rnd_762x51_Belt_M80A1_EPR"];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII_M203"];
    _availableAttachments = ["tier1_eotech553_tan", "tier1_m4bii_la5_m300c_black_fl", "rhsusf_acc_grip2", "tier1_gangster_grip_black", "rhsusf_acc_rvg_blk"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// MAT
if (_condition && _role in ["MAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII_KAC", "launch_NLAW_F"];
    _availableAttachments = ["tier1_eotech553_tan", "tier1_m4bii_la5_m300c_black_fl", "rhsusf_acc_grip2", "tier1_gangster_grip_black", "rhsusf_acc_rvg_blk"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then {
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII_KAC"];
    _availableAttachments = ["tier1_eotech553_tan", "tier1_m4bii_la5_m300c_black_fl", "rhsusf_acc_grip2", "tier1_gangster_grip_black", "rhsusf_acc_rvg_blk"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
    _availableItems = ["ToolKit"];
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
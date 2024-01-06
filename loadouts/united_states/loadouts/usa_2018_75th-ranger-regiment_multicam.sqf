params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ItemAndroid", "rhsusf_ANPVS_15", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "rhs_mag_30Rnd_556x45_Mk262_PMAG", "rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan", "rhsusf_mag_17Rnd_9x19_FMJ", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T", "CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "rhsusf_100Rnd_762x51_m80a1epr", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_CRYE_G3C_MC_US"];
private _defWeapons = ["rhsusf_weap_glock17g4", "rhsusf_bino_lrf_Vector21"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhsusf_opscore_mar_ut_pelt"];
private _defFacewear = ["CUP_G_Oakleys_Clr"];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
// Note that the CPC

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_nt4_tan", "tier1_eotech553_tan", "rhsusf_acc_su230a_c",      "tier1_mk18_la5_m300c_black", "tier1_m4bii_la5_m300c_black_fl"];
    _availableBackpacks = ["ECPV1"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_tlbelt_mc"];
    _availableItems = ["rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_nt4_tan", "tier1_eotech553_tan", "rhsusf_acc_su230a_c",      "tier1_mk18_la5_m300c_black", "tier1_m4bii_la5_m300c_black_fl"];
    _availableBackpacks = ["ECPV1"];
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
    _availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_medicalbelt_mc"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal",   "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_nt4_tan", "tier1_eotech553_tan", "rhsusf_acc_su230a_c",      "tier1_mk18_la5_m300c_black", "tier1_m4bii_la5_m300c_black_fl"];
    _availableBackpacks = ["RATS"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m249_pip_S_para", "Tier1_M249_light_S_Desert"];
    _availableMagazines = ["rhsusf_200Rnd_556x45_soft_pouch_coyote"];
    _availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["tier1_eotech553_tan", "rhsusf_acc_su230a", "cup_acc_anpeq_15", "rhsusf_acc_sf3p556", "rhsusf_acc_saw_lw_bipod", "tier1_m249_la5_m600v_black", "tier1_saw_bipod_kac_desert"];
    _availableBackpacks = ["ECPV1"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG1"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m240B"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["rhsusf_acc_su230a", "cup_acc_anpeq_15", "rhsusf_acc_ardec_m240"];
    _availableBackpacks = ["ECPV1"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG2"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_Mk48"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["rhsusf_acc_ardec_m240", "cup_acc_anpeq_15", "rhsusf_acc_su230a", "tier1_eotech553_tan"];
    _availableBackpacks = ["ECPV1"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_m4a1_blockII_M203", "rhs_weap_mk18_m320"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_weaponsbelt_mc"];
    _availableItems = ["rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_nt4_tan", "tier1_eotech553_tan", "rhsusf_acc_su230a_c",      "tier1_mk18_la5_m300c_black", "tier1_m4bii_la5_m300c_black_fl"];
    _availableBackpacks = ["ECPV1"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_nt4_tan", "tier1_eotech553_tan", "rhsusf_acc_su230a_c",      "tier1_mk18_la5_m300c_black", "tier1_m4bii_la5_m300c_black_fl"];
    _availableBackpacks = ["ECPV1"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_nt4_tan", "tier1_eotech553_tan", "rhsusf_acc_su230a_c",      "tier1_mk18_la5_m300c_black", "tier1_m4bii_la5_m300c_black_fl"];
    _availableBackpacks = ["ECPV1"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["launch_MRAWS_green_F", "rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_communications_mc"];
    _availableItems = ["rhsusf_acc_anpeq15side", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_kac_grip", "rhsusf_acc_grip2", "rhsusf_acc_nt4_tan", "tier1_eotech553_tan", "rhsusf_acc_su230a_c",      "tier1_mk18_la5_m300c_black", "tier1_m4bii_la5_m300c_black_fl"];
    _availableBackpacks = ["ECPV1"];
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

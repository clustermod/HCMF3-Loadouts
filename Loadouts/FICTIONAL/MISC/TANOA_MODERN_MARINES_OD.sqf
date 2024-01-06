params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["rhsusf_ANPVS_15", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_mag_30Rnd_556x45_Mk262_PMAG", "UK3CB_BAF_762_200Rnd", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_100Rnd_762x51_m80a1epr", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEDP", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["rhs_uniform_g3_rgr"];
private _defWeapons = ["rhsusf_bino_m24", "rhsusf_weap_glock17g4"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhsusf_opscore_rg_cover_pelt"];
private _defFacewear = ["CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr"];
private _defAttachments = [];


// FICTIONAL
// Loadout made by Per_von_Harke
// If this is uncomplete which I don't remember atm pls message me on Discord.

// Rifleman
if (_condition && _role in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_blockII"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
	_availableUniforms = [];
  _availableWeapons = ["rhs_weap_m4a1_blockII"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
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
	_availableWeapons = ["rhs_weap_m4a1_blockII"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["TRYK_B_Medbag_OD"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249_pip_S_para"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["rhsusf_acc_su230a_c", "cup_acc_anpeq_15", "rhsusf_acc_grip4_bipod",  "rhsusf_acc_sfmb556"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m240B"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["rhsusf_acc_su230a_c", "cup_acc_anpeq_15", "rhsusf_acc_ardec_m240"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_blockII_M203"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_rngr"];
	_availableItems = ["cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
	_availableUniforms = [];
  	_availableWeapons = ["rhs_weap_m4a1_blockII", "launch_MRAWS_green_F"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr", "CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr"];
	_availableItems = ["cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_su230a_c", "rhsusf_acc_eotech", "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "cup_acc_anpeq_15"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
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
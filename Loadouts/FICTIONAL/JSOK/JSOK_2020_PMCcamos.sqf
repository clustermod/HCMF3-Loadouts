/* Get the unit's role */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "rhsusf_acc_grip2", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_grip3", "cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_rotex5_grey", "sma_eotech552", "sma_eotech552_3xdown", "rhsusf_acc_g33_xps3", "rhsusf_acc_eotech_xps3", "rhsusf_acc_su230a_c", "sma_micro_t2", "sma_elcan_specter_tan", "optic_mrd_black", "ACRE_PRC152", "tgc_pvs23_special_p", "tgc_pvs23_special_m", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_21Rnd_9x19_M17_Black", "rhs_mag_30Rnd_556x45_Mk262_PMAG", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = [];
private _defUniforms = ["CUP_I_B_PMC_Unit_39", "CUP_I_B_PMC_Unit_42", "CUP_I_B_PMC_Unit_38"];
private _defWeapons = ["rhsusf_bino_lrf_Vector21", "CUP_hgun_M17_Black"];
private _defVests = [];
private _defBackpacks = ["B_AssaultPack_cbr"];
private _defHeadgear = ["rhsusf_opscore_mar_ut_pelt"];
private _defFacewear = ["AGE_Balaclava_Black", "AGE_Balaclava_MCam"];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_tlbelt_mc"];
	_availableItems = [];
	_availableBackpacks = [];
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
	_availableWeapons = ["rhs_weap_mk18_KAC"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
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
	_availableWeapons = ["rhs_weap_m249_pip_S_para"];
	_availableMagazines = ["rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box"];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_saw_bipod"];
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
	_availableWeapons = ["rhs_weap_mk18_m320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_mc"];
	_availableItems = [];
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
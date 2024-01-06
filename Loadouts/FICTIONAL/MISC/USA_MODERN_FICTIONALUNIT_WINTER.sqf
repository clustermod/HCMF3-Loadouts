params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACRE_PRC152", "TAC_NV_snowshoe2", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_mag_30Rnd_556x45_Mk262_PMAG", "Tier1_20Rnd_9x19_FMJ", "Tier1_20Rnd_40SW_FMJ", "rhsusf_200Rnd_556x45_box"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
private _defWeapons = ["rhsusf_bino_m24", "Tier1_Glock22", "Tier1_Glock19_WAR"];
private _defVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_tlbelt_mc"];
private _defBackpacks = [];
private _defHeadgear = ["UK3CB_H_Beanie_02_Win"];
private _defFacewear = ["UK3CB_G_Bandanna_winter", "CUP_PMC_Facewrap_Winter", "CUP_G_PMC_Facewrap_Winter_Glasses_Dark", ""];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D10_SMR_CTR_Desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_grip2_tan", "tier1_exps3_0_desert", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan",    "tier1_10_ngal_m600v"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_SMR_CTR_Desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ItemAndroid", "tier1_razor_gen3_110_geissele_docter", "tier1_145_ngal_m300c", "rhsusf_acc_nt4_tan", "rhsusf_acc_grip2_tan", "rhsusf_acc_rvg_de", "tier1_harris_bipod_rvg_tan"];
	_availableBackpacks = ["3DAP"];
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
	_availableWeapons = ["Tier1_HK416D10_SMR_CTR_Desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "rhsusf_acc_grip2_tan", "tier1_exps3_0_desert", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan",    "tier1_10_ngal_m600v"];
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
	_availableWeapons = ["rhs_weap_m249_pip_S_para"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["tier1_exps3_0_black", "cup_acc_anpeq_15_flashlight_black_l", "rhsusf_acc_nt4_black", "tier1_saw_bipod_kac", "rhsusf_acc_grip4_bipod"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m72a7", "Tier1_HK416D10_SMR_CTR_Desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_grip2_tan", "tier1_exps3_0_desert", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan",    "tier1_10_ngal_m600v"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// EOD
if (_condition && _role in ["EOD"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D10_SMR_CTR_Desert"];
	_availableMagazines = ["rhs_ec200_mag", "rhs_ec400_mag", "CUP_TimeBomb_M", "rhsusf_m112_mag", "rhsusf_m112x4_mag"];
	_availableVests = [];
	_availableItems = ["ACE_Clacker", "rhsusf_acc_grip2_tan", "tier1_exps3_0_desert", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan",    "tier1_10_ngal_m600v"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Spotter
if (_condition && _role in ["DMR"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_M110k5_ACS"];
	_availableMagazines = ["rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag"];
	_availableVests = [];
	_availableItems = ["tier1_urx4_ngal_m600v_alt", "tier1_socom762_2_de", "tier1_harris_bipod_rvg_mlok_tan"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = ["TAC_W_ghillie_O1"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Marksman
if (_condition && _role in ["MRK"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_XM2010"];
	_availableMagazines = ["CUP_5Rnd_762x67_G22", "rhsusf_5Rnd_300winmag_xm2010"];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_15_black", "rhsusf_acc_premier_low", "rhsusf_acc_m2010s_wd", "tier1_harris_bipod_black"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = ["TAC_W_ghillie_O1"];
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
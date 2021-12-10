private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_PRC152", "TAC_NV_snowshoe2", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_mag_30Rnd_556x45_Mk262_PMAG", "Tier1_20Rnd_9x19_FMJ", "Tier1_20Rnd_40SW_FMJ", "rhsusf_200Rnd_556x45_box"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
_defWeapons = ["rhsusf_bino_m24", "Tier1_Glock22", "Tier1_Glock19_WAR"];
_defVests = ["CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_tlbelt_mc"];
_defBackpacks = [];
_defHeadgear = ["UK3CB_H_Beanie_02_Win"];
_defFacewear = ["UK3CB_G_Bandanna_winter", "CUP_PMC_Facewrap_Winter", "CUP_G_PMC_Facewrap_Winter_Glasses_Dark", ""];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D10_SMR_CTR_Desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_grip2_tan", "tier1_exps3_0_desert", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan",    "tier1_10_ngal_m600v"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_SMR_CTR_Desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ItemAndroid", "tier1_razor_gen3_110_geissele_docter", "tier1_145_ngal_m300c", "rhsusf_acc_nt4_tan", "rhsusf_acc_grip2_tan", "rhsusf_acc_rvg_de", "tier1_harris_bipod_rvg_tan"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D10_SMR_CTR_Desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "rhsusf_acc_grip2_tan", "tier1_exps3_0_desert", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan",    "tier1_10_ngal_m600v"];
	_availableBackpacks = ["RATS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249_pip_S_para"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["tier1_exps3_0_black", "cup_acc_anpeq_15_flashlight_black_l", "rhsusf_acc_nt4_black", "tier1_saw_bipod_kac", "rhsusf_acc_grip4_bipod"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m72a7", "Tier1_HK416D10_SMR_CTR_Desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_grip2_tan", "tier1_exps3_0_desert", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan",    "tier1_10_ngal_m600v"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D10_SMR_CTR_Desert"];
	_availableMagazines = ["rhs_ec200_mag", "rhs_ec400_mag", "CUP_TimeBomb_M", "rhsusf_m112_mag", "rhsusf_m112x4_mag"];
	_availableVests = [];
	_availableItems = ["ACE_Clacker", "rhsusf_acc_grip2_tan", "tier1_exps3_0_desert", "rhsusf_acc_grip2", "rhsusf_acc_rvg_de", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan",    "tier1_10_ngal_m600v"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Spotter
if (_role == "DMR") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_M110k5_ACS"];
	_availableMagazines = ["rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag"];
	_availableVests = [];
	_availableItems = ["tier1_urx4_ngal_m600v_alt", "tier1_socom762_2_de", "tier1_harris_bipod_rvg_mlok_tan"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = ["TAC_W_ghillie_O1"];
	_availableFacewear = [];
};

// Marksman
if (_role == "MRK") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_XM2010"];
	_availableMagazines = ["CUP_5Rnd_762x67_G22", "rhsusf_5Rnd_300winmag_xm2010"];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_15_black", "rhsusf_acc_premier_low", "rhsusf_acc_m2010s_wd", "tier1_harris_bipod_black"];
	_availableBackpacks = ["3DAP"];
	_availableHeadgear = ["TAC_W_ghillie_O1"];
	_availableFacewear = [];
};


//Populate with predefined items and whatever is already in the crate
_backpacks 	= (_availableBackpacks + _defBackpacks);
_items 		= (_availableVests + _availableItems + _availableUniforms + _defUniforms + _defVests + _defItems + _defFacewear + _availableFacewear + _defHeadgear + _availableHeadgear);
_magazines 	= (_availableMagazines + _defGrenades + _defMagazines);
_weapons 	= (_availableWeapons + _defWeapons);

if (!_rearmOnly) then {
	[_obj, _backpacks] 	call BIS_fnc_addVirtualBackpackCargo;
	[_obj, _items	 ] 	call BIS_fnc_addVirtualItemCargo;
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, _weapons	 ] 	call BIS_fnc_addVirtualWeaponCargo;
} else {
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, (_availableItems + _defItems)] call BIS_fnc_addVirtualItemCargo;
};


player setVariable ["EMF_KA_permittedGear", [_backpacks, _items, _magazines, _weapons], true];

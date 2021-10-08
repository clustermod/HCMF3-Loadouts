private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_PRC152", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "tgc_pvs23_band", "tgc_pvs23_base", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", "rhs_mag_30Rnd_556x45_Mk318_PMAG", "CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "CUP_21Rnd_9x19_M17_Black", "rhsusf_mag_17Rnd_9x19_JHP",       "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["CUP_U_CRYE_G3C_M81_RGR", "CUP_U_CRYE_G3C_M81_RGR_US", "CUP_U_CRYE_G3C_M81_US_V3", "CUP_U_CRYE_G3C_M81_US_V2"];
_defWeapons = ["rhsusf_weap_glock17g4", "CUP_hgun_M17_Black", "rhsusf_bino_lerca_1200_black"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt"];
_defFacewear = [];


//
// Loadout made by Per_von_Harke with assistance from AutisticBalistic
// may not be 100% accurate

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC", "rhsusf_bino_m24"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_coy", "CUP_V_JPC_Fastbelt_coy", "CUP_V_JPC_medicalbelt_coy", "CUP_V_JPC_Fast_coy", "CUP_V_JPC_medical_coy", "CUP_V_JPC_communications_coy", "CUP_V_JPC_lightbelt_coy", "CUP_V_JPC_communications_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_medical_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech", "rhsusf_acc_su230_c", "rhsusf_acc_eotech_xps3", "sma_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_tan_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light",  "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["UK3CB_ANA_B_B_ASS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC", "rhsusf_bino_m24"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_communicationsbelt_rngr"];
	_availableItems = ["rhsusf_acc_eotech", "rhsusf_acc_su230_c", "rhsusf_acc_eotech_xps3", "sma_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_tan_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light",  "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["UK3CB_ANA_B_B_ASS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC", "rhsusf_bino_m24"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal",              "rhsusf_acc_eotech", "rhsusf_acc_su230_c", "rhsusf_acc_eotech_xps3", "sma_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_tan_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light",  "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_Mk48"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_coy", "CUP_V_JPC_Fastbelt_coy", "CUP_V_JPC_medicalbelt_coy", "CUP_V_JPC_Fast_coy", "CUP_V_JPC_medical_coy", "CUP_V_JPC_communications_coy", "CUP_V_JPC_lightbelt_coy", "CUP_V_JPC_communications_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_medical_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["rhsusf_acc_su230", "rhsusf_acc_su230_c", "rhsusf_acc_anpeq15side"];
	_availableBackpacks = ["UK3CB_ANA_B_B_ASS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_m320", "rhs_weap_m4a1_blockII_M203"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_mc", "CUP_V_JPC_weaponsbelt_coy", "CUP_V_JPC_weapons_mc", "CUP_V_JPC_weapons_coy"];
	_availableItems = ["rhsusf_acc_eotech", "rhsusf_acc_su230_c", "rhsusf_acc_eotech_xps3", "sma_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_tan_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light",  "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["UK3CB_ANA_B_B_ASS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC", "rhsusf_bino_m24",  "rhs_weap_M136", "rhs_weap_M136_hedp", "rhs_weap_M136_hp"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_coy", "CUP_V_JPC_Fastbelt_coy", "CUP_V_JPC_medicalbelt_coy", "CUP_V_JPC_Fast_coy", "CUP_V_JPC_medical_coy", "CUP_V_JPC_communications_coy", "CUP_V_JPC_lightbelt_coy", "CUP_V_JPC_communications_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_medical_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech", "rhsusf_acc_su230_c", "rhsusf_acc_eotech_xps3", "sma_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_tan_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light",  "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["UK3CB_ANA_B_B_ASS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC", "rhsusf_bino_m24",   "rhs_weap_maaws"];
	_availableMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT"];
	_availableVests = ["CUP_V_JPC_communicationsbelt_coy", "CUP_V_JPC_Fastbelt_coy", "CUP_V_JPC_medicalbelt_coy", "CUP_V_JPC_Fast_coy", "CUP_V_JPC_medical_coy", "CUP_V_JPC_communications_coy", "CUP_V_JPC_lightbelt_coy", "CUP_V_JPC_communications_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_medical_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["rhs_optic_maaws", "rhsusf_acc_eotech", "rhsusf_acc_su230_c", "rhsusf_acc_eotech_xps3", "sma_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_tan_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light",  "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["UK3CB_ANA_B_B_ASS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_KAC", "rhs_weap_m4a1_blockII_KAC", "rhsusf_bino_m24"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_coy", "CUP_V_JPC_Fastbelt_coy", "CUP_V_JPC_medicalbelt_coy", "CUP_V_JPC_Fast_coy", "CUP_V_JPC_medical_coy", "CUP_V_JPC_communications_coy", "CUP_V_JPC_lightbelt_coy", "CUP_V_JPC_communications_mc", "CUP_V_JPC_Fast_mc", "CUP_V_JPC_medical_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc", "CUP_V_JPC_lightbelt_mc", "CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["rhsusf_acc_eotech", "rhsusf_acc_su230_c", "rhsusf_acc_eotech_xps3", "sma_eotech", "cup_acc_anpeq_15_top_flashlight_tan_l", "cup_acc_anpeq_15_tan_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light",  "rhsusf_acc_grip2", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_nt4_tan"];
	_availableBackpacks = ["UK3CB_ANA_B_B_ASS"];
	_availableHeadgear = [];
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

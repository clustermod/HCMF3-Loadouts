params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["rhsusf_ANPVS_15", "cup_acc_glock17_flashlight", "sma_supp1bod_556", "cup_acc_anpeq_15_od", "cup_acc_flashlight_wdl", "ACE_CableTie",                                                                                            "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_FMJ"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["CUP_U_CRYE_MCAM_NP2_Full"];
_defWeapons = ["rhsusf_weap_glock17g4", "rhsusf_bino_lrf_Vector21"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["CUP_H_OpsCore_Covered_MCAM", "CUP_H_OpsCore_Covered_MCAM_SF"];
_defFacewear = ["rhs_googles_clear", "rhs_googles_black", "CUP_G_ESS_RGR", "CUP_RUS_Balaclava_rgr", "CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_tan"];

//Loadout made by Per_von_Harke
// Sights are not realistic for this unit as CC does not have a mod for the actual used sigts

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["SMA_Steyr_AUG_F"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_lightbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_light_mc", "CUP_V_CPC_Fast_mc"];
	_availableItems = ["ACE_DAGR", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds_c", "sma_supp1tod_556", "cup_acc_flashlight_wdl", "cup_acc_llm_od", "sma_elcan_specter_tan", "sma_elcan_specter_tan_rds"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader / Squad leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["SMA_Steyr_AUG_F"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_mc", "CUP_V_CPC_tl_mc", "CUP_V_CPC_communications_mc", "CUP_V_CPC_communicationsbelt_mc"];
	_availableItems = ["ACE_microDAGR", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds_c", "sma_supp1tod_556", "cup_acc_flashlight_wdl", "cup_acc_llm_od", "sma_elcan_specter_tan", "sma_elcan_specter_tan_rds"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	[player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["SMA_Steyr_AUG_F"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_mc", "CUP_V_CPC_medical_mc"];
	_availableItems = ["ACE_DAGR", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds_c", "sma_supp1tod_556", "cup_acc_flashlight_wdl", "cup_acc_llm_od", "sma_elcan_specter_tan", "sma_elcan_specter_tan_rds"];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["SMA_Steyr_AUG_F", "rhs_weap_M136", "rhs_weap_M136_hedp", "rhs_weap_M136_hp"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_lightbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_light_mc", "CUP_V_CPC_Fast_mc"];
	_availableItems = ["ACE_DAGR", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds_c", "sma_supp1tod_556", "cup_acc_flashlight_wdl", "cup_acc_llm_od", "sma_elcan_specter_tan", "sma_elcan_specter_tan_rds"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["SMA_Steyr_AUG_F"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_lightbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_light_mc", "CUP_V_CPC_Fast_mc"];
	_availableItems = ["ACE_DAGR", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds_c", "sma_supp1tod_556", "cup_acc_flashlight_wdl", "cup_acc_llm_od", "sma_elcan_specter_tan", "sma_elcan_specter_tan_rds"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = [];
	_availableWeapons = ["SMA_Steyr_AUG_F", "UK3CB_BAF_Soflam_Laserdesignator", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_lightbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_light_mc", "CUP_V_CPC_Fast_mc", "CUP_V_CPC_weapons_mc", "CUP_V_CPC_weaponsbelt_mc"];
	_availableItems = ["ACE_microDAGR", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds_c", "sma_supp1tod_556", "cup_acc_flashlight_wdl", "cup_acc_llm_od", "sma_elcan_specter_tan", "sma_elcan_specter_tan_rds"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Breacher
if (_role == "BRC") then
{
	_availableUniforms = [];
	_availableWeapons = ["SMA_Steyr_AUG_F", "CUP_sgun_M1014_Entry"];
	_availableMagazines = ["rhsusf_5Rnd_00Buck", "rhsusf_5Rnd_Slug"];
	_availableVests = ["CUP_V_CPC_lightbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_light_mc", "CUP_V_CPC_Fast_mc"];
	_availableItems = ["ACE_DAGR", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds_c", "sma_supp1tod_556", "cup_acc_flashlight_wdl", "cup_acc_llm_od", "sma_elcan_specter_tan", "sma_elcan_specter_tan_rds"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = ["SMA_Steyr_AUG_F"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_lightbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_light_mc", "CUP_V_CPC_Fast_mc"];
	_availableItems = ["ACE_DAGR", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds_c", "sma_supp1tod_556", "cup_acc_flashlight_wdl", "cup_acc_llm_od", "sma_elcan_specter_tan", "sma_elcan_specter_tan_rds"];
	_availableBackpacks = ["B_AssaultPack_mcamo"];
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

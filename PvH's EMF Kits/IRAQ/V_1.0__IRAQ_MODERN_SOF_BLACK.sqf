params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACE_adenosine", "ACRE_SEM52SL", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["murshun_cigs_matches", "murshun_cigs_cigpack"];
_defGrenades = [];
_defUniforms = ["LOP_U_IA_Fatigue_SF_01","LOP_U_IA_Fatigue_SF_03"];
_defWeapons = [];
_defVests = ["rhsusf_mbav_light","rhsusf_mbav","rhsusf_mbav_rifleman"];
_defBackpacks = [];
_defHeadgear = ["H_Mich_BK_W_G","H_Mich_BK_W3_G","PO_H_mich_bare_isof_1_nortos_blk","PO_H_mich_bare_isof_1_nortos_alt_blk","PO_H_mich_bare_isof_1_nortos_hs_blk","PO_H_mich_bare_isof_2_nortos_blk","PO_H_mich_bare_isof_2_nortos_alt_blk","PO_H_mich_bare_isof_2_nortos_hs_blk","PO_H_mich_bare_isof_3_nortos_blk","PO_H_mich_bare_isof_3_nortos_alt_blk","PO_H_mich_bare_isof_3_nortos_hs_blk","H_Cap_grn","H_Cap_blk","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_EP_Grey","CUP_H_PMC_Cap_EP_Tan"];
_defFacewear = ["rhs_googles_black","rhs_googles_orange","rhs_googles_clear","CUP_G_RUS_Balaclava_Ratnik","CUP_G_WristWatch","rhsusf_oakley_goggles_clr","G_ESS_black","CUP_G_ESS_BLK","CUP_RUS_Balaclava_blk","G_Bandanna_oli","G_Bandanna_blk"];

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_2_flashlight_black_l","rhsusf_acc_rvg_blk","rhsusf_acc_grip3","rhsusf_acc_rvg_de","rhsusf_acc_kac_grip","rhsusf_acc_sf3p556","rhsusf_acc_sfmb556","rhsusf_acc_eotech_552","rksl_optic_eot552","sma_eotech552","rhsusf_acc_compm4"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	
// Breacher
if (_role == "BRC") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_acc_anpeq_2_flashlight_black_l","rhsusf_acc_rvg_blk","rhsusf_acc_grip3","rhsusf_acc_rvg_de","rhsusf_acc_kac_grip","rhsusf_acc_sf3p556","rhsusf_acc_sfmb556","rhsusf_acc_eotech_552","rksl_optic_eot552","sma_eotech552","rhsusf_acc_compm4"];
	_availableBackpacks = ["ACE_TacticalLadder_Pack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle","rhsusf_bino_m24"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACRE_PRC148"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle"];
	_availableMagazines = [];
	_availableVests = [""rhsusf_mbav_medic"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit"];
	_availableBackpacks = ["UK3CB_BAF_B_Kitbag_TAN","B_Kitbag_cbr"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["rhsusf_mbav_mg"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249_pip"];
	_availableMagazines = [];
	_availableVests = ["rhsusf_mbav_mg"];
	_availableItems = ["rhsusf_acc_saw_bipod","rhsusf_acc_sf3p556","rhsusf_acc_sfmb556"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["rhs_rpg_empty"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
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

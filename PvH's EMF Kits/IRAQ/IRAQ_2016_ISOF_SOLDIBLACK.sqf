private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_PRC152", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_adenosine", "ACRE_SEM52SL", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_mag_30Rnd_556x45_M855_Stanag", "rhsusf_200Rnd_556x45_box", "rhsusf_mag_15Rnd_9x19_JHP", "rhsusf_mag_15Rnd_9x19_FMJ", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["LOP_U_IA_Fatigue_SF_01","LOP_U_IA_Fatigue_SF_03"];
_defWeapons = ["rhsusf_weap_m9"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["CUP_NVG_PVS14", "H_Mich_BK_W_G","H_Mich_BK_W3_G","PO_H_mich_bare_isof_1_nortos_blk","PO_H_mich_bare_isof_1_nortos_alt_blk","PO_H_mich_bare_isof_1_nortos_hs_blk","PO_H_mich_bare_isof_2_nortos_blk","PO_H_mich_bare_isof_2_nortos_alt_blk","PO_H_mich_bare_isof_2_nortos_hs_blk","PO_H_mich_bare_isof_3_nortos_blk","PO_H_mich_bare_isof_3_nortos_alt_blk","PO_H_mich_bare_isof_3_nortos_hs_blk","H_Cap_grn","H_Cap_blk","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_EP_Grey","CUP_H_PMC_Cap_EP_Tan"];
_defFacewear = ["TRYK_kio_balaclavas", "n_facemask_skl", "CUP_RUS_Balaclava_blk"];

// Rifleman
if (_role == "RFL") then

	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle"];
	_availableMagazines = [];
	_availableVests = ["rhsusf_mbav_rifleman"];
	_availableItems = ["rhsusf_acc_compm4", "rhsusf_acc_eotech_552", "cup_optic_compm2_low", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_flashlight", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["TAC_MTAP_CY2"];
	_availableHeadgear = [];
	_availableFacewear = [];

// Breacher
if (_role == "BRC") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle", "CUP_sgun_M1014_Entry"];
	_availableMagazines = ["rhsusf_5Rnd_Slug", "rhsusf_5Rnd_00Buck"];
	_availableVests = ["rhsusf_mbav_rifleman"];
	_availableItems = ["rhsusf_acc_compm4", "rhsusf_acc_eotech_552", "cup_optic_compm2_low", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_flashlight", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["ACE_TacticalLadder_Pack", "TAC_MTAP_CY2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle","rhsusf_bino_m24"];
	_availableMagazines = [];
	_availableVests = ["rhsusf_mbav_rifleman"];
	_availableItems = ["rhsusf_acc_compm4", "rhsusf_acc_eotech_552", "cup_optic_compm2_low", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_flashlight", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["TAC_MTAP_CY2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle"];
	_availableMagazines = ["rhsusf_mbav_medic"];
	_availableVests = ["rhsusf_mbav_medic"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal",  "rhsusf_acc_compm4", "rhsusf_acc_eotech_552", "cup_optic_compm2_low", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_flashlight", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["CUP_B_AssaultPack_Coyote"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249_pip"];
	_availableMagazines = [];
	_availableVests = ["rhsusf_mbav_mg"];
	_availableItems = ["rhsusf_acc_saw_bipod"];
	_availableBackpacks = ["TAC_MTAP_CY2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4_carryhandle_m203"];
	_availableMagazines = ["rhsusf_mbav_grenadier"];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_grip_m203_blk", "rhsusf_acc_compm4", "rhsusf_acc_eotech_552", "cup_optic_compm2_low", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_flashlight"];
	_availableBackpacks = ["TAC_MTAP_CY2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_rpg7", "rhs_weap_m4_carryhandle"];
	_availableMagazines = ["rhs_rpg7_PG7VS_mag", "rhs_rpg7_OG7V_mag"];
	_availableVests = ["rhsusf_mbav_rifleman"];
	_availableItems = ["rhsusf_acc_compm4", "rhsusf_acc_eotech_552", "cup_optic_compm2_low", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_flashlight", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["rhs_rpg_2"];
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

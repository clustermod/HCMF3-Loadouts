private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_PRC152", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "rhs_1PN138", "rhsusf_acc_grip2", "rhs_acc_grip_rk6", "rhsusf_acc_rvg_blk", "rhsusf_acc_rvg_de", "cup_muzzle_snds_kzrzp_ak762", "tier1_exps3_0_3xmag_desert_up", "tier1_exps3_0_desert","tier1_exps3_0_black", "tier1_exps3_0_3xmag_black_up", "rhs_acc_ak5", "rhs_acc_dtk2", "rhs_acc_dtk3", "cup_muzzle_snds_kzrzp_ak545", "rhs_acc_perst3_2dp_light_h", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_762x39mm_polymer", "rhs_mag_9x19_17"];
_defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
_defUniforms = ["CUP_U_CRYE_G3C_MC_V3"];
_defWeapons = ["rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak103_zenitco01_b33", "rhs_pdu4", "rhs_weap_pya", "rhs_weap_rpg26"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["CUP_H_OpsCore_Covered_MCAM_SF"];
_defFacewear = ["UK3CB_G_Balaclava2_DES", "CUP_G_RUS_Balaclava_Ratnik"];

//
// Made for Arma 3 Virtual MILSIM
// This loadout is also nearly completely fictional and only tries to imitate the look and feel of modern Speznas.
// Because at this current time Cluster Community does not have mods for those units in their modlist.
// It also only has very few roles because it was made for one specific mission.
//
// Loadout made by Per_von_Harke

// Rifleman
if (_role == "JTAC") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc"];
	_availableItems = ["ItemAndroid", "ACRE_PRC117F"];
	_availableBackpacks = ["ECPV2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc"];
	_availableItems = ["ItemAndroid"];
	_availableBackpacks = ["ECPV1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "ItemAndroid"];
	_availableBackpacks = ["RATS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Explosives Specialist
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = ["rhs_ec200_mag", "rhs_ec400_mag", "CUP_TimeBomb_M", "rhsusf_m112_mag", "rhsusf_m112x4_mag"];
	_availableVests = ["CUP_V_JPC_communicationsbelt_mc"];
	_availableItems = ["ItemAndroid", "ACE_Clacker", "ACE_DefusalKit"];
	_availableBackpacks = ["ECPV1"];
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

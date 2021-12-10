private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["rhsusf_ANPVS_15", "ItemAndroid", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "Tier1_250Rnd_762x51_Belt_M80A1_EPR", "Tier1_250Rnd_762x51_Belt_M993_AP", "rhsusf_mag_17Rnd_9x19_FMJ", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT"];
_defGrenades = ["ACE_Chemlight_IR", "rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["CUP_U_CRYE_G3C_MC_US"];
_defWeapons = ["rhsusf_weap_glock17g4", "Tier1_Glock19_Urban"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["CUP_H_OpsCore_Covered_MCAM_US_SF"];
_defFacewear = ["rhs_googles_black", "rhs_googles_clear", "CUP_G_WristWatch", "CUP_G_Tan_Scarf_Shades_GPSCombo", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];


//
// Loadout made by Per_von_Harke
/*
List of Weapons for crates:
"rhs_weap_m72a7"
"rhs_weap_M136_hp"
"rhs_weap_M136_hedp"
"rhs_weap_M136"
"rhs_weap_fgm148"
"rhs_fgm148_magazine_AT"
"launch_MRAWS_green_F"
*/
// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_SR16_CQB_Mod2_CTR_FDE", "Tier1_SR16_Carbine_Mod2_CTR_FDE"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["tier1_exps3_0_tano", "tier1_exps3_0_desert", "tier1_exps3_0_riser_tano", "tier1_exps3_0_riser_desert", "tier1_afg_mlok_fde", "tier1_mvg_mlok_fde", "tier1_rvg_mlok_fde", "tier1_afg_mlok_black", "tier1_mvg_mlok_black", "tier1_rvg_mlok_black", "bwa3_muzzle_snds_rotex_iiic_tan", "tier1_urx4_la5_m600v", "tier1_urx4_la5_m603v"];
	_availableBackpacks = ["ECPV1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_SR16_CQB_Mod2_CTR_FDE", "Tier1_SR16_Carbine_Mod2_CTR_FDE"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["rhsusf_acc_su230_c", "tier1_afg_mlok_fde", "tier1_mvg_mlok_fde", "tier1_rvg_mlok_fde", "tier1_afg_mlok_black", "tier1_mvg_mlok_black", "tier1_rvg_mlok_black", "bwa3_muzzle_snds_rotex_iiic_tan", "tier1_urx4_la5_m600v", "tier1_urx4_la5_m603v"];
	_availableBackpacks = ["ECPV2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["Tier1_SR16_CQB_Mod2_CTR_FDE", "Tier1_SR16_Carbine_Mod2_CTR_FDE"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "tier1_exps3_0_tano", "tier1_exps3_0_desert", "tier1_exps3_0_riser_tano", "tier1_exps3_0_riser_desert", "tier1_afg_mlok_fde", "tier1_mvg_mlok_fde", "tier1_rvg_mlok_fde", "tier1_afg_mlok_black", "tier1_mvg_mlok_black", "tier1_rvg_mlok_black", "bwa3_muzzle_snds_rotex_iiic_tan", "tier1_urx4_la5_m600v", "tier1_urx4_la5_m603v"];
	_availableBackpacks = ["RATS"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_MK46_Mod1_Desert"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["tier1_saw_bipod_kac_desert", "rhsusf_acc_sf3p556", "tier1_mk46mod1_la5_m603v_fl", "rhsusf_acc_su230_c", "tier1_exps3_0_desert"];
	_availableBackpacks = ["ECPV1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m240B"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["rhsusf_acc_su230_c", "cup_acc_anpeq_15", "rhsusf_acc_ardec_m240"];
	_availableBackpacks = ["ECPV1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_SR16_CQB_Mod2_CTR_FDE", "Tier1_SR16_Carbine_Mod2_CTR_FDE", "rhs_weap_M136", "rhs_weap_M136_hedp", "rhs_weap_M136_hp"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["tier1_exps3_0_tano", "tier1_exps3_0_desert", "tier1_exps3_0_riser_tano", "tier1_exps3_0_riser_desert", "tier1_afg_mlok_fde", "tier1_mvg_mlok_fde", "tier1_rvg_mlok_fde", "tier1_afg_mlok_black", "tier1_mvg_mlok_black", "tier1_rvg_mlok_black", "bwa3_muzzle_snds_rotex_iiic_tan", "tier1_urx4_la5_m600v", "tier1_urx4_la5_m603v"];
	_availableBackpacks = ["ECPV1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_SR16_CQB_Mod2_CTR_FDE", "Tier1_SR16_Carbine_Mod2_CTR_FDE", "launch_MRAWS_green_F"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["tier1_exps3_0_tano", "tier1_exps3_0_desert", "tier1_exps3_0_riser_tano", "tier1_exps3_0_riser_desert", "tier1_afg_mlok_fde", "tier1_mvg_mlok_fde", "tier1_rvg_mlok_fde", "tier1_afg_mlok_black", "tier1_mvg_mlok_black", "tier1_rvg_mlok_black", "bwa3_muzzle_snds_rotex_iiic_tan", "tier1_urx4_la5_m600v", "tier1_urx4_la5_m603v"];
	_availableBackpacks = ["ECPV1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// DMR
if (_role == "DMR") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_SR25_tan"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["tier1_leupoldm3a_adm_desert", "tier1_sr25_la5_side", "tier1_sr25s_tan", "tier1_harris_bipod_tan"];
	_availableBackpacks = ["ECPV1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = ["Tier1_SR16_CQB_Mod2_CTR_FDE", "Tier1_SR16_Carbine_Mod2_CTR_FDE"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc", "CUP_V_JPC_Fastbelt_mc"];
	_availableItems = ["tier1_exps3_0_tano", "tier1_exps3_0_desert", "tier1_exps3_0_riser_tano", "tier1_exps3_0_riser_desert", "tier1_afg_mlok_fde", "tier1_mvg_mlok_fde", "tier1_rvg_mlok_fde", "tier1_afg_mlok_black", "tier1_mvg_mlok_black", "tier1_rvg_mlok_black", "bwa3_muzzle_snds_rotex_iiic_tan", "tier1_urx4_la5_m600v", "tier1_urx4_la5_m603v"];
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

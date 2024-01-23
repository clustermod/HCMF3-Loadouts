/*
 * Author: Eric
 * U.S. Delta forces
 *
 * cc_core_v5
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACRE_PRC148", "tgc_pvs23_base", "tgc_pvs23_band", "tgc_pvs23_bolle_a", "tgc_pvs23_bolle_b", "tgc_pvs23_bungee", "tgc_pvs23_special_m", "tgc_pvs23_special_n", "tgc_pvs23_compass", "tgc_pvs23_special_2", "tgc_pvs23_special", "tgc_pvs23_special_p", "tgc_pvs23_special_o", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["CUP_hgun_M9", "rhsusf_weap_m1911a1"];
private _defAttachments = [];
private _defMagazines = ["rhsusf_mag_15Rnd_9x19_FMJ", "rhsusf_mag_7x45acp_MHP"];
private _defGrenades = ["rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "Chemlight_blue", "Chemlight_green", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_White", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_m67", "rhs_mag_mk84"];
private _defUniforms = ["ACU_Ranger_BDU_2_w", "ACU_Belt_FG_Ranger_5_w", "ACU_Belt_Ranger_5_w", "ACU_FG_Kneepads_Ranger_2_w", "ACU_FG_Ranger_2_w", "ACU_Kneepads_Ranger_2_w", "ACU_FO_Ranger_2_w", "ACU_R_Kneepads_Ranger_2_w"];
private _defVests = ["tgc_cvcrck_od", "tgc_cvcrck_tan", "tgc_cvcrck_n", "tgc_cvcrck_m", "tgc_mtv_sg", "tgc_mtv_light", "tgc_mtv_lightp", "tgc_mtv_medium", "tgc_mtv_medium2", "tgc_mtv_medium3", "tgc_mtv_radio", "tgc_mtv_tan"];
private _defBackpacks = [];
private _defHeadgear = ["tc2002_sm", "tc2002_od", "tc2002od2", "tc2002_tan", "tc2002_p", "tc2002_s", "tc2002_sb"];
private _defFacewear = ["AD_ESS_Glasses_b2", "AD_SP_ESS_Petzl_b2", "AD_ESS_Glasses_b1", "AD_SP_ESS_Petzl_b1", "AD_Petzl_Neck_b1"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10", "rhs_weap_m4a1", "rhs_weap_m4a1_d"];
	_availableAttachments = ["tier1_gangster_grip_black", "tier1_kac_vfg_black", "cup_muzzle_snds_m16", "tier1_eotech551_riser_black", "tier1_eotech551_riser_desert", "tier1_eotech551_black", "tier1_eotech551_desert", "tier1_eotech551_3xmag_riser_black_up", "tier1_eotech551_3xmag_riser_desert_up", "tier1_eotech551_3xmag_black_up", "tier1_eotech551_3xmag_desert_up", "cup_acc_anpeq_2_grey", "cup_acc_anpeq_2_desert", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_coyote_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_flashlight_coyote_l", "cup_acc_flashlight", "cup_acc_flashlight_desert"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_Mk318_Stanag"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["SL", "FTL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10", "rhs_weap_m4a1", "rhs_weap_m4a1_d"];
	_availableAttachments = ["tier1_gangster_grip_black", "tier1_kac_vfg_black", "cup_muzzle_snds_m16", "tier1_eotech551_riser_black", "tier1_eotech551_riser_desert", "tier1_eotech551_black", "tier1_eotech551_desert", "tier1_eotech551_3xmag_riser_black_up", "tier1_eotech551_3xmag_riser_desert_up", "tier1_eotech551_3xmag_black_up", "tier1_eotech551_3xmag_desert_up", "cup_acc_anpeq_2_grey", "cup_acc_anpeq_2_desert", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_coyote_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_flashlight_coyote_l", "cup_acc_flashlight", "cup_acc_flashlight_desert"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_Mk318_Stanag"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_hk416d10", "rhs_weap_m4a1", "rhs_weap_m4a1_d"];
	_availableAttachments = ["tier1_gangster_grip_black", "tier1_kac_vfg_black", "cup_muzzle_snds_m16", "tier1_eotech551_riser_black", "tier1_eotech551_riser_desert", "tier1_eotech551_black", "tier1_eotech551_desert", "tier1_eotech551_3xmag_riser_black_up", "tier1_eotech551_3xmag_riser_desert_up", "tier1_eotech551_3xmag_black_up", "tier1_eotech551_3xmag_desert_up", "cup_acc_anpeq_2_grey", "cup_acc_anpeq_2_desert", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_coyote_top", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_flashlight_coyote_l", "cup_acc_flashlight", "cup_acc_flashlight_desert"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_Mk318_Stanag"];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["Tier1_MK46_Mod1", "Tier1_MK46_Mod1_Desert"];
	_availableAttachments = ["tier1_saw_bipod_2_kac", "tier1_saw_bipod_2_kac_desert", "tier1_saw_bipod_kac", "tier1_saw_bipod_kac_desert", "tier1_kac_vfg_black", "tier1_kac_vfg_de", "tier1_saw_bipod_2", "tier1_saw_bipod_2_desert", "tier1_saw_bipod", "tier1_saw_bipod_desert", "tier1_eotech551_riser_black", "tier1_eotech551_riser_desert", "tier1_eotech551_black", "tier1_eotech551_desert", "tier1_eotech551_3xmag_riser_black_up", "tier1_eotech551_3xmag_riser_desert_up", "tier1_eotech551_3xmag_black_up", "tier1_eotech551_3xmag_desert_up"];
	_availableMagazines = ["rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote", "rhsusf_200rnd_556x45_mixed_box", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch", "rhsusf_100Rnd_556x45_mixed_soft_pouch"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Breacher */
if (_condition && _role in ["BRC"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_M590_5RD", "rhs_weap_M590_8RD"];
	_availableAttachments = [];
	_availableMagazines = ["rhsusf_5Rnd_00Buck", "rhsusf_5Rnd_Slug", "rhsusf_8Rnd_00Buck", "rhsusf_8Rnd_Slug", "tsp_stickCharge_mag"];
	_availableVests = [];
	_availableItems = ["ACE_wirecutter", "ACE_Clacker", "tsp_lockpick"];
	_availableGrenades = [];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB"];
	_availableHeadgear = [];
	_availableFacewear = [];
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

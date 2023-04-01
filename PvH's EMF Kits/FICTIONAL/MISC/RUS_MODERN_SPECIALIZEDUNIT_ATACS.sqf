params["_role"];
private["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhs_weap_pya", "rhs_weap_rshg2", "CUP_launch_RPG26", "uns_binocular_army"];
private _defAttachments = [];
private _defMagazines = ["rhs_mag_9x19_17", "CUP_30Rnd_545x39_AK74M_camo_M", "rhs_VG40TB", "rhs_VOG25P", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = ["CUP_U_CRYE_G3C_ATACSFG"];
private _defVests = ["V_SmershVest_01_radio_F"];
private _defBackpacks = ["CUP_O_RUS_Patrol_bag_Green"];
private _defHeadgear = ["H_Booniehat_mgrn", "H_Booniehat_oli", "UK3CB_LSM_B_H_BoonieHat_OLI", "usm_bdu_boonie_odg", "rhs_beanie_green", "rhsgref_bcap_specter", "rhs_beanie_green"];
private _defFacewear = ["G_Balaclava_oli", "CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_emr", "rhs_facewear_6m2_1", "rhs_facewear_6m2"];

//
// Made for Arma 3 Virtual MILSIM
//
// Made by Per_von_Harke
//
// Put this into the init of ever guy aditionally to the EMF stuff.
// [this,"FGN_Russian_Army"] call BIS_fnc_setUnitInsignia;
//

// Rifleman
if (_role == "RFL") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_afg_camo", "CUP_arifle_AK74M_camo", "CUP_arifle_AK74M_top_rail_camo"];
	_availableAttachments = ["cup_muzzle_snds_kzrzp_ak545_woodland", "tier1_exps3_0_black"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_role == "SL") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_afg_camo", "CUP_arifle_AK74M_camo", "CUP_arifle_AK74M_top_rail_camo"];
	_availableAttachments = ["cup_muzzle_snds_kzrzp_ak545_woodland", "tier1_exps3_0_black"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_afg_camo", "CUP_arifle_AK74M_camo", "CUP_arifle_AK74M_top_rail_camo"];
	_availableAttachments = ["cup_muzzle_snds_kzrzp_ak545_woodland", "tier1_exps3_0_black"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "kat_chestSeal", "kat_larynx", "kat_stethoscope","kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_Pecheneg_woodland"];
	_availableAttachments = ["cup_optic_okp_7_w", "cup_muzzle_snds_kzrzp_pk_woodland"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_GL_railed_camo", "CUP_arifle_AK74M_GL_top_rail_camo"];
	_availableAttachments = ["cup_muzzle_snds_kzrzp_ak545_woodland", "tier1_exps3_0_black"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Return loadout arrays
[
	"1.0", // loadout version
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

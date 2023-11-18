params["_role"];
private["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACRE_BF888S", "ACE_EntrenchingTool", "ACE_CableTie", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ItemGPS", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhs_weap_pya", "rhs_weap_rpg18", "rhs_weap_rpg26", "rhs_weap_rshg2", "rhsusf_bino_m24"];
private _defAttachments = [];
private _defMagazines = ["rhs_mag_9x19_7n31_17", "CUP_30Rnd_545x39_AK74M_M", "rhs_100Rnd_762x54mmR_green", "rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_GRD40_White", "rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_green", "rhs_VG40OP_red", "rhs_VG40OP_white"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = ["CUP_U_CRYE_G3C_ATACSFG"];
private _defVests = [];
private _defBackpacks = ["CUP_O_RUS_Patrol_bag_Green", "CUP_O_RUS_Patrol_bag_Summer"];
private _defHeadgear = ["rhs_altyn_novisor"];
private _defFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "CUP_RUS_Balaclava_emr"];

//
// Made for Arma 3 Virtual MILSIM
//
// Made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_lush", "CUP_arifle_AK12_black"];
	_availableAttachments = ["rhsusf_acc_t1_high", "tier1_romeo4t_bcd_black"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_role == "SL") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_lush", "rhs_pdu4"];
	_availableAttachments = ["rhsusf_acc_t1_high"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
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
	_availableWeapons = ["CUP_arifle_AK12_lush", "CUP_arifle_AK12_black"];
	_availableAttachments = ["rhsusf_acc_t1_high"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "kat_chestSeal", "kat_larynx", "kat_stethoscope","kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "kat_AED"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_Pecheneg_woodland"];
	_availableAttachments = ["rhs_acc_1p63"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_GP34_lush", "CUP_arifle_AK12_GP34_black"];
	_availableAttachments = ["rhsusf_acc_t1_high"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_lush", "CUP_arifle_AK12_black"];
	_availableAttachments = ["rhsusf_acc_t1_high", "tier1_romeo4t_bcd_black"];
	_availableMagazines = ["CUP_PipeBomb_M", "rhssaf_tm500_mag", "rhssaf_tm200_mag", "rhs_mine_tm62m_mag", "rhssaf_mine_mrud_c_mag", "rhssaf_mine_mrud_d_mag"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ToolKit", "ACE_Clacker"];
	_availableGrenades = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer_Shovel"];
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

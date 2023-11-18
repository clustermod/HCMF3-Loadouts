/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Harke
 * This does in no way support or endorse the unlawful war of agression against Ukraine by Russia.
 *
 */

/* Get the unit's role */
private _condition = player getVariable ["cmf_common_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Altimeter", "rhs_1PN138", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["Binocular", "rhs_weap_pya"];
private _defAttachments = [];
private _defMagazines = ["rhs_100Rnd_762x54mmR_green", "rhs_100Rnd_762x54mmR_7N26", "rhs_mag_9x19_17", "rhs_30Rnd_545x39_7N10_AK", "rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_GRD40_White", "rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_green", "rhs_VG40OP_red", "rhs_VG40OP_white"];
private _defGrenades = [];
private _defUniforms = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];

/* Rifleman */
if (_condition in ["RFL"]) then {
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_arifle_AK12_black", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhsusf_acc_t1_high", "rhsusf_acc_t1_low", "rhs_acc_1p87", "cup_optic_1p87_1p90_blk", "cup_optic_1p87_ris", "age_inforce_white"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};

/* Team leader */
if (_condition in ["SL", "FTL"]) then {
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_arifle_AK12_GP34_black", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhsusf_acc_t1_high", "rhsusf_acc_t1_low", "rhs_acc_1p87", "cup_optic_1p87_1p90_blk", "cup_optic_1p87_ris", "age_inforce_white"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = ["ACRE_PRC152", "ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};

/* Medic */
if (_condition in ["MED"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_arifle_AK12_black", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhsusf_acc_t1_high", "rhsusf_acc_t1_low", "rhs_acc_1p87", "cup_optic_1p87_1p90_blk", "cup_optic_1p87_ris", "age_inforce_white"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit", "ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd", "ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};

/* SAW/LMG */
if (_condition in ["AR"]) then {
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_arifle_RPK74M_top_rail", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = ["CUP_60Rnd_TE1_Green_Tracer_545x39_AK74M_M"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};

/* MMG */
if (_condition in ["MMG"]) then {
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_lmg_Pecheneg_top_rail", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP"];
	_availableItems = ["ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};


/* Grenadier */
if (_condition in ["GRD"]) then {
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_arifle_AK12_GP34_black", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhsusf_acc_t1_high", "rhsusf_acc_t1_low", "rhs_acc_1p87", "cup_optic_1p87_1p90_blk", "cup_optic_1p87_ris", "age_inforce_white"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = ["ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};

/* MAT */
if (_condition in ["MAT"]) then {
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_arifle_AK12_black","rhs_weap_rpg7", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhsusf_acc_t1_high", "rhsusf_acc_t1_low", "rhs_acc_1p87", "cup_optic_1p87_1p90_blk", "cup_optic_1p87_ris", "age_inforce_white", "rhs_acc_pgo7v3", "rhs_acc_1pn93_2"];
	_availableMagazines = ["rhs_rpg7_OG7V_mag", "rhs_rpg7_PG7V_mag", "rhs_rpg7_PG7VR_mag", "rhs_rpg7_TBG7V_mag"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};

/* HAT */
if (_condition in ["HAT"]) then {
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_launch_Metis", "CUP_arifle_AK12_black", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhsusf_acc_t1_high", "rhsusf_acc_t1_low", "rhs_acc_1p87", "cup_optic_1p87_1p90_blk", "cup_optic_1p87_ris", "age_inforce_white", "rhs_acc_pgo7v3", "rhs_acc_1pn93_2"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};

/* Engineer */
if (_condition in ["ENG"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["Z_10", "Z_5", "Z_8", "Z_4", "ZZ_2", "vkpo"];
	_availableWeapons = ["CUP_arifle_AK12_black", "rhs_tr8_periscope", "rhs_tr8_periscope_pip", "rhs_weap_rpg26", "rhs_weap_rpg18", "rhs_weap_pya"];
	_availableAttachments = ["rhsusf_acc_t1_high", "rhsusf_acc_t1_low", "rhs_acc_1p87", "cup_optic_1p87_1p90_blk", "cup_optic_1p87_ris", "age_inforce_white"];
	_availableMagazines = ["rhs_mine_pmn2_mag", "rhs_mag_mine_pfm1", "rhs_mag_mine_ptm1", "CUP_MineE_M", "rhs_mine_tm62m_mag", "rhs_ec400_mag", "APERSTripMine_Wire_Mag"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ToolKit", "ACE_Clacker", "ACE_DefusalKit", "ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = ["rhs_mag_rgd5", "rhs_mag_rgo", "rhs_mag_rgn", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_yellow", "rhs_mag_nspn_red", "rhs_mag_nspn_green", "rhs_mag_nspd"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer"];
	_availableHeadgear = ["Z4", "Z3", "Z2", "Z1", "Z11", "Z15", "Z7", "Z6", "Z13", "Z12", "Z10", "Z9", "Z8"];
	_availableFacewear = ["rhs_facewear_6m2_1", "rhs_facewear_6m2", "AGE_Balaclava_Olive", "CUP_RUS_Balaclava_emr", "CUP_G_RUS_Balaclava_Ratnik"];
};

/* Pilot */
if (_condition in ["PLT"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["Z_P_1", "Z_P_2"];
	_availableWeapons = ["CUP_arifle_AKS74U"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ToolKit", "ACRE_PRC152", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_zsh7a_mike_green", "rhs_zsh7a_mike", "rhs_zsh7a_mike_green_alt", "rhs_zsh7a_mike_alt", "rhs_zsh7a_alt", "rhs_zsh7a"];
	_availableFacewear = ["tfl_aviator"];
};

/* Armor Crewman */
if (_condition in ["CRW"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["rhs_uniform_emr_patchless"];
	_availableWeapons = ["rhs_weap_aks74n_2"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ToolKit", "ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_tsh4", "rhs_tsh4_ess"];
	_availableFacewear = [];
};

/* Armor Crew Commander, Tank Commander */
if (_condition in ["CRWC"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["rhs_uniform_emr_patchless"];
	_availableWeapons = ["rhs_weap_aks74n_2"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ToolKit", "ACRE_PRC152", "ACRE_BF888S", "ACE_CableTie", "ACE_WaterBottle", "ACE_EntrenchingTool", "ACE_SpraypaintBlue", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_wirecutter", "slr_slingload_CargoSling"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_tsh4", "rhs_tsh4_ess"];
	_availableFacewear = [];
};


/* Loadout array that's passed back to kosherArsenal */
[
	/* Loadoutfile version */
	"1.2",

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

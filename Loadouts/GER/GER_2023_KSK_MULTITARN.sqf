/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V4 
 * [Loadout for modern KSK in the year of 2023. Not completly correct due to mod limitations.]
 *
 */

/* Get the unit's role */
private _condition = player getVariable ["cmf_common_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACRE_PRC152", "ACE_microDAGR", "ItemAndroid", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "CUP_NVG_GPNVG_black", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["BWA3_P8"];
private _defAttachments = [];
private _defMagazines = ["BWA3_15Rnd_9x19_P8", "rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan", "BWA3_120Rnd_762x51", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "BWA3_1Rnd_Flare_Singlestar_White", "BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_Green", "BWA3_1Rnd_Flare_Multistar_White", "BWA3_1Rnd_Flare_Multistar_Red", "BWA3_1Rnd_Flare_Multistar_Green"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
private _defUniforms = ["BWA3_Uniform_Multi"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["BWA3_OpsCore_FastMT_SOF_Multi"];
private _defFacewear = ["BWA3_G_Combat_black", "BWA3_G_Combat_clear", "CUP_RUS_Balaclava_rgr", "G_AirPurifyingRespirator_01_F"];

/* Rifleman */
if (_condition in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_SMR_CTR"];
	_availableAttachments = ["tier1_exps3_0_g33_tano_up", "rhsusf_acc_grip2_tan", "rhsusf_acc_rotex5_grey", "tier1_145_ngal_m600v_fl", "tier1_145_ngal_m300c_fl"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_medicalbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Team leader */
if (_condition in ["SL", "FTL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_SMR_CTR", "BWA3_P2A1", "BWA3_Vector", "ACE_Vector"];
	_availableAttachments = ["tier1_exps3_0_g33_tano_up", "rhsusf_acc_grip2_tan", "rhsusf_acc_rotex5_grey", "tier1_145_ngal_m600v_fl", "tier1_145_ngal_m300c_fl"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_medicalbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
	_availableItems = ["B_UavTerminal"];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_condition in ["MED"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_SMR_CTR"];
	_availableAttachments = ["tier1_exps3_0_g33_tano_up", "rhsusf_acc_grip2_tan", "rhsusf_acc_rotex5_grey", "tier1_145_ngal_m600v_fl", "tier1_145_ngal_m300c_fl"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_medicalbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_Kitbag_Multi_Medic"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Machinegunner */
if (_condition in ["MMG"]) then {
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG5_tan"];
	_availableAttachments = ["bwa3_optic_zo4x30i_microt2_sand", "bwa3_acc_varioray_irlaser", "rhsusf_acc_su230a_c"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_medicalbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
	_availableItems = ["ACE_SpareBarrel_Item"];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Grenadier */
if (_condition in ["GRD"]) then {
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_SMR_CTR", "rhs_weap_M320"];
	_availableAttachments = ["tier1_exps3_0_g33_tano_up", "rhsusf_acc_grip2_tan", "rhsusf_acc_rotex5_grey", "tier1_145_ngal_m600v_fl", "tier1_145_ngal_m300c_fl"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_rngr"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* LAT */
if (_condition in ["LAT"]) then {
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_SMR_CTR", "BWA3_RGW90_Loaded", "BWA3_PzF3_Tandem_Loaded"];
	_availableAttachments = ["tier1_exps3_0_g33_tano_up", "rhsusf_acc_grip2_tan", "rhsusf_acc_rotex5_grey", "tier1_145_ngal_m600v_fl", "tier1_145_ngal_m300c_fl"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_medicalbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Engineer and EOD */
if (_condition in ["ENG"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_SMR_CTR"];
	_availableAttachments = ["tier1_exps3_0_g33_tano_up", "rhsusf_acc_grip2_tan", "rhsusf_acc_rotex5_grey", "tier1_145_ngal_m600v_fl", "tier1_145_ngal_m300c_fl"];
	_availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_medicalbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
	_availableItems = ["ACE_Clacker", "ACE_DefusalKit", "MineDetector"];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
	_availableHeadgear = [];
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

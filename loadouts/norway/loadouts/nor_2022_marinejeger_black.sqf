/*
 * Author: [Author]
 * [Description]
 *
 * [Modpack Version]
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["rhsusf_ANPVS_15", "ACE_IR_Strobe_Item", "ACRE_PRC152", "ItemAndroid", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_XL50", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["Tier1_Glock22"];
private _defAttachments = [];
private _defMagazines = ["Tier1_15Rnd_40SW_FMJ"];
private _defGrenades = ["Chemlight_blue", "Chemlight_green", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "Chemlight_red", "ACE_Chemlight_White", "Chemlight_yellow", "ACE_CTS9", "rhs_mag_m67", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_grenade_anm8_mag", "KAT_M7A3", "rhs_mag_mk84"];
private _defUniforms = ["G3_Ranger_PCU_Rpants_5_w", "G3_Ranger_PCU_Overalls_4_w", "G3_Ranger_PCU_Overalls_kneepads_NOB_4_w"];
private _defVests = [];
private _defBackpacks = ["G3_Backpack_v3_3", "G3_Backpack_v2_2", "G3_Backpack_v1_1"];
private _defHeadgear = ["rhsusf_opscore_paint_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_mar_ut_pelt", "rhsusf_opscore_fg_pelt_cam"];
private _defFacewear = ["CUP_RUS_Balaclava_rgr"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_CTR", "Tier1_HK416D145_CTR_Desert", "Tier1_HK416D145_LMT", "Tier1_HK416D145_LMT_Desert"];
	_availableAttachments = ["rhsusf_acc_compm4", "tier1_416_la5_m300c", "tier1_416_la5_m300c_black", "tier1_kac_vfg_black"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_Mk318_PMAG", "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan"];
	_availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["SL", "FTL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["ACE_MX2A", "rhsusf_bino_m24", "ACE_VectorDay", "Tier1_HK416D145_CTR", "Tier1_HK416D145_CTR_Desert", "Tier1_HK416D145_LMT", "Tier1_HK416D145_LMT_Desert"];
	_availableAttachments = ["rhsusf_acc_compm4", "tier1_416_la5_m300c", "tier1_416_la5_m300c_black", "tier1_kac_vfg_black"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_Mk318_PMAG", "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan"];
	_availableVests = ["CUP_V_CPC_tlbelt_mc", "CUP_V_CPC_communicationsbelt_mc"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_CTR", "Tier1_HK416D145_CTR_Desert", "Tier1_HK416D145_LMT", "Tier1_HK416D145_LMT_Desert"];
	_availableAttachments = ["rhsusf_acc_compm4", "tier1_416_la5_m300c", "tier1_416_la5_m300c_black", "tier1_kac_vfg_black"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_Mk318_PMAG", "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan"];
	_availableVests = ["CUP_V_CPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249_pip_S_para"];
	_availableAttachments = ["rhsusf_acc_compm4", "tier1_m249_la5_m600v_black", "tier1_m249_la5_m600v", "tier1_saw_bipod_2"];
	_availableMagazines = ["rhsusf_200rnd_556x45_mixed_box"];
	_availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Breacher */
if (_condition && _role in ["BRC"]) then {
	_availableUniforms = [];
	_availableWeapons = ["Tier1_HK416D145_CTR", "Tier1_HK416D145_CTR_Desert", "Tier1_HK416D145_LMT", "Tier1_HK416D145_LMT_Desert", "rhs_weap_M590_5RD"];
	_availableAttachments = ["rhsusf_acc_compm4", "tier1_416_la5_m300c", "tier1_416_la5_m300c_black", "tier1_kac_vfg_black"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_Mk318_PMAG", "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", "tsp_stickCharge_auto_mag", "tsp_stickCharge_mag", "tsp_frameCharge_mag", "tsp_popperCharge_mag", "tsp_popperCharge_auto_mag", "rhsusf_5Rnd_00Buck", "rhsusf_5Rnd_Slug"];
	_availableVests = ["CUP_V_CPC_communicationsbelt_mc", "CUP_V_CPC_Fastbelt_mc", "CUP_V_CPC_lightbelt_mc"];
	_availableItems = ["ACE_Clacker", "tsp_lockpick"];
	_availableGrenades = [];
	_availableBackpacks = [];
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

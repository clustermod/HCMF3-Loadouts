/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V4
 * [OD Green Special Operations Force made for a mission on Tanoa or any comparable jungle map.]
 *
 */

/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACE_EntrenchingTool", "rhsusf_ANPVS_15", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_CRYE_G3C_RGR"];
private _defVests = [];
private _defBackpacks = ["CUP_B_RUS_Backpack"];
private _defHeadgear = ["rhsusf_opscore_fg_pelt_cam"];
private _defFacewear = ["UK3CB_G_Balaclava2_DES", "CUP_G_ESS_BLK", "CUP_G_PMC_Facewrap_Black_Glasses_Dark", "CUP_G_PMC_Facewrap_Tropical_Glasses_Dark", "UK3CB_G_Tactical_Black"];

/* Rifleman */
if (_condition in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_CZ_BREN2_556_11"];
	_availableAttachments = ["rhsusf_acc_t1_high", "bwa3_acc_varioray_irlaser_black", "optic_hamr"];
	_availableMagazines = [];
	_availableVests = ["V_CarrierRigKBT_01_light_Olive_F"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Team leader */
if (_condition in ["SL", "FTL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_CZ_BREN2_556_11", "rhsusf_bino_m24", "BWA3_P2A1"];
	_availableAttachments = ["rhsusf_acc_t1_high", "bwa3_acc_varioray_irlaser_black", "optic_hamr"];
	_availableMagazines = ["BWA3_1Rnd_Flare_Singlestar_White", "BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_Green"];
	_availableVests = ["V_CarrierRigKBT_01_light_Olive_F"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_condition in ["MED"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_CZ_BREN2_556_11"];
	_availableAttachments = ["rhsusf_acc_t1_high", "bwa3_acc_varioray_irlaser_black", "optic_hamr"];
	_availableMagazines = [];
	_availableVests = ["V_CarrierRigKBT_01_light_Olive_F"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* SAW/LMG */
if (_condition in ["AR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249_pip_S"];
	_availableAttachments = ["tier1_exps3_0_black", "cup_acc_llm_black", "tier1_saw_bipod_kac"];
	_availableMagazines = [];
	_availableVests = ["V_CarrierRigKBT_01_light_Olive_F"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* HAT */
if (_condition in ["HAT"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_CZ_BREN2_556_11", "launch_MRAWS_green_rail_F"];
	_availableAttachments = ["rhsusf_acc_t1_high", "bwa3_acc_varioray_irlaser_black", "optic_hamr"];
	_availableMagazines = [];
	_availableVests = ["V_CarrierRigKBT_01_light_Olive_F"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Engineer */
if (_condition in ["ENG"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_CZ_BREN2_556_11"];
	_availableAttachments = ["rhsusf_acc_t1_high", "bwa3_acc_varioray_irlaser_black", "optic_hamr"];
	_availableMagazines = ["rhs_ec200_mag", "rhs_ec400_mag", "CUP_TimeBomb_M", "rhsusf_m112_mag", "rhsusf_m112x4_mag"];
	_availableVests = ["V_CarrierRigKBT_01_light_Olive_F"];
	_availableItems = ["ToolKit", "ACE_Clacker"];
	_availableGrenades = [];
	_availableBackpacks = [];
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

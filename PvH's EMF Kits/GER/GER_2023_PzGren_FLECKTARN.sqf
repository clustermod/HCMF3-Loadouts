/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V3
 * [Loadout depicting the 2023 state of German Mechanized Infantry, with limitations in realism due to available mods for Arma 3.]
 *
 */

/* Get the unit's role */
private _condition = player getVariable ["cmf_common_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Altimeter", "ItemAndroid", "ItemMicroDAGR", "rhsusf_ANPVS_15", "ACE_EntrenchingTool", "ACRE_SEM52SL", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam"];
private _defWeapons = ["BWA3_Vector"];
private _defAttachments = [];
private _defMagazines = ["BWA3_30Rnd_556x45_G36", "BWA3_30Rnd_556x45_G36_AP", "BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_m4009"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
private _defUniforms = ["BWA3_Uniform_Fleck"];
private _defVests = ["CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
private _defBackpacks = [];
private _defHeadgear = ["BWA3_OpsCore_FastMT_SOF_Fleck"];
private _defFacewear = ["BWA3_G_Combat_clear", "CUP_G_RUS_Balaclava_Ratnik", "FGN_CauR_Shemag_green", "rhsusf_shemagh2_od", "rhsusf_shemagh_od"];

/* Rifleman */
if (_condition in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36A3"];
	_availableAttachments = ["bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Team leader */
if (_condition in ["SL", "FTL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36A3", "BWA3_P2A1"];
	_availableAttachments = ["bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableMagazines = ["BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Singlestar_White", "BWA3_1Rnd_Flare_Singlestar_Green"];
	_availableVests = [];
	_availableItems = ["ACRE_SEM70", "B_UavTerminal"];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_condition in ["MED"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36A3"];
	_availableAttachments = ["bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_Kitbag_Fleck_Medic"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* SAW/LMG */
if (_condition in ["AR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG5_tan"];
	_availableAttachments = ["bwa3_optic_zo4x30i_sand", "bwa3_acc_varioray_irlaser"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Grenadier */
if (_condition in ["GRD"]) then {
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36A3_AG40"];
	_availableAttachments = ["bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_rngr"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* LAT */
if (_condition in ["LAT"]) then {
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36A3", "BWA3_PzF3_Tandem_Loaded"];
	_availableAttachments = ["bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser", "bwa3_optic_nsa80"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Engineer */
if (_condition in ["ENG"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36A3", "ACE_VMM3"];
	_availableAttachments = ["bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
	_availableVests = [];
	_availableItems = ["ToolKit", "ACE_Clacker", "ACE_DefusalKit"];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
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

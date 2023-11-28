/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: 
 * [Description]
 *
 */

/* Get the unit's role */
private _condition = player getVariable ["cmf_common_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = [];
private _defGrenades = [];
private _defUniforms = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];

/* Crewman */
if (_condition in ["CRW"]) then {
	_availableUniforms = ["BWA3_Uniform_Crew_Fleck"];
	_availableWeapons = ["BWA3_MP7"];
	_availableAttachments = ["BWA3_optic_RSAS_riser"];
	_availableMagazines = ["BWA3_40Rnd_46x30_MP7"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = ["BWA3_CrewmanKSK_Fleck_Headset"];
	_availableFacewear = ["AD_ESS_Glasses_b4"];
};

/* Tank Commander */
if (_condition in ["SL", "FTL"]) then {
	_availableUniforms = ["BWA3_Uniform_Crew_Fleck"];
	_availableWeapons = ["BWA3_MP7", "rhssaf_zrak_rd7j"];
	_availableAttachments = ["BWA3_optic_RSAS_riser"];
	_availableMagazines = ["BWA3_40Rnd_46x30_MP7"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_Carryall_Fleck"];
	_availableHeadgear = ["BWA3_Beret_Pz"];
	_availableFacewear = ["CUP_G_ESS_BLK_Dark", "CUP_G_ESS_BLK_Facewrap_Black"];
};

/* Medic/Engineer Role for support platoon if done by players. */
if (_condition in ["MEDENGI"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_2"];
	_availableWeapons = ["BWA3_G36KA3", "BWA3_P8"];
	_availableAttachments = ["BWA3_optic_RSAS_brown", "BWA3_acc_VarioRay_irlaser"];
	_availableMagazines = ["BWA3_30Rnd_556x45_G36", "BWA3_15Rnd_9x19_P8"];
	_availableVests = ["V_CarrierRigKBT_01_light_Olive_F"];
	_availableItems = ["ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck_Medic", "BWA3_PatrolPack_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt"];
	_availableFacewear = ["BWA3_G_Combat_clear"];
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

/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5 
 * [This loadout was made after the middle eastern coaltion faction from the game Squad.]
 *
 */

/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhsusf_weap_m1911a1"];
private _defAttachments = [];
private _defMagazines = ["rhsusf_mag_7x45acp_MHP", "BWA3_120Rnd_762x51_Tracer", "UK3CB_G3_20rnd_762x51_YT", "rhs_mag_M433_HEDP", "rhs_mag_m715_Green", "rhs_mag_m714_White", "rhs_mag_m713_Red", "1Rnd_SmokeBlue_Grenade_shell"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3"];
private _defUniforms = ["U_Simc_bdu_erla_desu_nomex", "U_Simc_bdu_erla_desu", "U_Simc_bdu_erla_desu_low", "U_Simc_bdu_laat_desu_blench_knee_nomex", "U_simc_bdu_erla_blench_desu_nomex", "U_Simc_bdu_laat_desu_blench_knee_nomex_trop"];
private _defVests = ["V_Simc_vest_pasgt_lbv_belt_2"];
private _defBackpacks = [];
private _defHeadgear = ["H_Simc_pasgt_desu_SWDG", "H_Simc_pasgt_desu_scrim_SWDG", "H_Simc_pasgt_desu_scrim_alt", "H_Simc_pasgt_desu_scrim", "H_Simc_pasgt_desu_SWDG_low_b", "H_Simc_pasgt_desu_b_SWDG", "H_Simc_pasgt_desu_b", "H_Simc_pasgt_desu"];
private _defFacewear = ["UNS_Band_H", "UNS_Band_L", "UNS_M17"];

/* Rifleman */
if (_condition in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_G3A3V_RIS", "rhs_weap_m72a7"];
	_availableAttachments = ["CUP_optic_ZeissZPoint"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_packboard_flak_MG_1", "B_simc_packboard_flak_MG_2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Team leader */
if (_condition in ["SL", "FTL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_G3A3V_RIS", "CUP_hgun_FlareGun", "rhs_weap_m72a7", "rhssaf_zrak_rd7j"];
	_availableAttachments = ["CUP_optic_ZeissZPoint"];
	_availableMagazines = ["CUP_FlareGreen_265_M", "CUP_FlareRed_265_M", "CUP_FlareWhite_265_M", "CUP_FlareYellow_265_M", "CUP_IllumFlareGreen_265_M", "CUP_IllumFlareRed_265_M", "CUP_IllumFlareWhite_265_M"];
	_availableVests = [];
	_availableItems = ["ACRE_PRC77"];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_rajio_1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_condition in ["MED"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_G3A3V_RIS"];
	_availableAttachments = ["CUP_optic_ZeissZPoint"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_pack_med_m5_flak"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* MMG */
if (_condition in ["MMG"]) then {
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG3"];
	_availableAttachments = ["BWA3_bipod_MG3"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_packboard_flak_MG_1", "B_simc_packboard_flak_MG_2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Grenadier */
if (_condition in ["GRD"]) then {
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_G3A3V_RIS", "uns_m79p"];
	_availableAttachments = ["CUP_optic_ZeissZPoint"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_packboard_flak_MG_1", "B_simc_packboard_flak_MG_2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* HAT */
if (_condition in ["HAT"]) then {
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_G3A3V_RIS", "uns_m20_bazooka"];
	_availableAttachments = ["CUP_optic_ZeissZPoint"];
	_availableMagazines = ["uns_M28A2_mag", "uns_M30_smoke_mag"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_packboard_flak_roket_2", "B_simc_packboard_flak_roket_1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Engineer */
if (_condition in ["ENG"]) then {
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_G3A3V_RIS"];
	_availableAttachments = ["CUP_optic_ZeissZPoint"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_packboard_flak_MG_1", "B_simc_packboard_flak_MG_2"];
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

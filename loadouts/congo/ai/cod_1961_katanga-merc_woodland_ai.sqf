/*
 * Author: Eric
 * 1961 Katangese Mercenaries of the Congo
 *
 * cc_core_v5
 */

/* Get the unit's role */
params ["_role"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = [];
private _defGrenades = [];
private _defUniforms = ["U_cca_belg_smock"];
private _defVests = ["V_sns_m58_p37_bare", "V_sns_m58_p37", "V_sns_m58_bare"];
private _defBackpacks = [];
private _defHeadgear = ["H_Simc_Boon_green_5", "H_Simc_Boon_green_6", "SNS_M51", "UK3CB_ANA_B_H_Beret_MAR"];
private _defFacewear = [];

/* Rifleman */
if (_role in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_US_Bandoleer_556_3", "B_simc_US_Bandoleer_556_1", "B_simc_US_Bandoleer_556_fore", "B_simc_US_Bandoleer_556_doppel_1", "B_simc_USMC65_M41", "B_simc_USMC65_M41_flat"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Squad Leader */
if (_role in ["SL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_MC_rajio_base", "B_simc_rajio_2", "B_simc_rajio_base"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_role in ["MED"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_pack_frem_med5"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Machinegunner */
if (_role in ["MG"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_FNMAG"];
	_availableAttachments = [];
	_availableMagazines = ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_USMC65_M41", "B_simc_USMC65_M41_flat", "B_simc_US_Bandoleer_60_L", "B_simc_US_Bandoleer_60_R", "B_simc_US_Bandoleer_60"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Anti-Tank */
if (_role in ["AT"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood", "uns_m20_bazooka"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT", "uns_M28A2_mag"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_packboard_mortar_1", "B_simc_USMC65_M41_mortar", "B_simc_MC_packboard_3"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Engineer */
if (_role in ["ENG"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_US_Bandoleer_556_3", "B_simc_US_Bandoleer_556_1", "B_simc_US_Bandoleer_556_fore", "B_simc_US_Bandoleer_556_doppel_1", "B_simc_USMC65_M41", "B_simc_USMC65_M41_flat"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Marksman */
if (_role in ["MAR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_US_Bandoleer_556_3", "B_simc_US_Bandoleer_556_1", "B_simc_US_Bandoleer_556_fore", "B_simc_US_Bandoleer_556_doppel_1", "B_simc_USMC65_M41", "B_simc_USMC65_M41_flat"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Crewman */
if (_role in ["CRW"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_US_Bandoleer_556_3", "B_simc_US_Bandoleer_556_1", "B_simc_US_Bandoleer_556_fore", "B_simc_US_Bandoleer_556_doppel_1", "B_simc_USMC65_M41", "B_simc_USMC65_M41_flat"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Rotary Pilot */
if (_role in ["RPIL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_US_Bandoleer_556_3", "B_simc_US_Bandoleer_556_1", "B_simc_US_Bandoleer_556_fore", "B_simc_US_Bandoleer_556_doppel_1", "B_simc_USMC65_M41", "B_simc_USMC65_M41_flat"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Fixed-Wing Pilot */
if (_role in ["WPIL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_l1a1_wood", "UK3CB_Sten", "uns_mat49"];
	_availableAttachments = [];
	_availableMagazines = ["rhs_mag_20Rnd_762x51_m80_fnfal", "UK3CB_Sten_34Rnd_Magazine", "uns_mat49mag_NT"];
	_availableVests = [];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_US_Bandoleer_556_3", "B_simc_US_Bandoleer_556_1", "B_simc_US_Bandoleer_556_fore", "B_simc_US_Bandoleer_556_doppel_1", "B_simc_USMC65_M41", "B_simc_USMC65_M41_flat"];
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

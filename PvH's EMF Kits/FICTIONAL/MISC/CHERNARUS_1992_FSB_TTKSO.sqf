/* Get the unit's role */
private _condition = player getVariable ["cmf_common_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_30Rnd_545x39_AK_M", "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", "CUP_5Rnd_127x108_KSVK_M"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = ["rhs_uniform_afghanka_ttsko"];
private _defWeapons = ["rhs_weap_makarov_pm"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["UK3CB_H_Beanie_02_BLK", "UK3CB_H_Bandanna_Camo", "H_Bandanna_khk", "rhs_fieldcap_m88_ttsko"];
private _defFacewear = ["rhs_scarf", "G_Balaclava_blk", "CUP_RUS_Balaclava_blk", "CUP_G_RUS_Balaclava_Ratnik"];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74_Early", "CUP_arifle_AKS74U", "CUP_arifle_AKS74_Early"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_lifchik", "rhs_6b2_chicom", "rhs_6b2_holster", "rhs_6b2"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_stsh81"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74_Early", "CUP_arifle_AKS74U", "CUP_arifle_AKS74_Early"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_lifchik", "rhs_6b2_chicom", "rhs_6b2_holster", "rhs_6b2"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_stsh81"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74_Early", "CUP_arifle_AKS74U", "CUP_arifle_AKS74_Early"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_lifchik", "rhs_6b2_chicom", "rhs_6b2_holster", "rhs_6b2"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope"];
	_availableBackpacks = ["CUP_B_CivPack_WDL"];
	_availableHeadgear = ["rhs_stsh81"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition in ["AR"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_RPK74_45"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_RPK"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_stsh81"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Marksman
if (_condition in ["MRK"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m76", "CUP_srifle_ksvk"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b2_SVD"];
	_availableItems = ["cup_optic_pso_3", "cup_optic_pso_1_1"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
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

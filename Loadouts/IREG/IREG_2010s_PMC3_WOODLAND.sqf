/* Get the unit's role */
private _condition = player getVariable ["cmf_common_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_30Rnd_556x45_Stanag_Tracer_Green","CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "UK3CB_BAF_762_200Rnd_T","rhs_mag_M441_HE", "rhs_mag_m715_Green", "rhs_mag_m713_Red", "ACE_40mm_Flare_white", "rhs_mag_m661_green", "rhs_mag_m662_red"];
private _defGrenades = ["rhs_mag_m67", "Chemlight_green"];
private _defUniforms = ["M93_bdu_B"];
private _defWeapons = [];
private _defVests = ["rhsgref_alice_webbing", "rhsgref_chicom", "rhsgref_chestrig"];
private _defBackpacks = ["CUP_B_AlicePack_OD"];
private _defHeadgear = ["usm_bdu_boonie_odg", "rhssaf_booniehat_woodland", "usm_bdu_boonie_wdl"];
private _defFacewear = ["CUP_G_WristWatch"];
private _defAttachments = [];


// Work in progress
// Loadout made by Per_von_Harke



// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Radioman
if (_condition in ["RADIO"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACRE_PRC343"];
	_availableBackpacks = ["rhs_r148"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};


// Squad Leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M4A1", "rhssaf_zrak_rd7j"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = ["G_Aviator"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition in ["AR"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_fnmag"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition in ["LAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M4A1", "rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition in ["GRD"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M4A1_GL_carryhandle"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
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

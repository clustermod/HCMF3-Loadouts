/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["cup_muzzle_tgpa_desert", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_30Rnd_545x39_AK74M_desert_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_desert_M", "rhs_100Rnd_762x54mmR_7N26", "rhs_100Rnd_762x54mmR_green", "rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_tracer"];
private _defGrenades = [];
private _defUniforms = ["rhs_uniform_gorka_r_y_gloves", "UK3CB_CW_SOV_O_Late_U_Spetsnaz_Uniform_Gorka_01_KLMK", "FGN_RU_Gorka_Multicam"];
private _defWeapons = [];
private _defVests = ["AGE_TV110_AK_MultiCam", "AGE_TV110_AK_Holster_MultiCam", "AGE_TV110_SL_Holster_MultiCam", "AGE_WAS_AK_MultiCam"];
private _defBackpacks = ["B_AssaultPack_cbr"];
private _defHeadgear = ["H_Bandanna_cbr", "H_Bandanna_sand", "H_Booniehat_khk", "H_Cap_tan", "CUP_H_FR_BandanaGreen", "CUP_H_RUS_Bandana_GSSh_Headphones", "CUP_H_PMC_Beanie_Khaki", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_RUS_Cap_ATACSAU", "CUP_H_USA_Cap_MCAM", "CUP_H_PMC_Cap_Back_EP_Tan", "AGE_ComTacs", "AGE_ComTacs_Facemask"];
private _defFacewear = ["rhs_scarf", "AGE_Balaclava_MCam", "AGE_Goggles_ComTacs"];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_desert", "CUP_arifle_AK74M_top_rail_desert", "CUP_arifle_AK74M_desert", "CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert", "CUP_arifle_AK74_Early", "rhs_weap_akm"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["cup_optic_microt1_low_coyote", ""];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhssaf_zrak_rd7j", "CUP_arifle_AK74M_railed_desert", "CUP_arifle_AK74M_top_rail_desert", "CUP_arifle_AK74M_desert", "CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_desert", "CUP_arifle_AK74M_top_rail_desert", "CUP_arifle_AK74M_desert", "CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MMG
if (_condition in ["MMG"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_pkm"];
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
	_availableWeapons = ["CUP_arifle_AK74M_GL_desert", "CUP_arifle_AK74M_GL_top_rail_desert", "CUP_arifle_AK74M_GL_railed_desert"];
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

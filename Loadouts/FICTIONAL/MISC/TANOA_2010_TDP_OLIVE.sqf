/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_30Rnd_556x45_Stanag_Tracer_Green", "UGL_FlareRed_F", "rhs_mag_M441_HE", "rhs_mag_m713_Red", "rhs_mag_m715_Green", "CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_T_SAW", "hlc_200rnd_556x45_M_SAW"];
private _defGrenades = ["ACE_HandFlare_Green", "Chemlight_green", "Chemlight_blue","Chemlight_red", "ACE_Chemlight_Orange", "rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red"];
private _defUniforms = [];
private _defWeapons = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];

//Loadout made by Per_von_Harke

// Zeus
if (_condition in ["ZEUS"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_ALICE"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = [];
	_availableHeadgear = ["H_Beret_blk", "H_Booniehat_mgrn", "usm_bdu_boonie_odg"];
	_availableFacewear = ["G_Aviator"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Team leader / Squad leader
if (_condition in ["SL"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1", "CUP_arifle_M16A2_GL", "rhs_weap_rsp30_green"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition in ["LMG"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["hlc_lmg_M249E2"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MMG
if (_condition in ["MMG"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_lmg_M240_norail"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition in ["GRD"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Grenadier_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition in ["LAT"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1", "rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MAT
if (_condition in ["MAT"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// HAT
if (_condition in ["HAT"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Engineer
if (_condition in ["ENG"]) then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// JTAC
if (_condition in ["JTAC"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M16A2_GL", "rhs_weap_rsp30_green"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive", "CUP_V_B_Interceptor_Grenadier_Olive"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Marksman
if (_condition in ["MRK"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Breacher
if (_condition in ["BRC"]) then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// High Value Target
if (_condition in ["HVT"]) then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Very Important Person
if (_condition in ["VIP"]) then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Rotary Wing Pilot
if (_condition in ["RWP"]) then
{
	_availableUniforms = ["CUP_U_B_USArmy_PilotOverall"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["Airchew_vest", "Airchew_vest_2"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["TRYK_B_Alicepack"];
	_availableHeadgear = ["rhs_zsh7a_mike_green", "rhs_zsh7a_mike_green_alt", "rhs_gssh18"];
	_availableFacewear = ["G_Aviator"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Fixed Wing Pilot
if (_condition in ["FWP"]) then
{
	_availableUniforms = ["FIR_Fighter_Pilot_Uniform_Flight", "FIR_Fighter_Pilot_JASDF_Nomex5", "FIR_Fighter_Pilot_JASDF_Nomex3"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["Airchew_vest_2_NH", "Aircrew_vest_2_NH"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["TRYK_B_Alicepack"];
	_availableHeadgear = ["rhs_zsh7a", "rhs_zsh7a_alt"];
	_availableFacewear = ["G_Aviator"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// EOD
if (_condition in ["EOD"]) then
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

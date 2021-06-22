params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["CUP_30Rnd_556x45_Stanag_Tracer_Green", "UGL_FlareRed_F", "rhs_mag_M441_HE", "rhs_mag_m713_Red", "rhs_mag_m715_Green", "CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_T_SAW", "hlc_200rnd_556x45_M_SAW"          "murshun_cigs_matches", "murshun_cigs_cigpack"];
_defGrenades = ["ACE_HandFlare_Green", "Chemlight_green", "Chemlight_blue","Chemlight_red", "ACE_Chemlight_Orange", "rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red"];
_defUniforms = [];
_defWeapons = [];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];

//Loadout made by Per_von_Harke

// Zeus
if (_role == "ZEUS") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_ALICE"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = [];
	_availableHeadgear = ["H_Beret_blk", "H_Booniehat_mgrn", "usm_bdu_boonie_odg"];
	_availableFacewear = ["G_Aviator"];
};

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// Team leader / Squad leader
if (_role == "SL") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1", "CUP_arifle_M16A2_GL", "rhs_weap_rsp30_green"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
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
};

// SAW/LMG
if (_role == "LMG") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["hlc_lmg_M249E2"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_lmg_M240_norail"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Grenadier_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1", "rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then
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
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M16A2_GL", "rhs_weap_rsp30_green"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive", "CUP_V_B_Interceptor_Grenadier_Olive"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// Marksman
if (_role == "MRK") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// Breacher
if (_role == "BRC") then
{
	_availableUniforms = ["rhsgref_uniform_olive"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_Interceptor_Rifleman_Olive", "CUP_V_B_Interceptor_Base_Olive"];
	_availableItems = [];
	_availableBackpacks = ["CUP_B_AlicePack_OD"];
	_availableHeadgear = ["rhsgref_helmet_pasgt_olive", "H_Booniehat_oli", "usm_bdu_boonie_odg"];
	_availableFacewear = [];
};

// High Value Target
if (_role == "HVT") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Very Important Person
if (_role == "VIP") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Rotary Wing Pilot
if (_role == "RWP") then
{
	_availableUniforms = ["CUP_U_B_USArmy_PilotOverall"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["Airchew_vest", "Airchew_vest_2"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["TRYK_B_Alicepack"];
	_availableHeadgear = ["rhs_zsh7a_mike_green", "rhs_zsh7a_mike_green_alt", "rhs_gssh18"];
	_availableFacewear = ["G_Aviator"];
};

// Fixed Wing Pilot
if (_role == "FWP") then
{
	_availableUniforms = ["FIR_Fighter_Pilot_Uniform_Flight", "FIR_Fighter_Pilot_JASDF_Nomex5", "FIR_Fighter_Pilot_JASDF_Nomex3"];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = ["Airchew_vest_2_NH", "Aircrew_vest_2_NH"];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["TRYK_B_Alicepack"];
	_availableHeadgear = ["rhs_zsh7a", "rhs_zsh7a_alt"];
	_availableFacewear = ["G_Aviator"];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M4A1"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};



//Populate with predefined items and whatever is already in the crate
_backpacks 	= (_availableBackpacks + _defBackpacks);
_items 		= (_availableVests + _availableItems + _availableUniforms + _defUniforms + _defVests + _defItems + _defFacewear + _availableFacewear + _defHeadgear + _availableHeadgear);
_magazines 	= (_availableMagazines + _defGrenades + _defMagazines);
_weapons 	= (_availableWeapons + _defWeapons);

if (!_rearmOnly) then {
	[_obj, _backpacks] 	call BIS_fnc_addVirtualBackpackCargo;
	[_obj, _items	 ] 	call BIS_fnc_addVirtualItemCargo;
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, _weapons	 ] 	call BIS_fnc_addVirtualWeaponCargo;
} else {
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, (_availableItems + _defItems)] call BIS_fnc_addVirtualItemCargo;
};


player setVariable ["EMF_KA_permittedGear", [_backpacks, _items, _magazines, _weapons], true];

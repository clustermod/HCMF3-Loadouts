params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACE_microDAGR", "rhsusf_ANPVS_15", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = [];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = [];
_defWeapons = [];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];


// Loadout made by Per_von_Harke

// In honor of American pararescue jumpers crews operating around the world.
// "These Things We Do, THat Others May Live"


// Note that the RHS vests could be replaced with FIR Helicrew vests. But those look ugly as f*ck in my opinion.

// Helicopter Pilot
if (_role == "RWP") then
{
	_availableUniforms = ["rhs_uniform_acu_oefcp"];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"];
	_availableVests = ["rhsusf_spcs_ocp_crewman"];
	_availableItems = ["rhsusf_acc_compm4"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhsusf_hgu56p", "rhsusf_hgu56p_visor"];
	_availableFacewear = [];
};

// Door Gunner
if (_role == "DGNR") then
{
	_availableUniforms = ["rhs_uniform_acu_oefcp"];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"];
	_availableVests = ["rhsusf_spcs_ocp_crewman"];
	_availableItems = ["ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACE_IR_Strobe_Item", "rhsusf_acc_compm4"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhsusf_hgu56p_mask", "rhsusf_hgu56p_visor_mask", "rhsusf_hgu56p_visor_mask_mo"];
	_availableFacewear = [];
};

// Helibourne Medic
if (_role == "HMED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle_mstock", "rhsusf_weap_m9"];
	_availableMagazines = ["rhsusf_mag_15Rnd_9x19_FMJ", "rhsusf_mag_15Rnd_9x19_JHP", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "kat_X_AED", "kat_accuvac",        "cup_acc_anpeq_15_tan_top", "rhsusf_acc_kac_grip", "cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_g33_xps3", "rhsusf_acc_g33_xps3_tan", "rhsusf_acc_eotech_xps3", "cup_muzzle_snds_g36_black", "rhsusf_acc_compm4", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam"];
	_availableBackpacks = ["rhsusf_assault_eagleaiii_ocp"];
	_availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt", "rhsusf_opscore_mc_pelt_nsw", "rhsusf_opscore_mc_pelt"];
	_availableFacewear = ["rhs_googles_black", "rhs_googles_clear"];
};

// The JPC is the wrong platecarrier, but CCs modpack does not have any AVS platecarriers

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

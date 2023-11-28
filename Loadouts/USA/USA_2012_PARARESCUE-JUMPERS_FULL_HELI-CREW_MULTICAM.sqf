/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_microDAGR", "rhsusf_ANPVS_15", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = [];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = [];
private _defWeapons = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];


// Loadout made by Per_von_Harke

// In honor of American pararescue jumpers crews operating around the world.
// "These Things We Do, THat Others May Live"


// Note that the RHS vests could be replaced with FIR Helicrew vests. But those look ugly as f*ck in my opinion.

// Helicopter Pilot
if (_condition in ["RWP"]) then
{
	_availableUniforms = ["rhs_uniform_acu_oefcp"];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"];
	_availableVests = ["rhsusf_spcs_ocp_crewman"];
	_availableItems = ["rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "cup_acc_anpeq_15_tan_top", "ACRE_PRC152"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhsusf_hgu56p", "rhsusf_hgu56p_visor"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Door Gunner
if (_condition in ["DGNR"]) then
{
	_availableUniforms = ["rhs_uniform_acu_oefcp"];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"];
	_availableVests = ["rhsusf_spcs_ocp_crewman"];
	_availableItems = ["ACRE_PRC152", "ACRE_PRC152", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACE_IR_Strobe_Item", "rhsusf_acc_compm4", "rhsusf_acc_kac_grip", "cup_acc_anpeq_15_tan_top"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhsusf_hgu56p_mask", "rhsusf_hgu56p_visor_mask", "rhsusf_hgu56p_visor_mask_mo"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Helibourne Medic
if (_condition in ["HMED"]) then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_CRYE_G3C_MC_US_V2"];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle_mstock", "rhsusf_weap_m9"];
	_availableMagazines = ["rhsusf_mag_15Rnd_9x19_FMJ", "rhsusf_mag_15Rnd_9x19_JHP", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"];
	_availableVests = ["CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_communicationsbelt_mc"];
	_availableItems = ["vtx_stretcher_item", "ACRE_PRC152", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "kat_X_AED", "kat_accuvac",        "rhsusf_acc_acog_usmc", "cup_acc_anpeq_15_tan_top", "rhsusf_acc_kac_grip", "cup_acc_anpeq_15_top_flashlight_tan_l", "rhsusf_acc_g33_xps3", "rhsusf_acc_g33_xps3_tan", "rhsusf_acc_eotech_xps3", "cup_muzzle_snds_g36_black", "rhsusf_acc_compm4", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam"];
	_availableBackpacks = ["CUP_B_USMC_AssaultPack"];
	_availableHeadgear = ["rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt", "rhsusf_opscore_ut_pelt_cam"];
	_availableFacewear = ["rhs_googles_black", "rhs_googles_clear"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// The JPC is the wrong platecarrier, but CCs modpack does not have any AVS platecarriers

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

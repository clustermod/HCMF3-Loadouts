params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["BWA3_15Rnd_9x19_P8", "CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "CUP_30Rnd_556x45_G36", "CUP_30Rnd_TE1_Green_Tracer_556x45_G36", "BWA3_200Rnd_556x45", "BWA3_200Rnd_556x45_Tracer",   "rhs_mag_M433_HEDP", "rhs_mag_M397_HET", "rhs_mag_M441_HE", "ACE_40mm_Flare_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "UGL_FlareRed_F"];
private _defGrenades = ["Chemlight_green", "Chemlight_blue", "ACE_Chemlight_IR", "Chemlight_red", "ACE_Chemlight_Orange", "rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_mk84"];
private _defUniforms = [];
private _defWeapons = ["BWA3_P8"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];

//Loadout made by Per_von_Harke
//As used by Germany in 2010 Afghanistan
//

// Zeus
if (_condition && _role in ["ZEUS"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_1"];
	_availableWeapons = ["CUP_arifle_G36K_camo", "ACE_Vector"];
	_availableMagazines = ["CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo"];
	_availableVests = ["CUP_V_B_GER_Carrier_Vest_2"];
	_availableItems = ["cup_bipod_g36_desert", "cup_muzzle_snds_g36_desert", "cup_acc_llm01_desert_l", "cup_optic_g36optics_rds_desert"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_Boonie2_desert"];
	_availableFacewear = ["rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Rifleman
if (_condition && _role in ["RFL"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = ["cup_optic_g36optics_rds", "cup_optic_g36optics_rds_3d"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Team leader / Squad leader
if (_condition && _role in ["SL", "FTL"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_TL"];
	_availableItems = ["cup_optic_g36optics_rds", "cup_optic_g36optics_rds_3d"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_Med"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "cup_optic_g36optics_rds", "cup_optic_g36optics_rds_3d"];
	_availableBackpacks = ["CUP_B_GER_Medic_Tropentarn"];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "BWA3_MG4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_MG"];
	_availableItems = ["cup_optic_hensoldtzo_low"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_lmg_MG3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_MG"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_AG36"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_Gren"];
	_availableItems = ["cup_optic_g36optics_rds", "cup_optic_g36optics_rds_3d"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A", "CUP_launch_BF3", "CUP_launch_HCPF3", "CUP_launch_PzF3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then
{
	_unit setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = ["ToolKit"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// JTAC
if (_condition && _role in ["JTAC"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["rhs_weap_M320", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_Gren"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Marksman
if (_condition && _role in ["MRK"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Breacher
if (_condition && _role in ["BRC"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Rotary Wing Pilot
if (_condition && _role in ["RWP"]) then
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

// Fixed Wing Pilot
if (_condition && _role in ["FWP"]) then
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

// EOD
if (_condition && _role in ["EOD"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_6"];
	_availableWeapons = ["ACE_Vector", "CUP_arifle_G36A", "ACE_VMH3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_B_GER_PVest_Trop_RFL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Cover_Trop", "CUP_H_Ger_M92_Cover_Trop_GG_CB", "CUP_H_Ger_M92_Cover_Trop_GG_CF", "CUP_H_Ger_M92_Cover_Trop_GG"];
	_availableFacewear = ["CUP_G_ESS_BLK", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow"];
	_availableAttachments = [];
	_availableGrenades = [];
};

/* Loadout array that's passed back to kosherArsenal */
[
	/* Loadoutfile version */
	"1.3",

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

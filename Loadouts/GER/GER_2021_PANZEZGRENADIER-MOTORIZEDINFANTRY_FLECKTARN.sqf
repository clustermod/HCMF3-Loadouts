/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACRE_SEM52SL", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ACE_CableTie", "ACE_EntrenchingTool", "BWA3_optic_NSV600", "BWA3_optic_NSV80", "BWA3_ItemNaviPad", "rhsusf_ANPVS_15", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["BWA3_15Rnd_9x19_P8", "BWA3_120Rnd_762x51", "BWA3_120Rnd_762x51_Tracer", "BWA3_120Rnd_762x51_Tracer_soft", "BWA3_120Rnd_762x51_soft", "CUP_30Rnd_556x45_G36", "rhssaf_30rnd_556x45_MDIM_G36", "BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
private _defUniforms = [];
private _defWeapons = ["BWA3_P8"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["ACE_Vector", "BWA3_P2A1", "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = ["BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_White", "BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Singlestar_Green"];
	_availableVests = ["BWA3_Vest_Leader_Fleck"];
	_availableItems = ["ACRE_SEM70", "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Medic_Fleck"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck_Medic"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition in ["AR"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["BWA3_MG5_tan", "BWA3_MG3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_MachineGunner_Fleck"];
	_availableItems = ["bwa3_bipod_mg3", "bwa3_optic_zo4x30i_rsas_sand", "bwa3_optic_zo4x30i_rsas", "bwa3_optic_zo4x30i_sand", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition in ["GRD"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36A3_AG36"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Grenadier_Fleck"];
	_availableItems = ["bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition in ["LAT"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = [    "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3", "BWA3_RGW90_Loaded"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["bwa3_optic_nsa80", "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MAT
if (_condition in ["MAT"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["BWA3_PzF3_Tandem_Loaded", "BWA3_Bunkerfaust_Loaded",     "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["bwa3_optic_nsa80", "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// HAT - G2A Specilist
if (_condition in ["HAT"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["rhs_weap_fgm148",      "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// DMR
if (_condition in ["DMR"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = [ "BWA3_Vector", "BWA3_G28"];
	_availableMagazines = ["BWA3_20Rnd_762x51_G28", "BWA3_20Rnd_762x51_G28_AP", "BWA3_20Rnd_762x51_G28_Tracer_Dim", "BWA3_20Rnd_762x51_G28_Tracer", "BWA3_20Rnd_762x51_G28_LR"];
	_availableVests = ["BWA3_Vest_Marksman_Fleck"];
	_availableItems = ["bwa3_bipod_harris", "bwa3_muzzle_snds_rotex_iia", "cup_acc_anpeq_15", "bwa3_optic_pmii_dmr_microt1_front", "bwa3_optic_pmii_dmr_microt1_rear", "bwa3_optic_m5xi_msr_microt2", "ACE_SpottingScope"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Helicopter Pilot
if (_condition in ["HPLT"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Fleck_Overalls_Pilot", "BWA3_Uniform_Helipilot"];
	_availableWeapons = ["CUP_smg_MP5A5"];
	_availableMagazines = ["CUP_30Rnd_9x19_MP5"];
	_availableVests = [ "Airchew_vest_2"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhsusf_hgu56p"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// EOD
if (_condition in ["EOD"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["ACE_VMH3", "ACE_VMM3", "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = ["rhsusf_m112_mag", "rhsusf_m112x4_mag", "CUP_PipeBomb_M"];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["ACE_DefusalKit","ACE_Clacker",  "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// JTAC
if (_condition in ["JTAC"]) then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36KA3_afg", "CUP_Laserdesignator", "ACE_Vector", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr"];
	_availableItems = ["tier1_exps3_0_3xmag_tano_up", "bwa3_acc_llm01_irlaser", "ACE_IR_Strobe_Item", "ACRE_VHF30108SPIKE", "ACRE_VHF30108", "ACRE_VHF30108MAST", "ACRE_SEM70"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck", "BWA3_PatrolPack_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
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

private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_SEM52SL", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ACE_CableTie", "ACE_EntrenchingTool", "BWA3_optic_NSV600", "BWA3_optic_NSV80", "BWA3_ItemNaviPad", "rhsusf_ANPVS_15", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["BWA3_15Rnd_9x19_P8", "BWA3_120Rnd_762x51", "BWA3_120Rnd_762x51_Tracer", "BWA3_120Rnd_762x51_Tracer_soft", "BWA3_120Rnd_762x51_soft", "CUP_30Rnd_556x45_G36", "rhssaf_30rnd_556x45_MDIM_G36", "BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
_defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
_defUniforms = [];
_defWeapons = ["BWA3_P8"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["ACE_Vector", "BWA3_P2A1", "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = ["BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_White", "BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Singlestar_Green"];
	_availableVests = ["BWA3_Vest_Leader_Fleck"];
	_availableItems = ["ACRE_SEM70", "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Medic_Fleck"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck_Medic"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["BWA3_MG5_tan", "BWA3_MG3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_MachineGunner_Fleck"];
	_availableItems = ["bwa3_bipod_mg3", "bwa3_optic_zo4x30i_rsas_sand", "bwa3_optic_zo4x30i_rsas", "bwa3_optic_zo4x30i_sand", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36A3_AG36"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Grenadier_Fleck"];
	_availableItems = ["bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = [    "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3", "BWA3_RGW90_Loaded"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["bwa3_optic_nsa80", "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["BWA3_PzF3_Tandem_Loaded", "BWA3_Bunkerfaust_Loaded",     "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["bwa3_optic_nsa80", "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// HAT - G2A Specilist
if (_role == "HAT") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["rhs_weap_fgm148",      "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// DMR
if (_role == "DMR") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = [ "BWA3_Vector", "BWA3_G28"];
	_availableMagazines = ["BWA3_20Rnd_762x51_G28", "BWA3_20Rnd_762x51_G28_AP", "BWA3_20Rnd_762x51_G28_Tracer_Dim", "BWA3_20Rnd_762x51_G28_Tracer", "BWA3_20Rnd_762x51_G28_LR"];
	_availableVests = ["BWA3_Vest_Marksman_Fleck"];
	_availableItems = ["bwa3_bipod_harris", "bwa3_muzzle_snds_rotex_iia", "cup_acc_anpeq_15", "bwa3_optic_pmii_dmr_microt1_front", "bwa3_optic_pmii_dmr_microt1_rear", "bwa3_optic_m5xi_msr_microt2", "ACE_SpottingScope"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// Helicopter Pilot
if (_role == "HPLT") then
{
	_availableUniforms = ["CUP_U_B_GER_Fleck_Overalls_Pilot", "BWA3_Uniform_Helipilot"];
	_availableWeapons = ["CUP_smg_MP5A5"];
	_availableMagazines = ["CUP_30Rnd_9x19_MP5"];
	_availableVests = [ "Airchew_vest_2"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhsusf_hgu56p"];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["ACE_VMH3", "ACE_VMM3", "CUP_arifle_G36A3_grip", "CUP_arifle_G36A3"];
	_availableMagazines = ["rhsusf_m112_mag", "rhsusf_m112x4_mag", "CUP_PipeBomb_M"];
	_availableVests = ["BWA3_Vest_Rifleman_Fleck"];
	_availableItems = ["ACE_DefusalKit","ACE_Clacker",  "bwa3_optic_zo4x30_rsas_brown_pip", "bwa3_optic_zo4x30_rsas_brown", "bwa3_acc_varioray_irlaser"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_7", "CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36KA3_afg", "CUP_Laserdesignator", "ACE_Vector", "rhs_weap_M320"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr"];
	_availableItems = ["tier1_exps3_0_3xmag_tano_up", "bwa3_acc_llm01_irlaser", "ACE_IR_Strobe_Item", "ACRE_VHF30108SPIKE", "ACRE_VHF30108", "ACRE_VHF30108MAST", "ACRE_SEM70"];
	_availableBackpacks = ["BWA3_Kitbag_Fleck", "BWA3_PatrolPack_Fleck"];
	_availableHeadgear = ["rhsusf_mich_bare_norotos_arc_alt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam"];
	_availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK", "CUP_G_Oakleys_Clr", "CUP_G_Oakleys_Drk"];
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

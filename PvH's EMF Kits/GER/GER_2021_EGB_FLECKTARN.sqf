private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_PRC152", "ACE_microDAGR", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "rhsusf_ANPVS_15", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["BWA3_15Rnd_9x19_P8", "BWA3_30Rnd_556x45_G36_Tracer_Dim", "BWA3_30Rnd_556x45_G36", "BWA3_30Rnd_556x45_G36_Tracer", "BWA3_20Rnd_762x51_G28", "BWA3_20Rnd_762x51_G28_AP", "BWA3_20Rnd_762x51_G28_Tracer_Dim", "BWA3_20Rnd_762x51_G28_LR", "BWA3_20Rnd_762x51_G28_Tracer", "BWA3_200Rnd_556x45", "BWA3_200Rnd_556x45_Tracer", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "BWA3_120Rnd_762x51_soft", "BWA3_120Rnd_762x51_Tracer_soft"];
_defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
_defUniforms = ["BWA3_Uniform_Fleck"];
_defWeapons = ["BWA3_P8", "BWA3_Vector"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["rhsusf_opscore_ut_pelt", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_ut_pelt_nsw"];
_defFacewear = ["rhs_googles_black", "rhs_googles_clear", "rhs_googles_orange", "AGE_Balaclava_Black", "CUP_RUS_Balaclava_rgr", "CUP_RUS_Balaclava_blk"];

//
// Loadout made by Per_von_Harke
//
// Optional fictional gasmask: G_AirPurifyingRespirator_01_F
// Compromises have been made by not having accurate G36's and vests for 2021 EGB units.
// The correct HK steel parts for the G36KA3 have not been made available within a Arma 3 mod.
// Also the LLM01 is mounted the wrong way for modern EGB soldiers :(

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36KA3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_Fastbelt_rngr"];
	_availableItems = ["bwa3_optic_eotech_sand_mag_off", "bwa3_acc_llm01_irlaser"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36KA3", "BWA3_P2A1"];
	_availableMagazines = ["BWA3_1Rnd_Flare_Singlestar_White", "BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_Green", "BWA3_1Rnd_Flare_Multistar_Green", "BWA3_1Rnd_Flare_Multistar_Red"];
	_availableVests = ["CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_Fastbelt_rngr"];
	_availableItems = ["bwa3_optic_eotech_sand_mag_off", "bwa3_acc_llm01_irlaser"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36KA3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_rngr"];
	_availableItems = ["ACE_RangeCard", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "bwa3_optic_eotech_sand_mag_off", "bwa3_acc_llm01_irlaser"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck_Medic"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_Fastbelt_rngr"];
	_availableItems = ["bwa3_optic_eotech552", "sma_elcan_specter"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG5_tan"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_Fastbelt_rngr"];
	_availableItems = ["bwa3_optic_zo4x30i_sand"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_RIS_AG36"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_weaponsbelt_rngr"];
	_availableItems = ["bwa3_optic_eotech_sand_mag_off", "bwa3_acc_llm01_irlaser"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Marksman
if (_role == "MRK") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G28"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_Fastbelt_rngr"];
	_availableItems = ["bwa3_optic_pmii_dmr_microt1_rear", "bwa3_bipod_harris"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36KA3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_Fastbelt_rngr"];
	_availableItems = ["bwa3_optic_eotech_sand_mag_off", "bwa3_acc_llm01_irlaser"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["BWA3_G36KA3", "CUP_launch_PzF3", "CUP_launch_HCPF3", "CUP_launch_BF3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_Fastbelt_rngr"];
	_availableItems = ["bwa3_optic_eotech_sand_mag_off", "bwa3_acc_llm01_irlaser"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
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

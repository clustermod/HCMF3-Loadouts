/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACRE_SEM52SL", "tgc_pvs23_special_2", "tgc_pvs23_bungee", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "rhsusf_acc_nt4_black", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["BWA3_200Rnd_556x45", "BWA3_200Rnd_556x45_Tracer", "rhssaf_30rnd_556x45_MDIM_G36", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
private _defUniforms = ["CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_3"];
private _defWeapons = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["tc2002_sb", "tc2002od2", "tc2002_od"];
private _defFacewear = ["AGE_Balaclava_Black", "CUP_G_RUS_Balaclava_Ratnik", "CUP_G_ESS_BLK"];
private _defAttachments = [];

//
// Loadout made by Per_von_Harke
// Not 100% accurate. But accurate as it can get and still look good/acceptable inside Arma.

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_TL"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
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
	_availableWeapons = ["BWA3_MG4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["rhsusf_acc_su230a", "cup_acc_llm01_l"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition in ["GRD"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_RIS_AG36"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Grenadier"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition in ["LAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MAT
if (_condition in ["MAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS", "CUP_launch_BF3", "CUP_launch_PzF3", "CUP_launch_HCPF3"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// HAT
if (_condition in ["HAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_KSK", "CUP_arifle_G36K_KSK_VFG", "CUP_arifle_G36K_RIS"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_PMC_CIRAS_OD_Patrol"];
	_availableItems = ["cup_acc_llm01_l", "cup_optic_holoblack", "rhsusf_acc_su230a_c", "cup_optic_compm2_low"];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
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

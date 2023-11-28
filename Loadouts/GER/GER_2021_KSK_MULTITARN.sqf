/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["BWA3_ItemNaviPad", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACRE_PRC152", "CUP_NVG_GPNVG_tan", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan", "BWA3_15Rnd_9x19_P8"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
private _defUniforms = ["BWA3_Uniform_Multi", "BWA3_Uniform_sleeves_Multi"];
private _defWeapons = ["BWA3_P8", "BWA3_Vector"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhsusf_opscore_ut_pelt"];
private _defFacewear = ["CUP_RUS_Balaclava_tan", "CUP_RUS_Balaclava_rgr", "CUP_G_PMC_Facewrap_Tan_Glasses_Dark", "CUP_G_PMC_Facewrap_Black_Glasses_Dark"];
private _defAttachments = [];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["arifle_SPAR_02_snd_F"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_JPC_Radioman_Multi", "BWA3_Vest_JPC_Rifleman_Multi"];
	_availableItems = ["bwa3_optic_eotech_sand_mag_off", "rhsusf_acc_rotex5_grey", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["arifle_SPAR_02_snd_F"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_JPC_Leader_Multi"];
	_availableItems = ["bwa3_optic_eotech_sand_mag_off", "rhsusf_acc_rotex5_grey", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
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
	_availableWeapons = ["arifle_SPAR_02_snd_F"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_JPC_Radioman_Multi", "BWA3_Vest_JPC_Rifleman_Multi"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "bwa3_optic_eotech_sand_mag_off", "rhsusf_acc_rotex5_grey", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = ["BWA3_AssaultPack_Multi_Medic"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MAT
if (_condition in ["MAT"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["arifle_SPAR_02_snd_F", "CUP_launch_BF3", "CUP_launch_PzF3", "CUP_launch_HCPF3"];
	_availableMagazines = [];
	_availableVests = ["BWA3_Vest_JPC_Radioman_Multi", "BWA3_Vest_JPC_Rifleman_Multi"];
	_availableItems = ["bwa3_optic_eotech_sand_mag_off", "rhsusf_acc_rotex5_grey", "cup_acc_anpeq_15_top_flashlight_tan_l"];
	_availableBackpacks = ["BWA3_AssaultPack_Multi"];
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

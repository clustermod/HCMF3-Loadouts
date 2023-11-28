/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACRE_PRC152", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_mag_30Rnd_556x45_Mk262_PMAG", "rhs_mag_30Rnd_556x45_Mk318_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_FMJ"];
private _defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
private _defUniforms = ["CUP_U_CRYE_BLK_Full"];
private _defWeapons = ["rhsusf_weap_glock17g4"];
private _defVests = ["CUP_V_B_Ciras_Black4", "CUP_V_B_Ciras_Black3", "CUP_V_B_Ciras_Black2", "CUP_V_B_Ciras_Black", "ItemAndroid", "ACE_Vector"];
private _defBackpacks = ["CUP_B_AssaultPack_Black", "CUP_B_UAVTerminal_Black"];
private _defHeadgear = ["tc2002_blk", "anvis10_blk"];
private _defFacewear = ["G_Bandanna_blk", "CUP_RUS_Balaclava_blk", "CUP_PMC_Facewrap_Black", "CUP_G_PMC_Facewrap_Black_Glasses_Dark", "CUP_G_PMC_Facewrap_Black_Glasses_Ember", "G_Shades_tactical"];
private _defAttachments = [];

// Black Division from Escape from Tarkov
// Loadout made by Per_von_Harke

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_bk", "rhs_weap_mk18_KAC_bk"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["sma_eotech552", "sma_eotech552_3xdown", "sma_eotech", "rhsusf_acc_g33_xps3", "rhsusf_acc_su230a", "rhsusf_acc_eotech_xps3", "sma_elcan_specter_4z", "sma_elcan_specter", "rhsusf_acc_nt4_black", "rhsusf_acc_rotex5_grey", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_flashlight_black_l", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_grip3", "rhsusf_acc_grip2"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Squad Leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_mk18_bk", "rhs_weap_mk18_KAC_bk"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["sma_eotech552", "sma_eotech552_3xdown", "sma_eotech", "rhsusf_acc_g33_xps3", "rhsusf_acc_su230a", "rhsusf_acc_eotech_xps3", "sma_elcan_specter_4z", "sma_elcan_specter", "rhsusf_acc_nt4_black", "rhsusf_acc_rotex5_grey", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_flashlight_black_l", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_grip3", "rhsusf_acc_grip2"];
	_availableBackpacks = [];
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
	_availableWeapons = ["rhs_weap_mk18_bk", "rhs_weap_mk18_KAC_bk"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "sma_eotech552", "sma_eotech552_3xdown", "sma_eotech", "rhsusf_acc_g33_xps3", "rhsusf_acc_su230a", "rhsusf_acc_eotech_xps3", "sma_elcan_specter_4z", "sma_elcan_specter", "rhsusf_acc_nt4_black", "rhsusf_acc_rotex5_grey", "cup_acc_anpeq_15_top_flashlight_black_l", "cup_acc_anpeq_15_flashlight_black_l", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_blk", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_grip3", "rhsusf_acc_grip2"];
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

/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "sma_eotech552", "cup_acc_flashlight","ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["BWA3_15Rnd_9x19_P8", "CUP_30Rnd_556x45_G36", "rhsusf_mag_17Rnd_9x19_FMJ"];
private _defGrenades = [];
private _defUniforms = [];
private _defWeapons = ["BWA3_P8"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];

//Loadout made by Per_von_Harke

// Zeus
if (_condition in ["ZEUS"]) then
{
	_availableUniforms = ["CUP_U_CRYE_G3C_RGR"];
	_availableWeapons = ["CUP_arifle_G36K_RIS", "CUP_arifle_G36C", "CUP_arifle_G36C_VFG", "rhsusf_weap_glock17g4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_lightbelt_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_weapons_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_communications_rngr"];
	_availableItems = ["ACRE_SEM70", "ACRE_SEM52SL"];
	_availableBackpacks = ["B_AssaultPack_khk"];
	_availableHeadgear = ["CUP_H_Ger_Cap_EP_Grn2", "CUP_H_Ger_Cap_EP_Grn1", "CUP_H_Ger_Cap_Grn2", "CUP_H_Ger_Cap_EP_Tan2", "CUP_H_Ger_Cap_EP_Tan1", "CUP_H_Ger_Cap_Tan2", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["G_Shades_tactical", "UK3CB_BAF_G_Tactical_Black", "UK3CB_BAF_G_Tactical_Clear", "UK3CB_BAF_G_Tactical_Grey", "rhs_googles_black"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = ["CUP_U_CRYE_G3C_RGR"];
	_availableWeapons = ["CUP_arifle_G36K_RIS", "CUP_arifle_G36C", "CUP_arifle_G36C_VFG", "rhsusf_weap_glock17g4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_lightbelt_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_weapons_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_communications_rngr"];
	_availableItems = ["ACRE_SEM52SL"];
	_availableBackpacks = ["B_AssaultPack_khk"];
	_availableHeadgear = ["CUP_H_Ger_Cap_EP_Grn2", "CUP_H_Ger_Cap_EP_Grn1", "CUP_H_Ger_Cap_Grn2", "CUP_H_Ger_Cap_EP_Tan2", "CUP_H_Ger_Cap_EP_Tan1", "CUP_H_Ger_Cap_Tan2", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["G_Shades_tactical", "UK3CB_BAF_G_Tactical_Black", "UK3CB_BAF_G_Tactical_Clear", "UK3CB_BAF_G_Tactical_Grey", "rhs_googles_black"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Team leader / Squad leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = ["CUP_U_CRYE_G3C_RGR"];
	_availableWeapons = ["CUP_arifle_G36K_RIS", "CUP_arifle_G36C", "CUP_arifle_G36C_VFG", "rhsusf_weap_glock17g4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_tl_rngr"];
	_availableItems = ["ACRE_SEM70","ACRE_SEM52SL"];
	_availableBackpacks = ["B_AssaultPack_khk"];
	_availableHeadgear = ["CUP_H_Ger_Cap_EP_Grn2", "CUP_H_Ger_Cap_EP_Grn1", "CUP_H_Ger_Cap_Grn2", "CUP_H_Ger_Cap_EP_Tan2", "CUP_H_Ger_Cap_EP_Tan1", "CUP_H_Ger_Cap_Tan2", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["G_Shades_tactical", "UK3CB_BAF_G_Tactical_Black", "UK3CB_BAF_G_Tactical_Clear", "UK3CB_BAF_G_Tactical_Grey", "rhs_googles_black"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_CRYE_G3C_RGR"];
	_availableWeapons = ["CUP_arifle_G36K_RIS", "CUP_arifle_G36C", "CUP_arifle_G36C_VFG", "rhsusf_weap_glock17g4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr"];
	_availableItems = ["ACRE_SEM52SL", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = ["B_AssaultPack_khk"];
	_availableHeadgear = ["CUP_H_Ger_Cap_EP_Grn2", "CUP_H_Ger_Cap_EP_Grn1", "CUP_H_Ger_Cap_Grn2", "CUP_H_Ger_Cap_EP_Tan2", "CUP_H_Ger_Cap_EP_Tan1", "CUP_H_Ger_Cap_Tan2", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["G_Squares_Tinted", "G_Shades_tactical", "UK3CB_BAF_G_Tactical_Black", "UK3CB_BAF_G_Tactical_Clear", "UK3CB_BAF_G_Tactical_Grey", "rhs_googles_black"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// VIP
if (_condition in ["VIP"]) then
{
	_availableUniforms = ["U_Marshal", "TRYK_SUITS_BLK_F"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["TRYK_V_Bulletproof_BLK", "CUP_V_PMC_IOTV_Black_Empty"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_M92_Black"];
	_availableFacewear = ["G_Squares_Tinted"];
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

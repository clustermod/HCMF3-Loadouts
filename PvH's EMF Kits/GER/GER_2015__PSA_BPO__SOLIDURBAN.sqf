params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["sma_eotech552", "cup_acc_flashlight", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["murshun_cigs_matches", "murshun_cigs_cigpack", "CUP_30Rnd_556x45_G36", "rhsusf_mag_17Rnd_9x19_FMJ"];
_defGrenades = [];
_defUniforms = ["CUP_I_B_PMC_Unit_42", "CUP_I_B_PMC_Unit_39", "CUP_I_B_PMC_Unit_36", "U_C_ArtTShirt_01_v6_F", "U_Rangemaster", "U_Marshal"];
_defWeapons = ["rhsusf_weap_glock17g4"];
_defVests = [];
_defBackpacks = ["LOP_PMC_FalconII_MK14"];
_defHeadgear = ["CUP_H_Ger_Cap_EP_Grn2", "CUP_H_Ger_Cap_EP_Grn1", "CUP_H_Ger_Cap_Grn2", "CUP_H_Ger_Cap_EP_Tan2", "CUP_H_Ger_Cap_EP_Tan1", "CUP_H_Ger_Cap_Tan2", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
_defFacewear = ["G_Shades_tactical", "UK3CB_BAF_G_Tactical_Black", "UK3CB_BAF_G_Tactical_Clear", "UK3CB_BAF_G_Tactical_Grey", "rhs_googles_black"];

//Loadout made by Per_von_Harke

// Zeus
if (_role == "ZEUS") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_rngr"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36K_RIS", "CUP_arifle_G36C", "CUP_arifle_G36C_VFG"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_lightbelt_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_weapons_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_communications_rngr"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader / Squad leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_tlbelt_rngr", "CUP_V_CPC_tl_rngr"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	[player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_medical_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = ["G_Squares_Tinted"];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Marksman 
if (_role == "MRK") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Breacher
if (_role == "BRC") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD 
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
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

params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["uns_m1911mag", "uns_m60mag", "uns_m45mag_NT", "uns_rpdsogmag", "uns_20Rnd_556x45_Stanag", "uns_1Rnd_AB_M397", "Uns_1Rnd_HE_M381", "Uns_1Rnd_HE_M406", "uns_1Rnd_HEDP_M433", "uns_40mm_green", "uns_40mm_white", "uns_40mm_red"];
_defGrenades = ["uns_m61gren", "uns_m67gren", "uns_m34gren", "uns_m308gren", "uns_v40gren", "uns_m18red", "uns_m18white","SmokeShellGreen", "SmokeShellBlue"];
_defUniforms = ["UNS_SOG_BDU_OP", "UNS_SOG_BDU_O"];
_defWeapons = ["uns_m1911", "uns_m72"];
_defVests = ["UNS_M1956_S1", "UNS_M1956_S2", "UNS_M1956_S3", "UNS_M1956_S4"];
_defBackpacks = [];
_defHeadgear = ["UNS_Boonie_ODP", "UNS_Boonie_OD2", "UNS_Bandana_OD3"];
_defFacewear = ["UNS_Scarf_OD"];


//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit"];
	_availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["uns_rpdsog", "uns_m60shorty"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["uns_xm177e1_xm148"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["UNS_Alice_2", "UNS_Alice_3", "UNS_Alice_4", "UNS_Alice_5", "UNS_Alice_6", "UNS_Alice_SOG"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Radioman - RTO
if (_role == "RTO") then
{
	_availableUniforms = [];
	_availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["uns_simc_rajio_4"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Zeus
if (_role == "Zeus") then
{
	_availableUniforms = [];
	_availableWeapons = ["uns_xm177e2_grip", "uns_xm177e2", "uns_xm177e2_short", "uns_m45"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACRE_PRC77"];
	_availableBackpacks = ["uns_simc_rajio_4"];
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

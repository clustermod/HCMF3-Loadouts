private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
<<<<<<< Updated upstream
_defItems = ["kat_guedel", "ACE_DefusalKit", "ACE_CableTie", "ACE_bodyBag", "ACRE_SEM52SL" ,"cup_acc_flashlight_mp5sd", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["murshun_cigs_matches", "murshun_cigs_cigpack", "CUP_30Rnd_9x19_MP5", ];
_defGrenades = ["HandGrenade", "ACE_M84", "rhs_mag_mk84", "ACE_CTS9" ];
_defUniforms = ["LOP_U_UVF_Fatigue_BL"];
_defWeapons = ["CUP_arifle_G36K", "CUP_smg_MP5SD6"];
_defVests = ["LOP_V_Carrier_BLK"];
_defBackpacks = ["LOP_V_Carrier_BLK"];
_defHeadgear = ["CUP_H_RUS_K6_3_black", "CUP_H_RUS_K6_3"];
_defFacewear = ["CUP_G_ESS_BLK_Facewrap_Black"];
=======
private _defItems = ["kat_guedel", "ACE_DefusalKit", "ACE_CableTie", "ACE_bodyBag", "ACRE_SEM52SL" ,"cup_acc_flashlight_mp5sd", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["murshun_cigs_matches", "murshun_cigs_cigpack", "CUP_30Rnd_9x19_MP5"];
private _defGrenades = ["HandGrenade", "ACE_M84", "rhs_mag_mk84", "ACE_CTS9" ];
private _defUniforms = ["LOP_U_UVF_Fatigue_BL"];
private _defWeapons = ["CUP_arifle_G36K", "CUP_smg_MP5SD6"];
private _defVests = ["LOP_V_Carrier_BLK"];
private _defBackpacks = ["LOP_V_Carrier_BLK"];
private _defHeadgear = ["CUP_H_RUS_K6_3_black", "CUP_H_RUS_K6_3"];
private _defFacewear = ["CUP_G_ESS_BLK_Facewrap_Black"];
private _defAttachments = [];
>>>>>>> Stashed changes

// Made by Per_von_Harke

// Rifleman
if (_role == "RFL") then
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
if (_role == "BREACHER") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_M590_5RD"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACRE_SEM70","rhssaf_zrak_rd7j"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "kat_larynx", "kat_chestSeal"];
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

params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACRE_PRC148", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhsusf_mag_7x45acp_MHP", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "rhs_mag_30Rnd_556x45_M855_Stanag"];
_defGrenades = ["rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "ACE_CTS9", "ACE_M84", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_UltraHiOrange", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_HiBlue"];
_defUniforms = ["U_B_BDU_M81", "U_B_RBU_M81_no", "U_B_RBU_M81_IR", "U_B_RBU_M81"];
_defWeapons = ["rhsusf_bino_m24", "rhsusf_weap_m1911a1"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = ["tc2002_sb", "tc2002_s", "tc2002od2", "tc2002_od", "tc2002_sm", "tgc_psq36", "tgc_psq36b", "tgc_pvs23_base", "tgc_pvs23_band", "tgc_pvs23_bolle_a", "tgc_pvs23_bolle_b", "tgc_pvs23_bungee", "tgc_pvs23_special_m", "tgc_pvs23_special_n", "tgc_pvs23_compass", "tgc_pvs23_special_2", "tgc_pvs23_special", "tgc_pvs23_special_p", "tgc_pvs23_special_o"];
_defFacewear = ["CUP_G_Oakleys_Clr", "LEN_Ess1", "G_Shades_tactical", "rhsusf_oakley_goggles_clr"];

// Loadout made by Per_von_Harke with help from Aleks and Eric

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_n"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = [];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = [];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle_m203"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// JTAC or FAC
if (_role == "JTAC") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle_m203"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle", "rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle", "rhs_weap_M136_hp", "rhs_weap_M136_hedp", "rhs_weap_M136"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle", "rhs_weap_fgm148"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// EOD
if (_role == "EOD") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = ["rhs_ec75_mag", "rhs_ec200_mag"];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["ACE_Clacker", "ACE_DefusalKit", "cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};


// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m4a1_carryhandle"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_cvcrck_tan", "tgc_cvcrck_od"];
	_availableItems = ["ToolKit", "cup_optic_holoblack", "cup_acc_anpeq_2_black_top", "cup_acc_anpeq_2_flashlight_black_l", "rhsusf_acc_grip3"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
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

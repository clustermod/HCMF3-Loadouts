params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["cup_acc_mlpls_laser", "cup_acc_glock17_flashlight", "ACRE_PRC152", "ACRE_PRC148", "", "ACE_CableTie", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855_PMAG", "rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red"];
_defGrenades = [];
_defUniforms = [];
_defWeapons = ["rhsusf_bino_m24", "rhsusf_bino_m24_ARD", "CUP_hgun_Glock17_blk"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];

//Loadout made by Per_von_Harke

//
//
//

// Zeus
if (_role == "ZEUS") then
{
	_availableUniforms = ["AOR1_ACc", "AOR1_ACb", "AOR1_ACm", "AOR1_AC_01_1", "AOR1_ACd"];
	_availableWeapons = ["rhs_weap_hk416d10"];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_m", "tgc_mtv_sg", "tgc_mtv_light", "tgc_mtv_lightp", "tgc_mtv_medium", "tgc_mtv_medium2", "tgc_mtv_medium3", "tgc_mtv_radio", "tgc_mtv_tan"];
	_availableItems = ["cup_optic_holoblack", "cup_optic_sb_11_4x20_pm", "cup_acc_anpeq_2_flashlight_black_l", "cup_acc_anpeq_2_black_top", "rhsusf_acc_kac_grip"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// Team leader / Squad leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["tgc_cvcrck_n"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit"];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// SAW/LMG
if (_role == "LMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
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
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m72a7"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_M136", "rhs_weap_M136_hedp", "rhs_weap_M136_hp"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_maaws"];
	_availableMagazines = ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP", "rhs_mag_maaws_HEAT"];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_tssi_m9_hpc"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
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
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_BAF_Soflam_Laserdesignator"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["ACE_UAVBattery", "ACRE_VHF30108MAST", "ACRE_VHF30108", "ACRE_VHF30108SPIKE", "ACRE_PRC117F", "ACRE_PRC77"];
	_availableBackpacks = ["tgc_tssi_m9_hpc", "tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// Marksman 
if (_role == "MRK") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_sr25", "rhs_weap_sr25_d", "rhsusf_bino_leopold_mk4"];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_sr25s", "rhsusf_acc_sr25s_d", "cup_acc_anpeq_2_grey", "cup_acc_anpeq_2_desert", "cup_optic_leupoldmk4", "cup_optic_leupoldmk4_10x40_lrt_desert", "rhsusf_acc_harris_bipod", "ACE_SpottingScope", "ACE_Tripod", "ACE_RangeCard"];
	_availableBackpacks = ["tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// Breacher
if (_role == "BRC") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_tssi_m9_hpc", "tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
	_availableFacewear = ["G_Shades_tactical", "CUP_G_WristWatch", "CUP_RUS_Balaclava_rgr", "CUP_G_ESS_BLK", "CUP_G_ESS_CBR"];
};

// Very Important Person 
if (_role == "VIP") then
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

// All Operations of Delta Force are most likely in combination with the 160th SOAR. These kits are for Desert use.
// This is becuase sourcing accurate kits for SOAR is kinda hard. 

// Rotary Wing Pilot
if (_role == "RWP") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = [];
	_availableBackpacks = ["tgc_tssi_m9_hpc", "tgc_breacherA", "tgc_breacherB", "tgc_hpc_backpanel", "tgc_ravBackpanel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Fixed Wing Pilot
if (_role == "FWP") then
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
	_availableHeadgear = ["tc2002_sb", "tc2002_s", "tc2002_p", "tc2002_tan", "tc2002od2", "tc2002_sm"];
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

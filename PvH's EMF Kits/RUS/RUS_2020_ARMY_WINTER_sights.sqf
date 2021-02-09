params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["ACE_wirecutter", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_VG40OP_red", "rhs_VG40OP_green", "rhs_VG40TB",  "rhs_VOG25", "rhs_VOG25P", "murshun_cigs_matches", "murshun_cigs_cigpack", "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M", "CUP_30Rnd_545x39_AK74_plum_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"];
_defGrenades = ["Chemlight_red", "ACE_Chemlight_Orange", "ACE_Chemlight_IR", "rhs_mag_rgd5", "CUP_HandGrenade_RGD5", "rhs_mag_rgn", "rhs_mag_rgo", "rhs_mag_f1", "rhs_mag_rdg2_black", "rhs_mag_rdg2_white", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
_defUniforms = [];
_defWeapons = [];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];

//Loadout made by Per_von_Harke
// Possible RUSFOR NODS rhs_1PN138

// Zeus
if (_role == "ZEUS") then
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

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// Team leader / Squad leader
if (_role == "SL") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_GL_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = ["rhs_acc_1p87", "rhssaf_zrak_rd7j", "ACRE_PRC152"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// SAW/LMG
if (_role == "LMG") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_RPK74M_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_lmg_Pecheneg_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_GL_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail", "CUP_launch_RPG26", "rhs_weap_rpg26"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail", "rhs_weap_rpg7"];
	_availableMagazines = ["rhs_rpg7_OG7V_mag", "rhs_rpg7_PG7VL_mag" "rhs_rpg7_PG7VR_mag", "rhs_rpg7_TBG7V_mag"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// JTAC
if (_role == "JTAC") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_GL_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = ["rhs_acc_1p87", "rhssaf_zrak_rd7j", "ACRE_PRC152"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// Marksman 
if (_role == "MRK") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["rhs_weap_svdp"];
	_availableMagazines = ["CUP_10Rnd_762x54_SVD_M"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_pso1m21"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// Breacher
if (_role == "BRC") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_1p87"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
};

// High Value Target 
if (_role == "HVT") then
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

// Rotary Wing Pilot
if (_role == "RWP") then
{
	_availableUniforms = ["rhs_uniform_df15", "rhs_uniform_df15_tan"];
	_availableWeapons = ["rhs_weap_aks74u"];
	_availableMagazines = ["rhs_30Rnd_545x39_7N6M_AK"];
	_availableVests = ["rhs_6b23_digi", "rhs_6b23_digi_6sh92_radio"];
	_availableItems = ["ACRE_PRC152"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_zsh7a_mike_green_alt", "rhs_zsh7a_mike_green", "rhs_zsh7a_mike", "rhs_zsh7a_mike_alt", "rhs_gssh18"];
	_availableFacewear = ["G_Aviator"];
};

// Fixed Wing Pilot
if (_role == "FWP") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_aks74u"];
	_availableMagazines = ["rhs_30Rnd_545x39_7N6M_AK"];
	_availableVests = [];
	_availableItems = ["ACRE_PRC152"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_zsh7a_alt", "rhs_zsh7a"];
	_availableFacewear = ["G_Aviator"];
};

// EOD 
if (_role == "EOD") then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_top_rail"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_1p87", "MineDetector"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
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

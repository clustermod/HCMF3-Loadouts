/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "rhs_acc_dtk1983", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = [ "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M", "rhs_VOG25", "rhs_VG40TB", "rhs_VOG25P", "CUP_FlareGreen_GP25_M", "CUP_IlumFlareGreen_GP25_M", "CUP_IlumFlareWhite_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_1Rnd_SmokeGreen_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M", "murshun_cigs_matches", "murshun_cigs_cigpack"];
private _defGrenades = ["rhs_mag_f1", "CUP_HandGrenade_RGD5", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspd"];
private _defUniforms = [];
private _defWeapons = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];

// Made by Per_von_Harke

//EOD class has to be manually added to the correct player unit for now. Might fix it later.
// All commading personnel and pilots has/have a PRC-152


// Rifleman
if (_condition in ["RFL"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Team leader
if (_condition in ["SL", "FTL"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M", "CUP_arifle_AK74M_GL"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = ["rhs_acc_1p63", "ACRE_PRC152"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition in ["MED"]) then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit","adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition in ["LMG"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_RPK74"];
	_availableMagazines = ["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M", "CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MMG
if (_condition in ["MMG"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_lmg_PKM"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition in ["GRD"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M_GL"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition in ["LAT"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M", "rhs_weap_rpg26"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};



// HAT
if (_condition in ["HAT"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M", "rhs_weap_rpg7"];
	_availableMagazines = ["rhs_rpg7_OG7V_mag", "rhs_rpg7_PG7VM_mag", "rhs_rpg7_PG7VR_mag"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["rhs_acc_pgo7v", "rhs_acc_pgo7v2", "rhs_acc_pgo7v3"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// EOD
if (_condition in ["EOD"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACE_DefusalKit", "ACE_M26_Clacker", "ACE_Clacker"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};



// Engineer
if (_condition in ["ENG"]) then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
	_availableWeapons = ["CUP_arifle_AK74M"];
	_availableMagazines = ["rhs_mine_ozm72_c_mag", "rhs_mine_tm62m_mag", "CUP_MineE_M", "CUP_TimeBomb_M", "CUP_PipeBomb_M"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_GogglesUp_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_Winter"];
	_availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "UK3CB_BAF_G_Balaclava_Win"];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Rotary Wing Pilot
if (_condition in ["RWP"]) then
{
	_availableUniforms = ["rhs_uniform_df15_tan"];
	_availableWeapons = ["CUP_arifle_AKS74U", "rhs_weap_rsp30_green"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b43"];
	_availableItems = ["ACRE_PRC152"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_gssh18", "rhs_zsh7a_mike_green_alt", "rhs_zsh7a_mike_green", "rhs_zsh7a_mike", "rhs_zsh7a_mike_alt"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Fixed Wing Pilot
if (_condition in ["FWP"]) then
{
	_availableUniforms = ["rhs_uniform_df15_tan"];
	_availableWeapons = ["CUP_arifle_AKS74U", "rhs_weap_rsp30_green"];
	_availableMagazines = [];
	_availableVests = ["rhs_6b23_6sh116_vog", "rhs_6b23_6sh116_vog_mixed"];
	_availableItems = ["ACRE_PRC152", "ACE_DAGR"];
	_availableBackpacks = [];
	_availableHeadgear = ["rhs_zsh7a_alt", "rhs_zsh7a"];
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

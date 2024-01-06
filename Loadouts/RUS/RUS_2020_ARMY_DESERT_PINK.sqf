params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "rhs_acc_dtk1983", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_30Rnd_545x39_AK74M_desert_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_desert_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M", "rhs_VOG25", "rhs_VG40TB", "rhs_VOG25P", "CUP_FlareGreen_GP25_M", "CUP_IlumFlareGreen_GP25_M", "CUP_IlumFlareWhite_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_1Rnd_SmokeGreen_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M", "murshun_cigs_matches", "murshun_cigs_cigpack"];
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
if (_condition && _role in ["RFL"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert"];
	_availableWeapons = ["CUP_arifle_AK74M", "CUP_arifle_AK74M_desert"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_Desert"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = ["CUP_H_RUS_6B47_v2_Desert", "CUP_H_RUS_6B47_v2_GogglesClosed_Desert", "CUP_H_RUS_6B47_v2_GogglesUp_Desert"];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Team leader
if (_condition && _role in ["SL", "FTL"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert"];
	_availableWeapons = ["CUP_arifle_AK74M", "CUP_arifle_AK74M_GL", "CUP_arifle_AK74M_GL_desert", "CUP_arifle_AK74M_desert"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG_Desert"];
	_availableItems = ["rhs_acc_1p63", "ACRE_PRC152"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert", "CUP_arifle_AK74M_desert"];
	_availableWeapons = ["CUP_arifle_AK74M"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_Desert"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit","adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert"];
	_availableWeapons = ["CUP_arifle_RPK74"];
	_availableMagazines = ["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M", "CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP_Desert"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert"];
	_availableWeapons = ["CUP_lmg_PKM"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP_Desert"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert"];
	_availableWeapons = ["CUP_arifle_AK74M_GL", "CUP_arifle_AK74M_GL_desert"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG_Desert"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert"];
	_availableWeapons = ["CUP_arifle_AK74M", "rhs_weap_rpg26", "CUP_arifle_AK74M_desert"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_Desert"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};


// HAT
if (_condition && _role in ["HAT"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert"];
	_availableWeapons = ["CUP_arifle_AK74M", "rhs_weap_rpg7", "CUP_arifle_AK74M_desert"];
	_availableMagazines = ["rhs_rpg7_OG7V_mag", "rhs_rpg7_PG7VM_mag", "rhs_rpg7_PG7VR_mag"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_Desert"];
	_availableItems = ["rhs_acc_pgo7v", "rhs_acc_pgo7v2", "rhs_acc_pgo7v3"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// EOD
if (_condition && _role in ["EOD"]) then
{
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert"];
	_availableWeapons = ["CUP_arifle_AK74M", "CUP_arifle_AK74M_desert"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_Desert"];
	_availableItems = ["ACE_DefusalKit", "ACE_M26_Clacker", "ACE_Clacker"];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};



// Engineer
if (_condition && _role in ["ENG"]) then
{
	_unit setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_O_RUS_Ratnik_Desert", "CUP_arifle_AK74M_desert"];
	_availableWeapons = ["CUP_arifle_AK74M"];
	_availableMagazines = ["rhs_mine_ozm72_c_mag", "rhs_mine_tm62m_mag", "CUP_MineE_M", "CUP_TimeBomb_M", "CUP_PipeBomb_M"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_Desert"];
	_availableItems = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Desert", "CUP_O_RUS_Patrol_bag_Desert_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
	_availableAttachments = [];
	_availableGrenades = [];
};

// Rotary Wing Pilot
if (_condition && _role in ["RWP"]) then
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
if (_condition && _role in ["FWP"]) then
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
	"1.3",

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

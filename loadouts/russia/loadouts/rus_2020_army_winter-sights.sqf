params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_wirecutter", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_VG40OP_red", "rhs_VG40OP_green", "rhs_VG40TB",  "rhs_VOG25", "rhs_VOG25P", "murshun_cigs_matches", "murshun_cigs_cigpack", "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M", "CUP_30Rnd_545x39_AK74_plum_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"];
private _defGrenades = ["Chemlight_red", "ACE_Chemlight_Orange", "ACE_Chemlight_IR", "rhs_mag_rgd5", "CUP_HandGrenade_RGD5", "rhs_mag_rgn", "rhs_mag_rgo", "rhs_mag_f1", "rhs_mag_rdg2_black", "rhs_mag_rdg2_white", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = [];
private _defWeapons = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];

//Loadout made by Per_von_Harke
// Possible RUSFOR NODS rhs_1PN138


// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Team leader / Squad leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_GL_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
    _availableItems = ["rhs_acc_1p87", "rhssaf_zrak_rd7j", "ACRE_PRC152"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "rhs_acc_1p87","adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["LMG"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_RPK74M_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_lmg_Pecheneg_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_GL_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_top_rail", "CUP_launch_RPG26", "rhs_weap_rpg26"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_top_rail", "rhs_weap_rpg7"];
    _availableMagazines = ["rhs_rpg7_OG7V_mag", "rhs_rpg7_PG7VL_mag", "rhs_rpg7_PG7VR_mag", "rhs_rpg7_TBG7V_mag"];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// JTAC
if (_condition && _role in ["JTAC"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_GL_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
    _availableItems = ["rhs_acc_1p87", "rhssaf_zrak_rd7j", "ACRE_PRC152"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Marksman
if (_condition && _role in ["MRK"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["rhs_weap_svdp"];
    _availableMagazines = ["CUP_10Rnd_762x54_SVD_M"];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_pso1m21"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Breacher
if (_condition && _role in ["BRC"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_1p87"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// High Value Target
if (_condition && _role in ["HVT"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Very Important Person
if (_condition && _role in ["VIP"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Rotary Wing Pilot
if (_condition && _role in ["RWP"]) then
{
    _availableUniforms = ["rhs_uniform_df15", "rhs_uniform_df15_tan"];
    _availableWeapons = ["rhs_weap_aks74u"];
    _availableMagazines = ["rhs_30Rnd_545x39_7N6M_AK"];
    _availableVests = ["rhs_6b23_digi", "rhs_6b23_digi_6sh92_radio"];
    _availableItems = ["ACRE_PRC152"];
    _availableBackpacks = [];
    _availableHeadgear = ["rhs_zsh7a_mike_green_alt", "rhs_zsh7a_mike_green", "rhs_zsh7a_mike", "rhs_zsh7a_mike_alt", "rhs_gssh18"];
    _availableFacewear = ["G_Aviator"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Fixed Wing Pilot
if (_condition && _role in ["FWP"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_aks74u"];
    _availableMagazines = ["rhs_30Rnd_545x39_7N6M_AK"];
    _availableVests = [];
    _availableItems = ["ACRE_PRC152"];
    _availableBackpacks = [];
    _availableHeadgear = ["rhs_zsh7a_alt", "rhs_zsh7a"];
    _availableFacewear = ["G_Aviator"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// EOD
if (_condition && _role in ["EOD"]) then
{
    _availableUniforms = ["CUP_U_O_RUS_Ratnik_Winter"];
    _availableWeapons = ["CUP_arifle_AK74M_top_rail"];
    _availableMagazines = [];
    _availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
    _availableItems = ["rhs_acc_1p87", "MineDetector"];
    _availableBackpacks = ["CUP_O_RUS_Patrol_bag_Winter"];
    _availableHeadgear = ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"];
    _availableFacewear = ["CUP_G_RUS_Balaclava_Ratnik_winter", "CUP_G_RUS_Balaclava_Ratnik_winter_v2", "G_SWDG"];
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

/* Get the unit's role */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["cup_muzzle_tgpa_desert", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["CUP_30Rnd_545x39_AK74M_desert_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",  "rhs_VOG25P", "rhs_VOG25", "rhs_VG40TB", "rhs_VG40SZ", "rhs_VG40MD", "rhs_GRD40_Red", "rhs_GRD40_Green", "rhs_GRD40_White", "rhs_VG40OP_green", "rhs_VG40OP_red", "rhs_VG40OP_white"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = ["rhs_uniform_gorka_1_a"];
private _defWeapons = [];
private _defVests = [];
private _defBackpacks = ["rhs_rd54_vest", "rhs_rd54", "rhs_rd54_flora1", ""];
private _defHeadgear = [];
private _defFacewear = ["FGN_CauR_Shemag_brown", "LEN_Ess1"];
private _defAttachments = [];

//
// Loadout made by Per_von_Harke
//
// Loadout is supposed to be some Angolan SOF unit that has pretty modern AK-74Ms.
// All loadouts are pretty light for long distance travel in deserts.

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert"];
    _availableMagazines = [];
    _availableVests = ["rhs_lifchik", "rhs_lifchik_light", "rhs_6sh92_vsr"];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert", "rhssaf_zrak_rd7j"];
    _availableMagazines = [];
    _availableVests = ["rhs_6sh92_vsr_radio", "rhs_lifchik_NCO"];
    _availableItems = [];
    _availableBackpacks = ["rhs_r148"];
    _availableHeadgear = ["CUP_H_Beret_HIL"];
    _availableFacewear = ["TRYK_SBeard_BW", "TRYK_SBeard", "TRYK_SBeard_BK"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert"];
    _availableMagazines = [];
    _availableVests = ["rhs_lifchik", "rhs_lifchik_light", "rhs_6sh92_vsr"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "kat_stethoscope", "kat_larynx", "kat_chestSeal"];
    _availableBackpacks = [];
    _availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK74M_GL_railed_desert"];
    _availableMagazines = [];
    _availableVests = ["rhs_lifchik_vog", "rhs_6sh92_vsr_vog"];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert", "rhs_weap_rpg26"];
    _availableMagazines = [];
    _availableVests = ["rhs_lifchik", "rhs_lifchik_light", "rhs_6sh92_vsr"];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medium Machinegunner
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_Pecheneg_desert"];
    _availableMagazines = [];
    _availableVests = ["rhs_lifchik_vog", "rhs_6sh92_vsr_vog"];
    _availableItems = ["cup_muzzle_snds_kzrzp_pk_desert"];
    _availableBackpacks = [];
    _availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
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
/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: cc_core_v6
 * Chernorussian National Reserve unit during the 2009 ChDKZ uprising in M88 Forest TTsKO.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = ["rhs_30Rnd_545x39_7N22_plum_AK", "rhs_100Rnd_762x54mmR", "rhs_VOG25", "rhs_GRD40_Green", "rhs_GRD40_Red"];
private _defGrenades = [];
private _defUniforms = ["rhsgref_uniform_ttsko_forest"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhsgref_6b27m_ttsko_forest"];
private _defFacewear = [];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["rhs_6b5_rifleman_ttsko", "rhs_6b5_ttsko"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_vest"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["PL", "SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74_gp25", "rhssaf_zrak_rd7j"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["rhs_6b5_officer_ttsko"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_vest"];
    _availableHeadgear = [];
    _availableFacewear = ["CUP_G_TK_RoundGlasses_blk", "CUP_G_TK_RoundGlasses_gold", "G_LEN_BCG"];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["rhs_6b5_medic_ttsko"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_pkm"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["rhs_6b5_rifleman_ttsko", "rhs_6b5_ttsko"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_vest"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Assistant Autorifleman */
if (_condition && _role in ["AAR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["rhs_6b5_rifleman_ttsko", "rhs_6b5_ttsko"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rd54_vest"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Anti-Tank, Light */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_ak74", "CUP_launch_RPG7V"];
    _availableAttachments = [];
    _availableMagazines = [];
    _availableVests = ["rhs_6b5_rifleman_ttsko", "rhs_6b5_ttsko", "rhs_rpg7_OG7V_mag", "rhs_rpg7_PG7VL_mag"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["rhs_rpg_6b3"];
    _availableHeadgear = [];
    _availableFacewear = [];
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
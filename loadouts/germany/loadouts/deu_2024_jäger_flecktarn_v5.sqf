/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5
 * This loadout is depicting a modern German light infantry unit. They are called "Jäger" in German. Mostly using Boxer GTK AFV's for transportation and light support.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */
 
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACRE_SEM52SL", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ACE_WaterBottle", "rhsusf_ANPVS_15", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = ["BWA3_120Rnd_762x51", "BWA3_120Rnd_762x51_Tracer", "BWA3_30Rnd_556x45_G36", "BWA3_30Rnd_556x45_G36_Tracer", "rhs_mag_M433_HEDP", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_M441_HE"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"];
private _defUniforms = ["BWA3_Uniform_Fleck"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhsusf_mich_bare_norotos_arc_alt"];
private _defFacewear = ["AD_ESS_Glasses_b1"];

/* Rifleman */
if (_condition && _role in ["RFL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["BWA3_G36A2"];
    _availableAttachments = ["BWA3_optic_RSAS", "BWA3_acc_LLM01_irlaser"];
    _availableMagazines = [];
    _availableVests = ["BWA3_Vest_Rifleman_Fleck"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_AssaultPack_rgr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition && _role in ["SL", "FTL"]) then {
    _availableUniforms = [];
    _availableWeapons = ["BWA3_G36KA2", "BWA3_P2A1", "BWA3_Vector"];
    _availableAttachments = ["BWA3_optic_RSAS", "BWA3_acc_LLM01_irlaser"];
    _availableMagazines = ["BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_Green"];
    _availableVests = ["BWA3_Vest_Leader_Fleck"];
    _availableItems = ["ItemAndroid"];
    _availableGrenades = [];
    _availableBackpacks = ["B_AssaultPack_rgr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Medic */
if (_condition && _role in ["MED"]) then {
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["BWA3_G36A2"];
    _availableAttachments = ["BWA3_optic_RSAS", "BWA3_acc_LLM01_irlaser"];
    _availableMagazines = [];
    _availableVests = ["BWA3_Vest_Medic_Fleck"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
    _availableGrenades = [];
    _availableBackpacks = ["BWA3_Kitbag_Fleck_Medic"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Autorifleman */
if (_condition && _role in ["AR"]) then {
    _availableUniforms = [];
    _availableWeapons = ["BWA3_MG5_tan"];
    _availableAttachments = ["BWA3_optic_ZO4x30i_RSAS_sand", "BWA3_acc_VarioRay_irlaser"];
    _availableMagazines = [];
    _availableVests = ["BWA3_Vest_MachineGunner_Fleck"];
    _availableItems = ["ACE_SpareBarrel"];
    _availableGrenades = [];
    _availableBackpacks = ["B_AssaultPack_rgr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Light Anti Tank */
if (_condition && _role in ["LAT"]) then {
    _availableUniforms = [];
    _availableWeapons = ["BWA3_G36A2", "BWA3_PzF3_Tandem_Loaded"];
    _availableAttachments = ["BWA3_optic_RSAS", "BWA3_acc_LLM01_irlaser", ""];
    _availableMagazines = [];
    _availableVests = ["BWA3_Vest_Rifleman_Fleck"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_AssaultPack_rgr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Anti-Tank, Light */
if (_condition && _role in ["GRD"]) then {
    _availableUniforms = [];
    _availableWeapons = ["BWA3_G36A2_AG40"];
    _availableAttachments = ["BWA3_optic_RSAS", "BWA3_acc_LLM01_irlaser"];
    _availableMagazines = [];
    _availableVests = ["BWA3_Vest_Grenadier_Fleck"];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["B_AssaultPack_rgr"];
    _availableHeadgear = [];
    _availableFacewear = [];
};

/* Radio Operator SEM70 */
if (_condition && _role in ["RTO"]) then {
    _availableUniforms = [];
    _availableWeapons = ["BWA3_G36A2"];
    _availableAttachments = ["BWA3_optic_RSAS", "BWA3_acc_LLM01_irlaser"];
    _availableMagazines = [];
    _availableVests = ["BWA3_Vest_Rifleman_Fleck"];
    _availableItems = ["ACRE_SEM70"];
    _availableGrenades = [];
    _availableBackpacks = ["B_AssaultPack_rgr"];
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

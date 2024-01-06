/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V4
 * [Loadout for somewhat recent 2023 German tank crews. In this loadout everyone is supposed to be a tank commander hence the SEM-70 that everyone gets.]
 *
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

/* Default gear */
private _defItems = ["ACRE_SEM70", "ItemcTab", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = ["BWA3_40Rnd_46x30_MP7"];
private _defGrenades = [];
private _defUniforms = [];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];

/* Crewman */
if (_condition && _role in ["CRW"]) then {
    _availableUniforms = ["BWA3_Uniform_Crew_Tropen"];
    _availableWeapons = ["BWA3_MP7", "rhssaf_zrak_rd7j"];
    _availableAttachments = ["bwa3_optic_rsas_riser"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = [];
    _availableGrenades = [];
    _availableBackpacks = ["UK3CB_B_Invisible"];
    _availableHeadgear = ["CUP_H_Ger_Beret_TankCommander_Blk"];
    _availableFacewear = ["CUP_G_ESS_BLK", "CUP_G_ESS_BLK_Facewrap_Black", "CUP_G_ESS_KHK_Facewrap_Tan"];
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

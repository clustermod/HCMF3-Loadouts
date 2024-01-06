params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["BWA3_15Rnd_9x19_P8", "16Rnd_9x21_Mag"];
private _defGrenades = ["rhs_mag_m67", "Chemlight_green", "ACE_Chemlight_HiGreen", "SmokeShell", "SmokeShellBlue", "SmokeShellGreen", "SmokeShellOrange", "SmokeShellPurple", "SmokeShellRed", "SmokeShellYellow", "ACE_M84", "rhs_mag_mk84", "Chemlight_red" ];
private _defUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_5"];
private _defWeapons = ["rhsusf_bino_m24","hgun_P07_khk_F", "BWA3_P8"];
private _defVests = [];
private _defBackpacks = ["CUP_B_GER_Pack_Flecktarn"];
private _defHeadgear = ["CUP_H_Ger_M92_Cover", "CUP_H_Ger_M92_Cover_GG_CB", "CUP_H_Ger_M92_Cover_GG_CF", "CUP_H_Ger_M92_Cover_GG" ];
private _defFacewear = ["CUP_G_ESS_BLK","rhsusf_oakley_goggles_clr","rhs_goggles_clear","rhs_googles_orange","rhs_googles_yellow"];
private _defAttachments = [];

// Made by Per_von_Harke

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36A"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
};

// Zeus
if (_condition && _role in ["ZEUS"]) then
{
    _availableUniforms = ["CUP_U_B_GER_Flecktarn_3"];
    _availableWeapons = ["CUP_arifle_G36A"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2","V_SmershVest_01_radio_F"];
    _availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d", "ItemMicroDAGR", "ItemcTab"];
    _availableBackpacks = [];
    _availableHeadgear = ["CUP_H_Ger_Beret_KSK_Red"];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};



// Team leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_Vector21Nite", "rhsusf_bino_klrt_Vector21", "CUP_arifle_G36A"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig"];
    _availableItems = ["ACRE_SEM_52SL", "ACRE_SEM70","cup_optic_g36dualoptics","cup_optic_g36dualoptics_3d", "ItemMicroDAGR"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36A"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d","adv_aceCPR_AED"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_MG3"];
    _availableMagazines = ["CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = ["CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_AG36"];
    _availableMagazines = ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_SmokeRed_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_SmokeGreen_M203", "CUP_1Rnd_SmokeYellow_M203", "ACE_40mm_Flare_white", "ACE_40mm_Flare_white", "CUP_FlareGreen_M203", "CUP_FlareRed_M203", "CUP_FlareYellow_M203", "CUP_30Rnd_556x45_G36"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36A"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d"];
    _availableBackpacks = [];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36A"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d"];
    _availableBackpacks = ["CUP_B_GER_Backpack_AT_Fleck"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT with Carl Gustav
if (_condition && _role in ["HAT1"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36A", "CUP_launch_MAAWS", "launch_MRAWS_green_rail_F"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36", "MRAWS_HEAT_F", "MRAWS_HEAT55_F", "MRAWS_HE_F"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d", "cup_optic_maaws_scope"];
    _availableBackpacks = ["CUP_B_GER_Backpack_AT_Fleck"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT with Panzerfaust 3 , has both versions.
if (_condition && _role in ["HAT2"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36A", "CUP_launch_HCPF3", "CUP_launch_PzF3"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36", "MRAWS_HEAT_F", "MRAWS_HEAT55_F", "MRAWS_HE_F"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d", "cup_optic_maaws_scope"];
    _availableBackpacks = ["CUP_B_GER_Backpack_AT_Fleck"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_G36A"];
    _availableMagazines = ["CUP_30Rnd_556x45_G36"];
    _availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
    _availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d", "ToolKit"];
    _availableBackpacks = [];
    _availableHeadgear = [];
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

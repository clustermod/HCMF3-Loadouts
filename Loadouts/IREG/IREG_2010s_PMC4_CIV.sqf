/* Get the unit's role */
params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "ACE_wirecutter", "ACE_CableTie", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhsusf_mag_15Rnd_9x19_JHP", "rhsusf_mag_15Rnd_9x19_FMJ", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag"];
private _defGrenades = [];
private _defUniforms = ["CUP_I_B_PMC_Unit_38", "CUP_I_B_PMC_Unit_36", "CUP_I_B_PMC_Unit_39", "CUP_I_B_PMC_Unit_40", "CUP_I_B_PMC_Unit_43", "CUP_I_B_PMC_Unit_41", "CUP_I_B_PMC_Unit_42", ""];
private _defWeapons = ["rhsusf_weap_m9"];
private _defVests = ["CUP_V_B_Ciras_Khaki4", "CUP_V_B_Ciras_Khaki3", "CUP_V_B_Ciras_Khaki2", "CUP_V_B_Ciras_Khaki"];
private _defBackpacks = [];
private _defHeadgear = ["rhsusf_bowman_cap", "H_Cap_blk", "CUP_H_USA_Cap_M81", "CUP_H_USA_Cap_MCAM", "H_Cap_oli", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_PRR_Tan", "TRYK_H_headsetcap_blk", "TRYK_H_woolhat", "CUP_H_PMC_Beanie_Black"];
private _defFacewear = ["rhs_googles_black", "rhs_googles_clear", "CUP_G_Oakleys_Clr", "G_Squares_Tinted", "G_Shades_tactical", "G_Aviator", "G_Squares", "G_Shades_Black", "G_Sport_Blackred"];
private _defAttachments = [];

// Loadout made by Per_von_Harke

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_M4A3_black", "CUP_arifle_M4A1", "CUP_arifle_M4A1_black"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["sma_eotech552"];
    _availableBackpacks = ["B_LegStrapBag_black_F", "B_LegStrapBag_coyote_F"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Squad Leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_arifle_M4A3_black", "CUP_arifle_M4A1", "CUP_arifle_M4A1_black"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["sma_eotech552", "ACRE_PRC343"];
    _availableBackpacks = ["B_LegStrapBag_black_F", "B_LegStrapBag_coyote_F"];
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
    _availableWeapons = ["CUP_arifle_M4A3_black", "CUP_arifle_M4A1", "CUP_arifle_M4A1_black"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "sma_eotech552"];
    _availableBackpacks = ["B_AssaultPack_khk"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW / LMG
if (_condition && _role in ["LMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_lmg_m249_pip2"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["sma_eotech552"];
    _availableBackpacks = ["B_LegStrapBag_black_F", "B_LegStrapBag_coyote_F"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Designated Markman
if (_condition && _role in ["DMR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_sr25", "rhsusf_bino_leopold_mk4"];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["rhsusf_acc_nxs_3515x50f1_md", "rhsusf_acc_nxs_3515x50f1_h58", "rhsusf_acc_nxs_3515x50_md", "rhsusf_acc_harris_bipod", "ACE_RangeCard", "ACE_Tripod", "ACE_SpottingScope"];
    _availableBackpacks = ["B_LegStrapBag_black_F", "B_LegStrapBag_coyote_F"];
    _availableHeadgear = [];
    _availableFacewear = [];
    _availableAttachments = [];
    _availableGrenades = [];
};



//
//				 >>> VIP Loadouts <<<
//
// 			VIP Uniforms have to be edited in
//			by the mission maker since they are
//			very dependent on the mission setting.
//      Note that some vests here are likely
//			to be removed from the Cluster Community modpack.
//			All three loadouts should have enough vests so that this
//      won't become a problem! :)

// VIP [unarmed | no protective equipment]
if (_condition && _role in ["VIP_UNPROTECTED"]) then
{
    _availableUniforms = ["U_Marshal"];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = ["CUP_V_OI_TKI_Jacket1_04","CUP_V_OI_TKI_Jacket1_05"];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = ["TRYK_H_woolhat","TRYK_H_wig","H_Cap_tan","H_Cap_oli","H_Cap_blk","CUP_H_PMC_Beanie_Black","CUP_H_PMC_Beanie_Khaki"];
    _availableFacewear = ["TRYK_SBeard","TRYK_SBeard_BW","TRYK_SBeard_BK","TAC_PMC_ID_H2","TAC_PMC_ID_W2","G_Aviator","G_Squares","G_Shades_tactical","rhs_googles_black","G_WirelessEarpiece_F","CUP_RUS_Balaclava_blk","CUP_G_Oakleys_Clr","CUP_G_Beard_Shades_Blonde","CUP_G_Beard_Shades_Black"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// VIP [ unarmed | with protective equipment]
if (_condition && _role in ["VIP_PROTECTED"]) then
{
    _availableUniforms = ["U_Marshal"];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = ["TAC_PBDFG2_B_1","TAC_PBDFG2_RG_1","TAC_PBDFG2C_B_1","LOP_V_Carrier_TAN","LOP_V_Carrier_OLV","LOP_V_Carrier_BLK","TRYK_V_Bulletproof_BL","SP_Vest_Black","CUP_V_PMC_CIRAS_Black_Empty","CUP_V_PMC_IOTV_Black_Empty","TRYK_V_Bulletproof_BLK"];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = ["rhssaf_helmet_m97_black_nocamo","CUP_H_Ger_M92_RGR","CUP_H_Ger_M92","CUP_H_Ger_M92_Black","H_PASGT_basic_black_F","H_PASGT_basic_olive_F","H_PASGT_basic_white_F"];
    _availableFacewear = ["CUP_G_ESS_BLK","CUP_G_ESS_KHK","TRYK_SBeard","TRYK_SBeard_BW","TRYK_SBeard_BK","TAC_PMC_ID_H2","TAC_PMC_ID_W2","G_Aviator","G_Squares","G_Shades_tactical","rhs_googles_black","G_WirelessEarpiece_F","CUP_RUS_Balaclava_blk","CUP_G_Oakleys_Clr","CUP_G_Beard_Shades_Blonde","CUP_G_Beard_Shades_Black"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// PRESS VIP [ unarmed | with protective equipment]
if (_condition && _role in ["PRESSVIP_PROTECTED"]) then
{
    _availableUniforms = ["U_Marshal"];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = ["V_Press_F","TRYK_V_Bulletproof_BL"];
    _availableItems = [];
    _availableBackpacks = [];
    _availableHeadgear = ["rhsgref_helmet_pasgt_press","H_PASGT_basic_blue_press_F","H_PASGT_neckprot_blue_press_F","H_PASGT_basic_blue_F"];
    _availableFacewear = ["CUP_G_ESS_BLK","CUP_G_ESS_KHK","TRYK_SBeard","TRYK_SBeard_BW","TRYK_SBeard_BK","TAC_PMC_ID_H2","TAC_PMC_ID_W2","G_Aviator","G_Squares","G_Shades_tactical","rhs_googles_black","G_WirelessEarpiece_F","CUP_RUS_Balaclava_blk","CUP_G_Oakleys_Clr","CUP_G_Beard_Shades_Blonde","CUP_G_Beard_Shades_Black"];
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

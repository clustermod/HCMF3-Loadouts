/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: ??
 * Unspecified PMC.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["kat_guedel", "cup_acc_flashlight", "ACE_IR_Strobe_Item", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
private _defMagazines = ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "UGL_FlareRed_F", "1Rnd_SmokeRed_Grenade_shell", "CUP_1Rnd_HEDP_M203", "rhs_mag_m4009", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_FMJ","hlc_20rnd_762x51_b_G3", "hlc_20rnd_762x51_MDim_G3", "hlc_20rnd_762x51_IRDim_G3", "hlc_20rnd_762x51_Mk316_G3", "hlc_20rnd_762x51_T_G3", "hlc_20rnd_762x51_barrier_G3" , "murshun_cigs_matches", "murshun_cigs_cigpack", "rhsusf_200Rnd_556x45_M855_soft_pouch", "rhsusf_200Rnd_556x45_soft_pouch", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch", "rhsusf_200Rnd_556x45_mixed_soft_pouch"];
private _defGrenades = ["Chemlight_green", "Chemlight_blue", "ACE_Chemlight_IR", "Chemlight_red", "ACE_Chemlight_Orange", "rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_mk84", "rhs_mag_mk3a2", "rhs_mag_m7a3_cs"];
private _defUniforms = ["CUP_U_CRYE_G3C_RGR"];
private _defWeapons = ["rhsusf_weap_glock17g4"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = [];
private _defFacewear = [];
private _defAttachments = [];

// Made by Per_von_Harke

//
//VIPs are universal so I left them in.
//

// Saved Uniforms: "TRYK_U_hood_nc"

// ZEUS
if (_condition && _role in ["ZEUS"]) then
{
    _availableUniforms = ["TRYK_U_hood_nc"];
    _availableWeapons = ["hlc_rifle_psg1", "rhsusf_bino_m24", "rhssaf_zrak_rd7j"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr", "CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "ACRE_PRC343",  "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_USA_Cap_TREAD_DEF", "CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// RWP
if (_condition && _role in ["RWP"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["CUP_smg_MP5A5_flashlight"];
    _availableMagazines = ["CUP_30Rnd_9x19_MP5"];
    _availableVests = ["CUP_V_B_JPC_OD_Light", "CUP_V_JPC_lightbelt_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["rhsusf_hgu56p_visor", "rhsusf_hgu56p"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr", "G_Aviator"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Rifleman
if (_condition && _role in ["RFL"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["hlc_rifle_g3ka4"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Team leader
if (_condition && _role in ["SL", "FTL"]) then
{
    _availableUniforms = ["TRYK_U_hood_nc"];
    _availableWeapons = ["HLC_Rifle_g3ka4_GL", "rhsusf_bino_m24", "rhssaf_zrak_rd7j"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr", "CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
    _availableItems = ["ACRE_PRC343",  "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Medic
if (_condition && _role in ["MED"]) then
{
    _unit setVariable ["ace_medical_medicclass", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["hlc_rifle_g3ka4"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_medical_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal",  "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["TRYK_B_Medbag_OD"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["hlc_lmg_minimipara_railed"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_weapons_rngr"];
    _availableItems = ["sma_eotech552", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MMG
if (_condition && _role in ["MMG"]) then
{
    _availableUniforms = [];
    _availableWeapons = [];
    _availableMagazines = [];
    _availableVests = [];
    _availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["HLC_Rifle_g3ka4_GL"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// LAT
if (_condition && _role in ["LAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["rhs_weap_rpg75", "hlc_rifle_g3ka4" ];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// MAT
if (_condition && _role in ["MAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["hlc_rifle_g3ka4"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// HAT
if (_condition && _role in ["HAT"]) then
{
    _availableUniforms = [];
    _availableWeapons = ["hlc_rifle_g3ka4"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};

// Engineer
if (_condition && _role in ["ENG"]) then
{
    _unit setVariable ["ACE_IsEngineer", 2, true];
    _availableUniforms = [];
    _availableWeapons = ["hlc_rifle_g3ka4"];
    _availableMagazines = [];
    _availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
    _availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
    _availableBackpacks = ["tgc_tssi_m9"];
    _availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
    _availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
    _availableAttachments = [];
    _availableGrenades = [];
};




//
//				 >>> VIP VERSIONS <<<
//
// 	!!!		VIP Uniforms have to be edited in		!!!
//	!!!		by the mission maker since they are		!!!
//	!!!		very dependent on the mission setting.	!!!

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

//
//				 >>> VIP VERSION END <<<
//

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

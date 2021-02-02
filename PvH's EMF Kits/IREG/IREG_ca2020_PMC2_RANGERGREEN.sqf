params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["cup_acc_flashlight", "ACE_IR_Strobe_Item", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "UGL_FlareRed_F", "1Rnd_SmokeRed_Grenade_shell", "CUP_1Rnd_HEDP_M203", "rhs_mag_m4009", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_FMJ","hlc_20rnd_762x51_b_G3", "hlc_20rnd_762x51_MDim_G3", "hlc_20rnd_762x51_IRDim_G3", "hlc_20rnd_762x51_Mk316_G3", "hlc_20rnd_762x51_T_G3", "hlc_20rnd_762x51_barrier_G3" , "murshun_cigs_matches", "murshun_cigs_cigpack", "rhsusf_200Rnd_556x45_M855_soft_pouch", "rhsusf_200Rnd_556x45_soft_pouch", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch", "rhsusf_200Rnd_556x45_mixed_soft_pouch"];
_defGrenades = ["Chemlight_green", "Chemlight_blue", "ACE_Chemlight_IR", "Chemlight_red", "ACE_Chemlight_Orange", "rhs_mag_m67", "rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_mk84", "rhs_mag_mk3a2", "rhs_mag_m7a3_cs"];
_defUniforms = ["CUP_U_CRYE_G3C_RGR"];
_defWeapons = ["rhsusf_weap_glock17g4"];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];

// Made by Per_von_Harke

//
//VIPs are universal so I left them in. 
//

// Saved Uniforms: "TRYK_U_hood_nc"

// ZEUS
if (_role == "ZEUS") then
{
	_availableUniforms = ["TRYK_U_hood_nc"];
	_availableWeapons = ["hlc_rifle_psg1", "rhsusf_bino_m24", "rhssaf_zrak_rd7j"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr", "CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "ACRE_PRC343",  "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_USA_Cap_TREAD_DEF", "CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// RWP
if (_role == "RWP") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_smg_MP5A5_flashlight"];
	_availableMagazines = ["CUP_30Rnd_9x19_MP5"];
	_availableVests = ["CUP_V_B_JPC_OD_Light", "CUP_V_JPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["rhsusf_hgu56p_visor", "rhsusf_hgu56p"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr", "G_Aviator"];
};

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_rifle_g3ka4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// Team leader
if (_role == "SL") then
{
	_availableUniforms = ["TRYK_U_hood_nc"];
	_availableWeapons = ["HLC_Rifle_g3ka4_GL", "rhsusf_bino_m24", "rhssaf_zrak_rd7j"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communications_rngr", "CUP_V_JPC_tl_rngr", "CUP_V_JPC_communicationsbelt_rngr", "CUP_V_JPC_tlbelt_rngr"];
	_availableItems = ["ACRE_PRC343",  "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["hlc_rifle_g3ka4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medical_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit",  "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["TRYK_B_Medbag_OD"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_lmg_minimipara_railed"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weapons_rngr"];
	_availableItems = ["sma_eotech552", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = [];
	_availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["HLC_Rifle_g3ka4_GL"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_rpg75", "hlc_rifle_g3ka4" ];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_rifle_g3ka4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["hlc_rifle_g3ka4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["hlc_rifle_g3ka4"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_Fast_rngr", "CUP_V_B_JPC_OD_Light", "CUP_V_JPC_Fastbelt_rngr", "CUP_V_JPC_lightbelt_rngr"];
	_availableItems = ["rhsusf_acc_compm4", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["tgc_tssi_m9"];
	_availableHeadgear = ["CUP_H_CZ_Helmet10", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_EP_Grey"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};




//
//				 >>> VIP VERSIONS <<<
//
// 	!!!		VIP Uniforms have to be edited in		!!!
//	!!!		by the mission maker since they are		!!!
//	!!!		very dependent on the mission setting.	!!!

// VIP [unarmed | no protective equipment]
if (_role == "VIP_UNPROTECTED") then
{
	_availableUniforms = ["U_Marshal"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["CUP_V_OI_TKI_Jacket1_04","CUP_V_OI_TKI_Jacket1_05"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["TRYK_H_woolhat","TRYK_H_wig","H_Cap_tan","H_Cap_oli","H_Cap_blk","CUP_H_PMC_Beanie_Black","CUP_H_PMC_Beanie_Khaki"];
	_availableFacewear = ["TRYK_SBeard","TRYK_SBeard_BW","TRYK_SBeard_BK","TAC_PMC_ID_H2","TAC_PMC_ID_W2","G_Aviator","G_Squares","G_Shades_tactical","rhs_googles_black","G_WirelessEarpiece_F","CUP_RUS_Balaclava_blk","CUP_G_Oakleys_Clr","CUP_G_Beard_Shades_Blonde","CUP_G_Beard_Shades_Black"];
};

// VIP [ unarmed | with protective equipment]
if (_role == "VIP_PROTECTED") then
{
	_availableUniforms = ["U_Marshal"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["TAC_PBDFG2_B_1","TAC_PBDFG2_RG_1","TAC_PBDFG2C_B_1","LOP_V_Carrier_TAN","LOP_V_Carrier_OLV","LOP_V_Carrier_BLK","TRYK_V_Bulletproof_BL","SP_Vest_Black","CUP_V_PMC_CIRAS_Black_Empty","CUP_V_PMC_IOTV_Black_Empty","TRYK_V_Bulletproof_BLK"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhssaf_helmet_m97_black_nocamo","CUP_H_Ger_M92_RGR","CUP_H_Ger_M92","CUP_H_Ger_M92_Black","H_PASGT_basic_black_F","H_PASGT_basic_olive_F","H_PASGT_basic_white_F"];
	_availableFacewear = ["CUP_G_ESS_BLK","CUP_G_ESS_KHK","TRYK_SBeard","TRYK_SBeard_BW","TRYK_SBeard_BK","TAC_PMC_ID_H2","TAC_PMC_ID_W2","G_Aviator","G_Squares","G_Shades_tactical","rhs_googles_black","G_WirelessEarpiece_F","CUP_RUS_Balaclava_blk","CUP_G_Oakleys_Clr","CUP_G_Beard_Shades_Blonde","CUP_G_Beard_Shades_Black"];
};

// PRESS VIP [ unarmed | with protective equipment]
if (_role == "PRESSVIP_PROTECTED") then
{
	_availableUniforms = ["U_Marshal"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["V_Press_F","TRYK_V_Bulletproof_BL"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["rhsgref_helmet_pasgt_press","H_PASGT_basic_blue_press_F","H_PASGT_neckprot_blue_press_F","H_PASGT_basic_blue_F"];
	_availableFacewear = ["CUP_G_ESS_BLK","CUP_G_ESS_KHK","TRYK_SBeard","TRYK_SBeard_BW","TRYK_SBeard_BK","TAC_PMC_ID_H2","TAC_PMC_ID_W2","G_Aviator","G_Squares","G_Shades_tactical","rhs_googles_black","G_WirelessEarpiece_F","CUP_RUS_Balaclava_blk","CUP_G_Oakleys_Clr","CUP_G_Beard_Shades_Blonde","CUP_G_Beard_Shades_Black"];
};

//
//				 >>> VIP VERSION END <<<
//



//Populate with predefined items and whatever is already in the crate
_backpacks 	= (_availableBackpacks + _defBackpacks);
_items 		= (_availableVests + _availableItems + _availableUniforms + _defUniforms + _defVests + _defItems + _defFacewear + _availableFacewear + _defHeadgear + _availableHeadgear);
_magazines 	= (_availableMagazines + _defGrenades + _defMagazines);
_weapons 	= (_availableWeapons + _defWeapons);

if (!_rearmOnly) then {
	[_obj, _backpacks] 	call BIS_fnc_addVirtualBackpackCargo;
	[_obj, _items	 ] 	call BIS_fnc_addVirtualItemCargo;
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, _weapons	 ] 	call BIS_fnc_addVirtualWeaponCargo;
} else {
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, (_availableItems + _defItems)] call BIS_fnc_addVirtualItemCargo;
};


player setVariable ["EMF_KA_permittedGear", [_backpacks, _items, _magazines, _weapons], true];

params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "ACE_IR_Strobe_Item", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["rhs_30Rnd_762x39mm_Savz58", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG", "murshun_cigs_matches", "murshun_cigs_cigpack", "rhsusf_200Rnd_556x45_M855_soft_pouch", "rhsusf_200Rnd_556x45_soft_pouch", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch", "rhsusf_200Rnd_556x45_mixed_soft_pouch"];
_defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_black", "rhs_mag_rdg2_white", "Chemlight_green", "Chemlight_blue", "ACE_Chemlight_IR", "Chemlight_red", "ACE_Chemlight_Orange"];
_defUniforms = [];
_defWeapons = [];
_defVests = [];
_defBackpacks = [];
_defHeadgear = [];
_defFacewear = [];

//Helmets are horrendous I will change that in a later version.

// Loadout made by Per_von_Harke

// Simple PMC loadout.
// This kit includes multiple different VIP's Loadouts that have
// various levels of protection for themselves. They can be found at the very bottom
// of this file.


// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = ["rhs_weap_savz58v_ris"];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// Team leader
if (_role == "SL") then
{
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = ["rhs_weap_savz58v_ris", "rhsusf_bino_m24", "rhssaf_zrak_rd7j"];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["ACRE_PRC343", "rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = ["rhs_weap_savz58v_ris"];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["TRYK_B_Medbag_OD"];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = ["rhs_weap_m249_pip"];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = [];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = ["rhs_weap_rpg75", "rhs_weap_savz58v_ris"];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = [];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = ["rhs_weap_savz58v_ris"];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// HAT
if (_role == "HAT") then
{
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = ["rhs_weap_savz58v_ris"];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
	_availableFacewear = ["CUP_RUS_Balaclava_blk", "CUP_RUS_Balaclava_grn", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR", "CUP_G_Oakleys_Clr", "rhsusf_oakley_goggles_clr"];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = ["CUP_U_I_GUE_Anorak_02", "TRYK_U_Bts_PCUODs", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_B_ODTAN", "CUP_I_B_PARA_Unit_1", "TRYK_U_pad_hood_Blod", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_odBK", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_hoodie_Wood", "TRYK_U_B_Wood_PCUs"];
	_availableWeapons = ["rhs_weap_savz58v_ris"];
	_availableMagazines = [];
	_availableVests = ["TAC_EI_RRV24LAK_RG", "TAC_EI_RRV24LAK_OD", "TAC_EI_RRV2_RG", "TAC_EI_RRV2_OD", "TAC_EI_RRVS_SPR_RG_AK", "TAC_EI_RRVS_SPR_OD_AK", "TAC_EI_RRVS_SPR2_RG_AK", "TAC_EI_RRVS_SPR2_OD_AK", "TAC_EI_RRVS_SPR2_RG", "TAC_EI_RRVS_SPR2_OD", "TAC_EI_RRVS_SPR_RG", "TAC_EI_RRVS_SPR_OD", "TAC_EI_RRV1_RG", "TAC_EI_RRV1_OD", "TAC_EI_RRV24_RG", "TAC_EI_RRV24_OD"];
	_availableItems = ["rhsusf_acc_mrds", "rhsgref_acc_zendl", "cup_acc_flashlight", "rhsusf_acc_rvg_blk", "rhsusf_acc_grip2", "rhsusf_acc_tdstubby_blk"];
	_availableBackpacks = ["B_AssaultPack_sgg", "rhsusf_falconii","TAC_MTAP_RG2", "TAC_MTAP_RG", "TAC_MTAP_RG2" ];
	_availableHeadgear = ["tc2002_s", "tc2002_p", "tc2002od2", "tc2002_od", "tc2002_sm", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Black"];
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
